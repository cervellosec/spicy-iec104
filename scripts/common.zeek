module iec104;

type AsduCtx: record {
	type_id: iec104::TypeID;
	cot: iec104::CoT;
	ca: count;

	pn: bool;
	test: bool;
	originator_address: count;
};

redef record connection += {
	iec104_asdu_ctx_orig: AsduCtx &optional;
	iec104_asdu_ctx_resp: AsduCtx &optional;
};

function cp24_to_str(tt: CP24Time2a): string
	{
	local sec = tt$ms / 1000;
	local msec = tt$ms % 1000;
	return fmt("min=%d sec=%d msec=%d iv=%s", tt$minute, sec, msec, tt$iv ? "T" :
	    "F");
	}

function cp56_to_str(tt: CP56Time2a): string
	{
	local sec = tt$ms / 1000;
	local msec = tt$ms % 1000;
	return fmt("y=%02d mon=%02d day=%02d h=%02d min=%02d sec=%02d msec=%d iv=%s",
	    tt$year, tt$month, tt$day, tt$hour, tt$minute, sec, msec, tt$iv ? "T" :
	    "F");
	}

function dummy_asdu_ctx(): AsduCtx
	{
	return AsduCtx($type_id=iec104::TypeID_ASDU_TYPEUNDEF, $cot=iec104::CoT_Cot_Unused, $ca=0, $pn=F, $test=F,
	    $originator_address=0);
	}

function ctx(c: connection, is_orig: bool): AsduCtx
	{
	if ( is_orig )
		return c?$iec104_asdu_ctx_orig ? c$iec104_asdu_ctx_orig : dummy_asdu_ctx();
	else
		return c?$iec104_asdu_ctx_resp ? c$iec104_asdu_ctx_resp : dummy_asdu_ctx();
	}

event asdu(c: connection, is_orig: bool, a: AsduIdent) &priority=5
	{
	local x = AsduCtx($type_id=a$type_id, $cot=a$cot, $ca=a$common_address,
	    $pn=a$pn, $test=a$test, $originator_address=a$originator_address);

	if ( is_orig )
		c$iec104_asdu_ctx_orig = x;
	else
		c$iec104_asdu_ctx_resp = x;
	}

const inrogen_cots: set[iec104::CoT] = { iec104::CoT_Inrogen, iec104::CoT_Inro1, iec104::CoT_Inro2, iec104::CoT_Inro3, iec104::CoT_Inro4,
    iec104::CoT_Inro5, iec104::CoT_Inro6, iec104::CoT_Inro7, iec104::CoT_Inro8, iec104::CoT_Inro9, iec104::CoT_Inro10, iec104::CoT_Inro11, iec104::CoT_Inro12, iec104::CoT_Inro13, iec104::CoT_Inro14,
    iec104::CoT_Inro15, iec104::CoT_Inro16 };

function cot_is_inrogen(_cot: iec104::CoT): bool
	{
	return _cot in inrogen_cots;
	}

function cot_is_hard_error(_cot: iec104::CoT): bool
	{
	return _cot == iec104::CoT_UnkType
	    || _cot == iec104::CoT_UnkCause
	    || _cot == iec104::CoT_UnkAsduAddr
	    || _cot == iec104::CoT_UnkObjAddr
	    || _cot == iec104::CoT_Deact
	    || _cot == iec104::CoT_Deactcon;
	}

function append_reason(_cur: string, _add: string): string
	{
	if ( _add == "" )
		return _cur;
	if ( _cur == "" )
		return _add;
	return fmt("%s,%s", _cur, _add);
	}

function q_push(_q: table[string] of vector of string, _basekey: string,
    _txkey: string)
	{
	local _v: vector of string = _basekey in _q ? _q[_basekey] : vector();
	_v[|_v|] = _txkey;
	_q[_basekey] = _v;
	}

function q_front(_q: table[string] of vector of string, _basekey: string)
    : string
	{
	if ( _basekey !in _q )
		return "";
	local _v = _q[_basekey];
	return |_v| == 0 ? "" : _v[0];
	}

function q_pop_front(_q: table[string] of vector of string, _basekey: string)
    : string
	{
	if ( _basekey !in _q )
		return "";

	local _v = _q[_basekey];
	if ( |_v| == 0 )
		return "";

	local _x = _v[0];
	local _nv: vector of string = vector();

	local _j: count = 1;
	while ( _j < |_v| )
		{
		_nv[|_nv|] = _v[_j];
		++_j;
		}

	if ( |_nv| == 0 )
		delete _q[_basekey];
	else
		_q[_basekey] = _nv;

	return _x;
	}

function q_remove(_q: table[string] of vector of string, _basekey: string,
    _txkey: string)
	{
	if ( _basekey !in _q )
		return;

	local _v = _q[_basekey];
	local _nv: vector of string = vector();

	local _j: count = 0;
	while ( _j < |_v| )
		{
		if ( _v[_j] != _txkey )
			_nv[|_nv|] = _v[_j];
		++_j;
		}

	if ( |_nv| == 0 )
		delete _q[_basekey];
	else
		_q[_basekey] = _nv;
	}
