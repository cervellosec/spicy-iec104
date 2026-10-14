# Verbatim copy of Spicy equivalent to reduce verbosity in logs.  In global
# namespace to reduce verbosity in log files.
type iec104::TypeID: enum {
    iec104::TypeID_ASDU_TYPEUNDEF =   0, # Not allowed
    iec104::TypeID_M_SP_NA_1      =   1, # Single-point information
    iec104::TypeID_M_SP_TA_1      =   2, # Single-point information with time tag
    iec104::TypeID_M_DP_NA_1      =   3, # Double-point information
    iec104::TypeID_M_DP_TA_1      =   4, # Double-point information with time tag
    iec104::TypeID_M_ST_NA_1      =   5, # Step position information
    iec104::TypeID_M_ST_TA_1      =   6, # Step position information with time tag
    iec104::TypeID_M_BO_NA_1      =   7, # Bitstring of 32 bit
    iec104::TypeID_M_BO_TA_1      =   8, # Bitstring of 32 bit with time tag
    iec104::TypeID_M_ME_NA_1      =   9, # Measured value, normalised value
    iec104::TypeID_M_ME_TA_1      =  10, # Measured value, normalized value with time tag
    iec104::TypeID_M_ME_NB_1      =  11, # Measured value, scaled value
    iec104::TypeID_M_ME_TB_1      =  12, # Measured value, scaled value wit time tag
    iec104::TypeID_M_ME_NC_1      =  13, # Measured value, short floating point number
    iec104::TypeID_M_ME_TC_1      =  14, # Measured value, short floating point number with time tag
    iec104::TypeID_M_IT_NA_1      =  15, # Integrated totals
    iec104::TypeID_M_IT_TA_1      =  16, # Integrated totals with time tag
    iec104::TypeID_M_EP_TA_1      =  17, # Event of protection equipment with time tag
    iec104::TypeID_M_EP_TB_1      =  18, # Packed start events of protection equipment with time tag
    iec104::TypeID_M_EP_TC_1      =  19, # Packed output circuit information of protection equipment with time tag
    iec104::TypeID_M_PS_NA_1      =  20, # Packed single point information with status change detection
    iec104::TypeID_M_ME_ND_1      =  21, # Measured value, normalized value without quality descriptor
    iec104::TypeID_ASDU_TYPE_22   =  22,
    iec104::TypeID_ASDU_TYPE_23   =  23,
    iec104::TypeID_ASDU_TYPE_24   =  24,
    iec104::TypeID_ASDU_TYPE_25   =  25,
    iec104::TypeID_ASDU_TYPE_26   =  26,
    iec104::TypeID_ASDU_TYPE_27   =  27,
    iec104::TypeID_ASDU_TYPE_28   =  28,
    iec104::TypeID_ASDU_TYPE_29   =  29,
    iec104::TypeID_M_SP_TB_1      =  30, # Single-point information with time tag CP56Time2a
    iec104::TypeID_M_DP_TB_1      =  31, # Double-point information with time tag CP56Time2a
    iec104::TypeID_M_ST_TB_1      =  32, # Step position information with time tag CP56Time2a
    iec104::TypeID_M_BO_TB_1      =  33, # Bitstring of 32 bit with time tag CP56Time2a
    iec104::TypeID_M_ME_TD_1      =  34, # Measured value, normalised value with time tag CP56Time2a
    iec104::TypeID_M_ME_TE_1      =  35, # Measured value, scaled value with time tag CP56Time2a
    iec104::TypeID_M_ME_TF_1      =  36, # Measured value, short floating point number with time tag CP56Time2a
    iec104::TypeID_M_IT_TB_1      =  37, # Integrated totals with time tag CP56Time2a
    iec104::TypeID_M_EP_TD_1      =  38, # Event of protection equipment with time tag CP56Time2a
    iec104::TypeID_M_EP_TE_1      =  39, # Packed start events of protection equipment with time tag CP56Time2a
    iec104::TypeID_M_EP_TF_1      =  40, # Packed output circuit information of protection equipment with time tag CP56Time2a
    iec104::TypeID_ASDU_TYPE_41   =  41,
    iec104::TypeID_ASDU_TYPE_42   =  42,
    iec104::TypeID_ASDU_TYPE_43   =  43,
    iec104::TypeID_ASDU_TYPE_44   =  44,
    iec104::TypeID_C_SC_NA_1      =  45, # Single command
    iec104::TypeID_C_DC_NA_1      =  46, # Double command
    iec104::TypeID_C_RC_NA_1      =  47, # Regulating step command
    iec104::TypeID_C_SE_NA_1      =  48, # Set-point Command, normalised value
    iec104::TypeID_C_SE_NB_1      =  49, # Set-point Command, scaled value
    iec104::TypeID_C_SE_NC_1      =  50, # Set-point Command, short floating point number
    iec104::TypeID_C_BO_NA_1      =  51, # Bitstring 32 bit command
    iec104::TypeID_ASDU_TYPE_52   =  52,
    iec104::TypeID_ASDU_TYPE_53   =  53,
    iec104::TypeID_ASDU_TYPE_54   =  54,
    iec104::TypeID_ASDU_TYPE_55   =  55,
    iec104::TypeID_ASDU_TYPE_56   =  56,
    iec104::TypeID_ASDU_TYPE_57   =  57,
    iec104::TypeID_C_SC_TA_1      =  58, # Single command with time tag CP56Time2a
    iec104::TypeID_C_DC_TA_1      =  59, # Double command with time tag CP56Time2a
    iec104::TypeID_C_RC_TA_1      =  60, # Regulating step command with time tag CP56Time2a
    iec104::TypeID_C_SE_TA_1      =  61, # Measured value, normalised value command with time tag CP56Time2a
    iec104::TypeID_C_SE_TB_1      =  62, # Measured value, scaled value command with time tag CP56Time2a
    iec104::TypeID_C_SE_TC_1      =  63, # Measured value, short floating point number command with time tag CP56Time2a
    iec104::TypeID_C_BO_TA_1      =  64, # Bitstring of 32 bit command with time tag CP56Time2a
    iec104::TypeID_ASDU_TYPE_65   =  65,
    iec104::TypeID_ASDU_TYPE_66   =  66,
    iec104::TypeID_ASDU_TYPE_67   =  67,
    iec104::TypeID_ASDU_TYPE_68   =  68,
    iec104::TypeID_ASDU_TYPE_69   =  69,
    iec104::TypeID_M_EI_NA_1      =  70, # End of Initialisation
    iec104::TypeID_ASDU_TYPE_71   =  71,
    iec104::TypeID_ASDU_TYPE_72   =  72,
    iec104::TypeID_ASDU_TYPE_73   =  73,
    iec104::TypeID_ASDU_TYPE_74   =  74,
    iec104::TypeID_ASDU_TYPE_75   =  75,
    iec104::TypeID_ASDU_TYPE_76   =  76,
    iec104::TypeID_ASDU_TYPE_77   =  77,
    iec104::TypeID_ASDU_TYPE_78   =  78,
    iec104::TypeID_ASDU_TYPE_79   =  79,
    iec104::TypeID_ASDU_TYPE_80   =  80,
    iec104::TypeID_ASDU_TYPE_81   =  81,
    iec104::TypeID_ASDU_TYPE_82   =  82,
    iec104::TypeID_ASDU_TYPE_83   =  83,
    iec104::TypeID_ASDU_TYPE_84   =  84,
    iec104::TypeID_ASDU_TYPE_85   =  85,
    iec104::TypeID_ASDU_TYPE_86   =  86,
    iec104::TypeID_ASDU_TYPE_87   =  87,
    iec104::TypeID_ASDU_TYPE_88   =  88,
    iec104::TypeID_ASDU_TYPE_89   =  89,
    iec104::TypeID_ASDU_TYPE_90   =  90,
    iec104::TypeID_ASDU_TYPE_91   =  91,
    iec104::TypeID_ASDU_TYPE_92   =  92,
    iec104::TypeID_ASDU_TYPE_93   =  93,
    iec104::TypeID_ASDU_TYPE_94   =  94,
    iec104::TypeID_ASDU_TYPE_95   =  95,
    iec104::TypeID_ASDU_TYPE_96   =  96,
    iec104::TypeID_ASDU_TYPE_97   =  97,
    iec104::TypeID_ASDU_TYPE_98   =  98,
    iec104::TypeID_ASDU_TYPE_99   =  99,
    iec104::TypeID_C_IC_NA_1      = 100, # Interrogation command
    iec104::TypeID_C_CI_NA_1      = 101, # Counter interrogation command
    iec104::TypeID_C_RD_NA_1      = 102, # Read Command
    iec104::TypeID_C_CS_NA_1      = 103, # Clock synchronisation command
    iec104::TypeID_C_TS_NA_1      = 104, # Test command
    iec104::TypeID_C_RP_NA_1      = 105, # Reset process command
    iec104::TypeID_C_CD_NA_1      = 106, # iec104::TypeID_C_CD_NA_1 Delay acquisition command
    iec104::TypeID_C_TS_TA_1      = 107, # Test command with time tag CP56Time2a
    iec104::TypeID_ASDU_TYPE_108  = 108,
    iec104::TypeID_ASDU_TYPE_109  = 109,
    iec104::TypeID_P_ME_NA_1      = 110, # Parameter of measured values, normalized value
    iec104::TypeID_P_ME_NB_1      = 111, # Parameter of measured values, scaled value
    iec104::TypeID_P_ME_NC_1      = 112, # Parameter of measured values, short floating point number
    iec104::TypeID_P_AC_NA_1      = 113, # Parameter activation
    iec104::TypeID_ASDU_TYPE_114  = 114,
    iec104::TypeID_ASDU_TYPE_115  = 115,
    iec104::TypeID_ASDU_TYPE_116  = 116,
    iec104::TypeID_ASDU_TYPE_117  = 117,
    iec104::TypeID_ASDU_TYPE_118  = 118,
    iec104::TypeID_ASDU_TYPE_119  = 119,
    iec104::TypeID_F_FR_NA_1      = 120, # iec104::CoT_File ready
    iec104::TypeID_F_SR_NA_1      = 121, # Section ready
    iec104::TypeID_F_SC_NA_1      = 122, # Call directory, select file, call file, call section
    iec104::TypeID_F_LS_NA_1      = 123, # Last section, last segment
    iec104::TypeID_F_AF_NA_1      = 124, # ACK file, ACK section
    iec104::TypeID_F_SG_NA_1      = 125, # Segment
    iec104::TypeID_F_DR_TA_1      = 126, # Directory
    iec104::TypeID_F_SC_NB_1      = 127, # QueryLog - request archive file

    # Reserved user ASDU types.
    iec104::TypeID_ASDU_TYPE_128  = 128,
    iec104::TypeID_ASDU_TYPE_129  = 129,
    iec104::TypeID_ASDU_TYPE_130  = 130,
    iec104::TypeID_ASDU_TYPE_131  = 131,
    iec104::TypeID_ASDU_TYPE_132  = 132,
    iec104::TypeID_ASDU_TYPE_133  = 133,
    iec104::TypeID_ASDU_TYPE_134  = 134,
    iec104::TypeID_ASDU_TYPE_135  = 135,
    iec104::TypeID_ASDU_TYPE_136  = 136,
    iec104::TypeID_ASDU_TYPE_137  = 137,
    iec104::TypeID_ASDU_TYPE_138  = 138,
    iec104::TypeID_ASDU_TYPE_139  = 139,
    iec104::TypeID_ASDU_TYPE_140  = 140,
    iec104::TypeID_ASDU_TYPE_141  = 141,
    iec104::TypeID_ASDU_TYPE_142  = 142,
    iec104::TypeID_ASDU_TYPE_143  = 143,
    iec104::TypeID_ASDU_TYPE_144  = 144,
    iec104::TypeID_ASDU_TYPE_145  = 145,
    iec104::TypeID_ASDU_TYPE_146  = 146,
    iec104::TypeID_ASDU_TYPE_147  = 147,
    iec104::TypeID_ASDU_TYPE_148  = 148,
    iec104::TypeID_ASDU_TYPE_149  = 149,
    iec104::TypeID_ASDU_TYPE_150  = 150,
    iec104::TypeID_ASDU_TYPE_151  = 151,
    iec104::TypeID_ASDU_TYPE_152  = 152,
    iec104::TypeID_ASDU_TYPE_153  = 153,
    iec104::TypeID_ASDU_TYPE_154  = 154,
    iec104::TypeID_ASDU_TYPE_155  = 155,
    iec104::TypeID_ASDU_TYPE_156  = 156,
    iec104::TypeID_ASDU_TYPE_157  = 157,
    iec104::TypeID_ASDU_TYPE_158  = 158,
    iec104::TypeID_ASDU_TYPE_159  = 159,
    iec104::TypeID_ASDU_TYPE_160  = 160,
    iec104::TypeID_ASDU_TYPE_161  = 161,
    iec104::TypeID_ASDU_TYPE_162  = 162,
    iec104::TypeID_ASDU_TYPE_163  = 163,
    iec104::TypeID_ASDU_TYPE_164  = 164,
    iec104::TypeID_ASDU_TYPE_165  = 165,
    iec104::TypeID_ASDU_TYPE_166  = 166,
    iec104::TypeID_ASDU_TYPE_167  = 167,
    iec104::TypeID_ASDU_TYPE_168  = 168,
    iec104::TypeID_ASDU_TYPE_169  = 169,
    iec104::TypeID_ASDU_TYPE_170  = 170,
    iec104::TypeID_ASDU_TYPE_171  = 171,
    iec104::TypeID_ASDU_TYPE_172  = 172,
    iec104::TypeID_ASDU_TYPE_173  = 173,
    iec104::TypeID_ASDU_TYPE_174  = 174,
    iec104::TypeID_ASDU_TYPE_175  = 175,
    iec104::TypeID_ASDU_TYPE_176  = 176,
    iec104::TypeID_ASDU_TYPE_177  = 177,
    iec104::TypeID_ASDU_TYPE_178  = 178,
    iec104::TypeID_ASDU_TYPE_179  = 179,
    iec104::TypeID_ASDU_TYPE_180  = 180,
    iec104::TypeID_ASDU_TYPE_181  = 181,
    iec104::TypeID_ASDU_TYPE_182  = 182,
    iec104::TypeID_ASDU_TYPE_183  = 183,
    iec104::TypeID_ASDU_TYPE_184  = 184,
    iec104::TypeID_ASDU_TYPE_185  = 185,
    iec104::TypeID_ASDU_TYPE_186  = 186,
    iec104::TypeID_ASDU_TYPE_187  = 187,
    iec104::TypeID_ASDU_TYPE_188  = 188,
    iec104::TypeID_ASDU_TYPE_189  = 189,
    iec104::TypeID_ASDU_TYPE_190  = 190,
    iec104::TypeID_ASDU_TYPE_191  = 191,
    iec104::TypeID_ASDU_TYPE_192  = 192,
    iec104::TypeID_ASDU_TYPE_193  = 193,
    iec104::TypeID_ASDU_TYPE_194  = 194,
    iec104::TypeID_ASDU_TYPE_195  = 195,
    iec104::TypeID_ASDU_TYPE_196  = 196,
    iec104::TypeID_ASDU_TYPE_197  = 197,
    iec104::TypeID_ASDU_TYPE_198  = 198,
    iec104::TypeID_ASDU_TYPE_199  = 199,
    iec104::TypeID_ASDU_TYPE_200  = 200,
    iec104::TypeID_ASDU_TYPE_201  = 201,
    iec104::TypeID_ASDU_TYPE_202  = 202,
    iec104::TypeID_ASDU_TYPE_203  = 203,
    iec104::TypeID_ASDU_TYPE_204  = 204,
    iec104::TypeID_ASDU_TYPE_205  = 205,
    iec104::TypeID_ASDU_TYPE_206  = 206,
    iec104::TypeID_ASDU_TYPE_207  = 207,
    iec104::TypeID_ASDU_TYPE_208  = 208,
    iec104::TypeID_ASDU_TYPE_209  = 209,
    iec104::TypeID_ASDU_TYPE_210  = 210,
    iec104::TypeID_ASDU_TYPE_211  = 211,
    iec104::TypeID_ASDU_TYPE_212  = 212,
    iec104::TypeID_ASDU_TYPE_213  = 213,
    iec104::TypeID_ASDU_TYPE_214  = 214,
    iec104::TypeID_ASDU_TYPE_215  = 215,
    iec104::TypeID_ASDU_TYPE_216  = 216,
    iec104::TypeID_ASDU_TYPE_217  = 217,
    iec104::TypeID_ASDU_TYPE_218  = 218,
    iec104::TypeID_ASDU_TYPE_219  = 219,
    iec104::TypeID_ASDU_TYPE_220  = 220,
    iec104::TypeID_ASDU_TYPE_221  = 221,
    iec104::TypeID_ASDU_TYPE_222  = 222,
    iec104::TypeID_ASDU_TYPE_223  = 223,
    iec104::TypeID_ASDU_TYPE_224  = 224,
    iec104::TypeID_ASDU_TYPE_225  = 225,
    iec104::TypeID_ASDU_TYPE_226  = 226,
    iec104::TypeID_ASDU_TYPE_227  = 227,
    iec104::TypeID_ASDU_TYPE_228  = 228,
    iec104::TypeID_ASDU_TYPE_229  = 229,
    iec104::TypeID_ASDU_TYPE_230  = 230,
    iec104::TypeID_ASDU_TYPE_231  = 231,
    iec104::TypeID_ASDU_TYPE_232  = 232,
    iec104::TypeID_ASDU_TYPE_233  = 233,
    iec104::TypeID_ASDU_TYPE_234  = 234,
    iec104::TypeID_ASDU_TYPE_235  = 235,
    iec104::TypeID_ASDU_TYPE_236  = 236,
    iec104::TypeID_ASDU_TYPE_237  = 237,
    iec104::TypeID_ASDU_TYPE_238  = 238,
    iec104::TypeID_ASDU_TYPE_239  = 239,
    iec104::TypeID_ASDU_TYPE_240  = 240,
    iec104::TypeID_ASDU_TYPE_241  = 241,
    iec104::TypeID_ASDU_TYPE_242  = 242,
    iec104::TypeID_ASDU_TYPE_243  = 243,
    iec104::TypeID_ASDU_TYPE_244  = 244,
    iec104::TypeID_ASDU_TYPE_245  = 245,
    iec104::TypeID_ASDU_TYPE_246  = 246,
    iec104::TypeID_ASDU_TYPE_247  = 247,
    iec104::TypeID_ASDU_TYPE_248  = 248,
    iec104::TypeID_ASDU_TYPE_249  = 249,
    iec104::TypeID_ASDU_TYPE_250  = 250,
    iec104::TypeID_ASDU_TYPE_251  = 251,
    iec104::TypeID_ASDU_TYPE_252  = 252,
    iec104::TypeID_ASDU_TYPE_253  = 253,
    iec104::TypeID_ASDU_TYPE_254  = 254,
    iec104::TypeID_ASDU_TYPE_255  = 255
};

# Verbatim copy of Spicy equivalent to reduce verbosity in logs.  In global
# namespace to reduce verbosity in log files.
type iec104::CoT: enum {
    iec104::CoT_Cot_Unused  =  0, # Is not used
    iec104::CoT_Percyc      =  1, # Cyclic data
    iec104::CoT_Back        =  2, # Background scan
    iec104::CoT_Spont       =  3, # Spontaneous data
    iec104::CoT_Init        =  4, # End of initialization
    iec104::CoT_Req         =  5, # Read request
    iec104::CoT_Act         =  6, # Command activation
    iec104::CoT_Actcon      =  7, # Confirmation of command activation
    iec104::CoT_Deact       =  8, # Command abortion
    iec104::CoT_Deactcon    =  9, # Confirmation of command abortion
    iec104::CoT_ActTerm     = 10, # Termination of command activation
    iec104::CoT_Retrem      = 11, # Response due to remote command
    iec104::CoT_Retloc      = 12, # Response due to local command
    iec104::CoT_File        = 13, # iec104::CoT_File access
    iec104::CoT_Auth        = 14, # Authentication
    iec104::CoT_Seskey      = 15, # Authentication session key maintenance
    iec104::CoT_Usrkey      = 16, # User role and update key maintenance
    iec104::CoT_Cot_17      = 17,
    iec104::CoT_Cot_18      = 18,
    iec104::CoT_Cot_19      = 19,
    iec104::CoT_Inrogen     = 20, # Station interrogation (general)
    iec104::CoT_Inro1       = 21, # Station interrogation for group 1
    iec104::CoT_Inro2       = 22, # Station interrogation for group 2
    iec104::CoT_Inro3       = 23, # Station interrogation for group 3
    iec104::CoT_Inro4       = 24, # Station interrogation for group 4
    iec104::CoT_Inro5       = 25, # Station interrogation for group 5
    iec104::CoT_Inro6       = 26, # Station interrogation for group 6
    iec104::CoT_Inro7       = 27, # Station interrogation for group 7
    iec104::CoT_Inro8       = 28, # Station interrogation for group 8
    iec104::CoT_Inro9       = 29, # Station interrogation for group 9
    iec104::CoT_Inro10      = 30, # Station interrogation for group 10
    iec104::CoT_Inro11      = 31, # Station interrogation for group 11
    iec104::CoT_Inro12      = 32, # Station interrogation for group 12
    iec104::CoT_Inro13      = 33, # Station interrogation for group 13
    iec104::CoT_Inro14      = 34, # Station interrogation for group 14
    iec104::CoT_Inro15      = 35, # Station interrogation for group 15
    iec104::CoT_Inro16      = 36, # Station interrogation for group 16
    iec104::CoT_Reqcogen    = 37, # Counter interrogation (general)
    iec104::CoT_Reqco1      = 38, # Counter interrogation for group 1
    iec104::CoT_Reqco2      = 39, # Counter interrogation for group 2
    iec104::CoT_Reqco3      = 40, # Counter interrogation for group 3
    iec104::CoT_Reqco4      = 41, # Counter interrogation for group 4
    iec104::CoT_Cot_42      = 42,
    iec104::CoT_Cot_43      = 43,
    iec104::CoT_UnkType     = 44, # Unknown type
    iec104::CoT_UnkCause    = 45, # Unknown cause of transfer
    iec104::CoT_UnkAsduAddr = 46, # Unknown common ASDU address
    iec104::CoT_UnkObjAddr  = 47, # Unknown object address
    iec104::CoT_Cot_48      = 48,
    iec104::CoT_Cot_49      = 49,
    iec104::CoT_Cot_50      = 50,
    iec104::CoT_Cot_51      = 51,
    iec104::CoT_Cot_52      = 52,
    iec104::CoT_Cot_53      = 53,
    iec104::CoT_Cot_54      = 54,
    iec104::CoT_Cot_55      = 55,
    iec104::CoT_Cot_56      = 56,
    iec104::CoT_Cot_57      = 57,
    iec104::CoT_Cot_58      = 58,
    iec104::CoT_Cot_59      = 59,
    iec104::CoT_Cot_60      = 60,
    iec104::CoT_Cot_61      = 61,
    iec104::CoT_Cot_62      = 62,
    iec104::CoT_Cot_63      = 63
};

module iec104;

type CP24Time2a: record {
    ms: count;
    minute: count;
    iv: bool;
} &log;

type CP56Time2a: record {
    ms: count;
    minute: count;
    iv: bool;
    hour: count;
    su: bool;
    day: count;
    dow: count;
    month: count;
    year: count;
} &log;

type DCO: record {
    dcs: count;
    qu: count;
    se: bool;
} &log;

type DIQ: record {
    dpi: count;
    bl: bool;
    sb: bool;
    nt: bool;
    iv: bool;
} &log;

type OCI: record {
    gc: bool;
    cl1: bool;
    cl2: bool;
    cl3: bool;
} &log;

type QCC: record {
    rqt: count;
    frz: count;
} &log;

type QD: record {
    sq: count;
    cy: bool;
    ca: bool;
    iv: bool;
} &log;

type QDP: record {
    ei: bool;
    bl: bool;
    sb: bool;
    nt: bool;
    iv: bool;
} &log;

type QDS: record {
    ov: bool;
    bl: bool;
    sb: bool;
    nt: bool;
    iv: bool;
} &log;

type QOS: record {
    ql: count;
    se: bool;
} &log;

type QPM: record {
    kpa: count;
    pop: bool;
    lpc: bool;
} &log;

type RCO: record {
    rcs: count;
    qu: count;
    se: bool;
} &log;

type SCO: record {
    scs: bool;
    qu: count;
    se: bool;
} &log;

type SEP: record {
    es: count;
    ei: bool;
    bl: bool;
    sb: bool;
    nt: bool;
    iv: bool;
} &log;

type SEPstart: record {
    gs: bool;
    sl1: bool;
    sl2: bool;
    sl3: bool;
    sie: bool;
    srd: bool;
} &log;

type SIQ: record {
    spi: bool;
    bl: bool;
    sb: bool;
    nt: bool;
    iv: bool;
} &log;

type VTI: record {
    val: int;
    ts: bool;
} &log;

type M_SP_NA_1_io: record {
    obj_addr: count;
    siq: SIQ;
} &log;

type M_SP_TA_1_io: record {
    obj_addr: count;
    siq: SIQ;
    tt: CP24Time2a;
} &log;

type M_DP_NA_1_io: record {
    obj_addr: count;
    diq: DIQ;
} &log;

type M_DP_TA_1_io: record {
    obj_addr: count;
    diq: DIQ;
    tt: CP24Time2a;
} &log;

type M_ST_NA_1_io: record {
    obj_addr: count;
    vti: VTI;
    qds: QDS;
} &log;

type M_ST_TA_1_io: record {
    obj_addr: count;
    vti: VTI;
    qds: QDS;
    tt: CP24Time2a;
} &log;

type M_BO_NA_1_io: record {
    obj_addr: count;
    bsi: count;
    qds: QDS;
} &log;

type M_BO_TA_1_io: record {
    obj_addr: count;
    bsi: count;
    qds: QDS;
    tt: CP24Time2a;
} &log;

type M_ME_NA_1_io: record {
    obj_addr: count;
    nva: count;
    qds: QDS;
} &log;

type M_ME_TA_1_io: record {
    obj_addr: count;
    nva: count;
    qds: QDS;
    tt: CP24Time2a;
} &log;

type M_ME_NB_1_io: record {
    obj_addr: count;
    sva: count;
    qds: QDS;
} &log;

type M_ME_TB_1_io: record {
    obj_addr: count;
    sva: count;
    qds: QDS;
    tt: CP24Time2a;
} &log;

type M_ME_NC_1_io: record {
    obj_addr: count;
    r32: double;
    qds: QDS;
} &log;

type M_ME_TC_1_io: record {
    obj_addr: count;
    r32: double;
    qds: QDS;
    tt: CP24Time2a;
} &log;

type M_IT_NA_1_io: record {
    obj_addr: count;
    bcr: count;
    qd: QD;
} &log;

type M_IT_TA_1_io: record {
    obj_addr: count;
    bcr: count;
    qd: QD;
    tt: CP24Time2a;
} &log;

type M_EP_TA_1_io: record {
    obj_addr: count;
    sep: SEP;
    ms: count;
    tt: CP24Time2a;
} &log;

type M_EP_TB_1_io: record {
    obj_addr: count;
    sep: SEPstart;
    qdp: QDP;
    ms: count;
    tt: CP24Time2a;
} &log;

type M_EP_TC_1_io: record {
    obj_addr: count;
    oci: OCI;
    qdp: QDP;
    ms: count;
    tt: CP24Time2a;
} &log;

type M_PS_NA_1_io: record {
    obj_addr: count;
    scd: count;
    qds: QDS;
} &log;

type M_ME_ND_1_io: record {
    obj_addr: count;
    nva: count;
} &log;

type M_SP_TB_1_io: record {
    obj_addr: count;
    siq: SIQ;
    tt: CP56Time2a;
} &log;

type M_DP_TB_1_io: record {
    obj_addr: count;
    diq: DIQ;
    tt: CP56Time2a;
} &log;

type M_ST_TB_1_io: record {
    obj_addr: count;
    vti: VTI;
    qds: QDS;
    tt: CP56Time2a;
} &log;

type M_BO_TB_1_io: record {
    obj_addr: count;
    bsi: count;
    qds: QDS;
    tt: CP56Time2a;
} &log;

type M_ME_TD_1_io: record {
    obj_addr: count;
    nva: count;
    qds: QDS;
    tt: CP56Time2a;
} &log;

type M_ME_TE_1_io: record {
    obj_addr: count;
    sva: count;
    qds: QDS;
    tt: CP56Time2a;
} &log;

type M_ME_TF_1_io: record {
    obj_addr: count;
    r32: double;
    qds: QDS;
    tt: CP56Time2a;
} &log;

type M_IT_TB_1_io: record {
    obj_addr: count;
    bcr: count;
    qd: QD;
    tt: CP56Time2a;
} &log;

type M_EP_TD_1_io: record {
    obj_addr: count;
    sep: SEP;
    ms: count;
    tt: CP56Time2a;
} &log;

type M_EP_TE_1_io: record {
    obj_addr: count;
    sep: SEPstart;
    qdp: QDP;
    ms: count;
    tt: CP56Time2a;
} &log;

type M_EP_TF_1_io: record {
    obj_addr: count;
    oci: OCI;
    qdp: QDP;
    ms: count;
    tt: CP56Time2a;
} &log;

type C_SC_NA_1_io: record {
    obj_addr: count;
    sco: SCO;
} &log;

type C_DC_NA_1_io: record {
    obj_addr: count;
    dco: DCO;
} &log;

type C_RC_NA_1_io: record {
    obj_addr: count;
    rco: RCO;
} &log;

type C_SE_NA_1_io: record {
    obj_addr: count;
    nva: count;
    qos: QOS;
} &log;

type C_SE_NB_1_io: record {
    obj_addr: count;
    sva: count;
    qos: QOS;
} &log;

type C_SE_NC_1_io: record {
    obj_addr: count;
    r32: double;
    qos: QOS;
} &log;

type C_BO_NA_1_io: record {
    obj_addr: count;
    bsi: count;
} &log;

type C_SC_TA_1_io: record {
    obj_addr: count;
    sco: SCO;
    tt: CP56Time2a;
} &log;

type C_DC_TA_1_io: record {
    obj_addr: count;
    dco: DCO;
    tt: CP56Time2a;
} &log;

type C_RC_TA_1_io: record {
    obj_addr: count;
    rco: RCO;
    tt: CP56Time2a;
} &log;

type C_SE_TA_1_io: record {
    obj_addr: count;
    nva: count;
    qos: QOS;
    tt: CP56Time2a;
} &log;

type C_SE_TB_1_io: record {
    obj_addr: count;
    sva: count;
    qos: QOS;
    tt: CP56Time2a;
} &log;

type C_SE_TC_1_io: record {
    obj_addr: count;
    r32: double;
    qos: QOS;
    tt: CP56Time2a;
} &log;

type C_BO_TA_1_io: record {
    obj_addr: count;
    bsi: count;
    tt: CP56Time2a;
} &log;

type M_EI_NA_1_io: record {
    obj_addr: count;
    coi: count;
    lpc: bool;
} &log;

type C_IC_NA_1_io: record {
    obj_addr: count;
    qoi: count;
} &log;

type C_CI_NA_1_io: record {
    obj_addr: count;
    qcc: QCC;
} &log;

type C_RD_NA_1_io: record {
    obj_addr: count;
    raw_data: count &optional;
} &log;

type C_CS_NA_1_io: record {
    obj_addr: count;
    tt: CP56Time2a;
} &log;

type C_RP_NA_1_io: record {
    obj_addr: count;
    qrp: count;
} &log;

type C_TS_TA_1_io: record {
    obj_addr: count;
    tsc: count;
    tt: CP56Time2a;
} &log;

type P_ME_NA_1_io: record {
    obj_addr: count;
    nva: count;
    qpm: QPM;
} &log;

type P_ME_NB_1_io: record {
    obj_addr: count;
    sva: count;
    qpm: QPM;
} &log;

type P_ME_NC_1_io: record {
    obj_addr: count;
    r32: double;
    qpm: QPM;
} &log;

type P_AC_NA_1_io: record {
    obj_addr: count;
    qpa: count;
} &log;

type F_FR_NA_1_io: record {
    obj_addr: count;
    fname: count;
    len: count;
    frq: count;
} &log;

type F_SR_NA_1_io: record {
    obj_addr: count;
    fname: count;
    sname: count;
    len: count;
    srq: count;
} &log;

type F_SC_NA_1_io: record {
    obj_addr: count;
    fname: count;
    sname: count;
    scq: count;
} &log;

type F_LS_NA_1_io: record {
    obj_addr: count;
    fname: count;
    sname: count;
    lsq: count;
    chs: count;
} &log;

type F_AF_NA_1_io: record {
    obj_addr: count;
    fname: count;
    sname: count;
    afq: count;
} &log;

type F_SG_NA_1_io: record {
    obj_addr: count;
    fname: count;
    sname: count;
    len: count;
    seg: string;
} &log;

type AsduIdent: record {
    type_id: iec104::TypeID;
    nobj: count;
    sq: bool;
    cot: iec104::CoT;
    pn: bool;
    test: bool;
    originator_address: count;
    common_address: count;
} &log;

const ports = {
    2404/tcp
} &redef;

event zeek_init() &priority=5
{
    Analyzer::register_for_ports(Analyzer::ANALYZER_SPICY_IEC104, ports);
}
