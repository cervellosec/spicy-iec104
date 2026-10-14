##! Cervello additions: logs for the session control plane (U-frames), for
##! unknown/private-range ASDU types, and for station initialization events.
##! The upstream parser already raises these events; upstream only printed
##! them via the non-default print.zeek.

module iec104;

export {
	redef enum Log::ID += {
		LOG_IEC104_APCI,
		LOG_IEC104_UNKNOWN,
		LOG_IEC104_INIT,
	};

	## One row per U-format APDU (STARTDT/STOPDT/TESTFR act/con). The sender
	## of STARTDT/STOPDT act is the controlling station by protocol asymmetry.
	type ApciInfo: record {
		ts: time &log;
		uid: string &log;
		id: conn_id &log;
		is_orig: bool &log;
		frame: string &log;
	} &log;

	## One row per ASDU whose type ID the parser has no body for — the
	## reserved and private (>= 136) ranges. Payload kept as hex.
	type UnknownAsduInfo: record {
		ts: time &log;
		uid: string &log;
		id: conn_id &log;
		is_orig: bool &log;

		asdu_type: iec104::TypeID &log;
		cot: iec104::CoT &log;
		oa: count &log;
		ca: count &log;

		data: string &log;
	} &log;

	## One row per M_EI_NA_1 (end of initialization): station restarts and
	## their cause.
	type InitInfo: record {
		ts: time &log;
		uid: string &log;
		id: conn_id &log;
		is_orig: bool &log;

		cot: iec104::CoT &log;
		ca: count &log;
		ioa: count &log;

		coi: count &log;
		lpc: bool &log;
	} &log;
}

event zeek_init()
	{
	Log::create_stream(LOG_IEC104_APCI, [ $columns=ApciInfo,
	    $path="iec104_apci" ]);
	Log::create_stream(LOG_IEC104_UNKNOWN, [ $columns=UnknownAsduInfo,
	    $path="iec104_unknown_asdu" ]);
	Log::create_stream(LOG_IEC104_INIT, [ $columns=InitInfo,
	    $path="iec104_init" ]);
	}

function u_emit(c: connection, is_orig: bool, frame: string)
	{
	local r: ApciInfo;
	r$ts = network_time();
	r$uid = c$uid;
	r$id = c$id;
	r$is_orig = is_orig;
	r$frame = frame;
	Log::write(LOG_IEC104_APCI, r);
	}

# startdt/stopdt/testfr are the 2-bit U-frame function fields: 1 = act, 2 = con.
event iec104::u(c: connection, is_orig: bool, startdt: count, stopdt: count,
    testfr: count)
	{
	if ( startdt == 1 )
		u_emit(c, is_orig, "startdt_act");
	else if ( startdt == 2 )
		u_emit(c, is_orig, "startdt_con");

	if ( stopdt == 1 )
		u_emit(c, is_orig, "stopdt_act");
	else if ( stopdt == 2 )
		u_emit(c, is_orig, "stopdt_con");

	if ( testfr == 1 )
		u_emit(c, is_orig, "testfr_act");
	else if ( testfr == 2 )
		u_emit(c, is_orig, "testfr_con");
	}

event iec104::unknown_asdu(c: connection, is_orig: bool,
    type_id: iec104::TypeID, hex: string)
	{
	local x = ctx(c, is_orig);

	local r: UnknownAsduInfo;
	r$ts = network_time();
	r$uid = c$uid;
	r$id = c$id;
	r$is_orig = is_orig;

	r$asdu_type = type_id;
	r$cot = x$cot;
	r$oa = x$originator_address;
	r$ca = x$ca;

	r$data = hex;

	Log::write(LOG_IEC104_UNKNOWN, r);
	}

event iec104::m_ei_na_1(c: connection, is_orig: bool, io: M_EI_NA_1_io)
	{
	local x = ctx(c, is_orig);

	local r: InitInfo;
	r$ts = network_time();
	r$uid = c$uid;
	r$id = c$id;
	r$is_orig = is_orig;

	r$cot = x$cot;
	r$ca = x$ca;
	r$ioa = io$obj_addr;

	r$coi = io$coi;
	r$lpc = io$lpc;

	Log::write(LOG_IEC104_INIT, r);
	}
