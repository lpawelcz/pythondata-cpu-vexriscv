// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : VexRiscv
// Git hash  : 528360a7191bdbc0680626d1bac060849f006c30


`define Input2Kind_defaultEncoding_type [0:0]
`define Input2Kind_defaultEncoding_RS 1'b0
`define Input2Kind_defaultEncoding_IMM_I 1'b1

`define EnvCtrlEnum_defaultEncoding_type [1:0]
`define EnvCtrlEnum_defaultEncoding_NONE 2'b00
`define EnvCtrlEnum_defaultEncoding_XRET 2'b01
`define EnvCtrlEnum_defaultEncoding_WFI 2'b10
`define EnvCtrlEnum_defaultEncoding_ECALL 2'b11

`define BranchCtrlEnum_defaultEncoding_type [1:0]
`define BranchCtrlEnum_defaultEncoding_INC 2'b00
`define BranchCtrlEnum_defaultEncoding_B 2'b01
`define BranchCtrlEnum_defaultEncoding_JAL 2'b10
`define BranchCtrlEnum_defaultEncoding_JALR 2'b11

`define ShiftCtrlEnum_defaultEncoding_type [1:0]
`define ShiftCtrlEnum_defaultEncoding_DISABLE_1 2'b00
`define ShiftCtrlEnum_defaultEncoding_SLL_1 2'b01
`define ShiftCtrlEnum_defaultEncoding_SRL_1 2'b10
`define ShiftCtrlEnum_defaultEncoding_SRA_1 2'b11

`define AluBitwiseCtrlEnum_defaultEncoding_type [1:0]
`define AluBitwiseCtrlEnum_defaultEncoding_XOR_1 2'b00
`define AluBitwiseCtrlEnum_defaultEncoding_OR_1 2'b01
`define AluBitwiseCtrlEnum_defaultEncoding_AND_1 2'b10

`define Src2CtrlEnum_defaultEncoding_type [1:0]
`define Src2CtrlEnum_defaultEncoding_RS 2'b00
`define Src2CtrlEnum_defaultEncoding_IMI 2'b01
`define Src2CtrlEnum_defaultEncoding_IMS 2'b10
`define Src2CtrlEnum_defaultEncoding_PC 2'b11

`define AluCtrlEnum_defaultEncoding_type [1:0]
`define AluCtrlEnum_defaultEncoding_ADD_SUB 2'b00
`define AluCtrlEnum_defaultEncoding_SLT_SLTU 2'b01
`define AluCtrlEnum_defaultEncoding_BITWISE 2'b10

`define Src1CtrlEnum_defaultEncoding_type [1:0]
`define Src1CtrlEnum_defaultEncoding_RS 2'b00
`define Src1CtrlEnum_defaultEncoding_IMU 2'b01
`define Src1CtrlEnum_defaultEncoding_PC_INCREMENT 2'b10
`define Src1CtrlEnum_defaultEncoding_URS1 2'b11


module VexRiscv_inner (
  input      [31:0]   externalResetVector,
  input               timerInterrupt,
  input               softwareInterrupt,
  output              CfuPlugin_bus_cmd_valid,
  input               CfuPlugin_bus_cmd_ready,
  output     [9:0]    CfuPlugin_bus_cmd_payload_function_id,
  output     [31:0]   CfuPlugin_bus_cmd_payload_inputs_0,
  output     [31:0]   CfuPlugin_bus_cmd_payload_inputs_1,
  input               CfuPlugin_bus_rsp_valid,
  output              CfuPlugin_bus_rsp_ready,
  input               CfuPlugin_bus_rsp_payload_response_ok,
  input      [31:0]   CfuPlugin_bus_rsp_payload_outputs_0,
  input      [31:0]   externalInterruptArray,
  output reg          iBusWishbone_CYC,
  output reg          iBusWishbone_STB,
  input               iBusWishbone_ACK,
  output              iBusWishbone_WE,
  output     [29:0]   iBusWishbone_ADR,
  input      [31:0]   iBusWishbone_DAT_MISO,
  output     [31:0]   iBusWishbone_DAT_MOSI,
  output     [3:0]    iBusWishbone_SEL,
  input               iBusWishbone_ERR,
  output     [2:0]    iBusWishbone_CTI,
  output     [1:0]    iBusWishbone_BTE,
  output              dBusWishbone_CYC,
  output              dBusWishbone_STB,
  input               dBusWishbone_ACK,
  output              dBusWishbone_WE,
  output     [29:0]   dBusWishbone_ADR,
  input      [31:0]   dBusWishbone_DAT_MISO,
  output     [31:0]   dBusWishbone_DAT_MOSI,
  output reg [3:0]    dBusWishbone_SEL,
  input               dBusWishbone_ERR,
  output     [2:0]    dBusWishbone_CTI,
  output     [1:0]    dBusWishbone_BTE,
  input               clk,
  input               reset
);
  wire                _zz_212;
  wire                _zz_213;
  wire                _zz_214;
  wire                _zz_215;
  wire                _zz_216;
  wire                _zz_217;
  wire                _zz_218;
  wire                _zz_219;
  reg                 _zz_220;
  reg        [31:0]   _zz_221;
  reg        [31:0]   _zz_222;
  reg        [31:0]   _zz_223;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire                IBusCachedPlugin_cache_io_cpu_decode_error;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire                IBusCachedPlugin_cache_io_cpu_decode_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire                _zz_224;
  wire                _zz_225;
  wire                _zz_226;
  wire                _zz_227;
  wire                _zz_228;
  wire                _zz_229;
  wire                _zz_230;
  wire                _zz_231;
  wire                _zz_232;
  wire                _zz_233;
  wire                _zz_234;
  wire                _zz_235;
  wire                _zz_236;
  wire                _zz_237;
  wire                _zz_238;
  wire                _zz_239;
  wire                _zz_240;
  wire                _zz_241;
  wire                _zz_242;
  wire       [1:0]    _zz_243;
  wire                _zz_244;
  wire                _zz_245;
  wire                _zz_246;
  wire                _zz_247;
  wire                _zz_248;
  wire                _zz_249;
  wire                _zz_250;
  wire                _zz_251;
  wire                _zz_252;
  wire                _zz_253;
  wire                _zz_254;
  wire                _zz_255;
  wire                _zz_256;
  wire                _zz_257;
  wire                _zz_258;
  wire                _zz_259;
  wire                _zz_260;
  wire                _zz_261;
  wire                _zz_262;
  wire                _zz_263;
  wire                _zz_264;
  wire       [1:0]    _zz_265;
  wire                _zz_266;
  wire       [0:0]    _zz_267;
  wire       [0:0]    _zz_268;
  wire       [0:0]    _zz_269;
  wire       [0:0]    _zz_270;
  wire       [0:0]    _zz_271;
  wire       [0:0]    _zz_272;
  wire       [0:0]    _zz_273;
  wire       [0:0]    _zz_274;
  wire       [0:0]    _zz_275;
  wire       [0:0]    _zz_276;
  wire       [0:0]    _zz_277;
  wire       [0:0]    _zz_278;
  wire       [0:0]    _zz_279;
  wire       [0:0]    _zz_280;
  wire       [0:0]    _zz_281;
  wire       [0:0]    _zz_282;
  wire       [0:0]    _zz_283;
  wire       [3:0]    _zz_284;
  wire       [2:0]    _zz_285;
  wire       [31:0]   _zz_286;
  wire       [11:0]   _zz_287;
  wire       [31:0]   _zz_288;
  wire       [19:0]   _zz_289;
  wire       [11:0]   _zz_290;
  wire       [31:0]   _zz_291;
  wire       [31:0]   _zz_292;
  wire       [19:0]   _zz_293;
  wire       [11:0]   _zz_294;
  wire       [2:0]    _zz_295;
  wire       [0:0]    _zz_296;
  wire       [2:0]    _zz_297;
  wire       [4:0]    _zz_298;
  wire       [11:0]   _zz_299;
  wire       [11:0]   _zz_300;
  wire       [31:0]   _zz_301;
  wire       [31:0]   _zz_302;
  wire       [31:0]   _zz_303;
  wire       [31:0]   _zz_304;
  wire       [31:0]   _zz_305;
  wire       [31:0]   _zz_306;
  wire       [31:0]   _zz_307;
  wire       [31:0]   _zz_308;
  wire       [32:0]   _zz_309;
  wire       [11:0]   _zz_310;
  wire       [19:0]   _zz_311;
  wire       [11:0]   _zz_312;
  wire       [31:0]   _zz_313;
  wire       [31:0]   _zz_314;
  wire       [31:0]   _zz_315;
  wire       [11:0]   _zz_316;
  wire       [19:0]   _zz_317;
  wire       [11:0]   _zz_318;
  wire       [2:0]    _zz_319;
  wire       [1:0]    _zz_320;
  wire       [1:0]    _zz_321;
  wire       [1:0]    _zz_322;
  wire       [1:0]    _zz_323;
  wire       [1:0]    _zz_324;
  wire       [1:0]    _zz_325;
  wire       [9:0]    _zz_326;
  wire       [7:0]    _zz_327;
  wire       [0:0]    _zz_328;
  wire       [5:0]    _zz_329;
  wire       [33:0]   _zz_330;
  wire       [32:0]   _zz_331;
  wire       [33:0]   _zz_332;
  wire       [32:0]   _zz_333;
  wire       [33:0]   _zz_334;
  wire       [32:0]   _zz_335;
  wire       [0:0]    _zz_336;
  wire       [5:0]    _zz_337;
  wire       [32:0]   _zz_338;
  wire       [31:0]   _zz_339;
  wire       [31:0]   _zz_340;
  wire       [32:0]   _zz_341;
  wire       [32:0]   _zz_342;
  wire       [32:0]   _zz_343;
  wire       [32:0]   _zz_344;
  wire       [0:0]    _zz_345;
  wire       [32:0]   _zz_346;
  wire       [0:0]    _zz_347;
  wire       [32:0]   _zz_348;
  wire       [0:0]    _zz_349;
  wire       [31:0]   _zz_350;
  wire       [0:0]    _zz_351;
  wire       [0:0]    _zz_352;
  wire       [0:0]    _zz_353;
  wire       [0:0]    _zz_354;
  wire       [0:0]    _zz_355;
  wire       [0:0]    _zz_356;
  wire       [0:0]    _zz_357;
  wire       [26:0]   _zz_358;
  wire                _zz_359;
  wire                _zz_360;
  wire       [1:0]    _zz_361;
  wire       [31:0]   _zz_362;
  wire       [31:0]   _zz_363;
  wire       [31:0]   _zz_364;
  wire                _zz_365;
  wire       [0:0]    _zz_366;
  wire       [13:0]   _zz_367;
  wire       [31:0]   _zz_368;
  wire       [31:0]   _zz_369;
  wire       [31:0]   _zz_370;
  wire                _zz_371;
  wire       [0:0]    _zz_372;
  wire       [7:0]    _zz_373;
  wire       [31:0]   _zz_374;
  wire       [31:0]   _zz_375;
  wire       [31:0]   _zz_376;
  wire                _zz_377;
  wire       [0:0]    _zz_378;
  wire       [1:0]    _zz_379;
  wire                _zz_380;
  wire                _zz_381;
  wire                _zz_382;
  wire       [31:0]   _zz_383;
  wire       [0:0]    _zz_384;
  wire       [1:0]    _zz_385;
  wire       [0:0]    _zz_386;
  wire       [0:0]    _zz_387;
  wire                _zz_388;
  wire       [0:0]    _zz_389;
  wire       [26:0]   _zz_390;
  wire       [31:0]   _zz_391;
  wire       [31:0]   _zz_392;
  wire                _zz_393;
  wire       [1:0]    _zz_394;
  wire       [1:0]    _zz_395;
  wire                _zz_396;
  wire       [0:0]    _zz_397;
  wire       [21:0]   _zz_398;
  wire       [31:0]   _zz_399;
  wire       [31:0]   _zz_400;
  wire       [31:0]   _zz_401;
  wire       [31:0]   _zz_402;
  wire                _zz_403;
  wire                _zz_404;
  wire       [1:0]    _zz_405;
  wire       [1:0]    _zz_406;
  wire                _zz_407;
  wire       [0:0]    _zz_408;
  wire       [18:0]   _zz_409;
  wire       [31:0]   _zz_410;
  wire       [31:0]   _zz_411;
  wire       [31:0]   _zz_412;
  wire       [31:0]   _zz_413;
  wire                _zz_414;
  wire       [0:0]    _zz_415;
  wire       [0:0]    _zz_416;
  wire       [0:0]    _zz_417;
  wire       [1:0]    _zz_418;
  wire       [0:0]    _zz_419;
  wire       [0:0]    _zz_420;
  wire                _zz_421;
  wire       [0:0]    _zz_422;
  wire       [15:0]   _zz_423;
  wire       [31:0]   _zz_424;
  wire       [31:0]   _zz_425;
  wire       [31:0]   _zz_426;
  wire       [31:0]   _zz_427;
  wire       [31:0]   _zz_428;
  wire       [31:0]   _zz_429;
  wire       [31:0]   _zz_430;
  wire                _zz_431;
  wire                _zz_432;
  wire       [31:0]   _zz_433;
  wire       [31:0]   _zz_434;
  wire       [1:0]    _zz_435;
  wire       [1:0]    _zz_436;
  wire                _zz_437;
  wire       [0:0]    _zz_438;
  wire       [13:0]   _zz_439;
  wire       [31:0]   _zz_440;
  wire       [31:0]   _zz_441;
  wire       [31:0]   _zz_442;
  wire       [31:0]   _zz_443;
  wire       [0:0]    _zz_444;
  wire       [0:0]    _zz_445;
  wire       [0:0]    _zz_446;
  wire       [3:0]    _zz_447;
  wire       [0:0]    _zz_448;
  wire       [0:0]    _zz_449;
  wire                _zz_450;
  wire       [0:0]    _zz_451;
  wire       [10:0]   _zz_452;
  wire       [31:0]   _zz_453;
  wire       [31:0]   _zz_454;
  wire       [31:0]   _zz_455;
  wire       [31:0]   _zz_456;
  wire       [31:0]   _zz_457;
  wire                _zz_458;
  wire       [0:0]    _zz_459;
  wire       [0:0]    _zz_460;
  wire       [31:0]   _zz_461;
  wire                _zz_462;
  wire                _zz_463;
  wire       [0:0]    _zz_464;
  wire       [1:0]    _zz_465;
  wire       [5:0]    _zz_466;
  wire       [5:0]    _zz_467;
  wire                _zz_468;
  wire       [0:0]    _zz_469;
  wire       [7:0]    _zz_470;
  wire       [31:0]   _zz_471;
  wire       [31:0]   _zz_472;
  wire       [31:0]   _zz_473;
  wire       [31:0]   _zz_474;
  wire       [31:0]   _zz_475;
  wire       [31:0]   _zz_476;
  wire       [31:0]   _zz_477;
  wire                _zz_478;
  wire                _zz_479;
  wire       [0:0]    _zz_480;
  wire       [3:0]    _zz_481;
  wire       [0:0]    _zz_482;
  wire       [0:0]    _zz_483;
  wire       [1:0]    _zz_484;
  wire       [1:0]    _zz_485;
  wire                _zz_486;
  wire       [0:0]    _zz_487;
  wire       [5:0]    _zz_488;
  wire       [31:0]   _zz_489;
  wire       [31:0]   _zz_490;
  wire       [31:0]   _zz_491;
  wire       [31:0]   _zz_492;
  wire                _zz_493;
  wire       [0:0]    _zz_494;
  wire       [1:0]    _zz_495;
  wire       [31:0]   _zz_496;
  wire       [31:0]   _zz_497;
  wire                _zz_498;
  wire       [0:0]    _zz_499;
  wire       [0:0]    _zz_500;
  wire       [0:0]    _zz_501;
  wire       [0:0]    _zz_502;
  wire                _zz_503;
  wire       [0:0]    _zz_504;
  wire       [3:0]    _zz_505;
  wire       [31:0]   _zz_506;
  wire       [31:0]   _zz_507;
  wire       [31:0]   _zz_508;
  wire                _zz_509;
  wire                _zz_510;
  wire       [31:0]   _zz_511;
  wire       [31:0]   _zz_512;
  wire       [31:0]   _zz_513;
  wire       [31:0]   _zz_514;
  wire       [31:0]   _zz_515;
  wire       [31:0]   _zz_516;
  wire       [31:0]   _zz_517;
  wire       [0:0]    _zz_518;
  wire       [2:0]    _zz_519;
  wire       [0:0]    _zz_520;
  wire       [0:0]    _zz_521;
  wire                _zz_522;
  wire       [0:0]    _zz_523;
  wire       [1:0]    _zz_524;
  wire       [31:0]   _zz_525;
  wire       [31:0]   _zz_526;
  wire       [31:0]   _zz_527;
  wire       [31:0]   _zz_528;
  wire                _zz_529;
  wire       [0:0]    _zz_530;
  wire       [0:0]    _zz_531;
  wire       [31:0]   _zz_532;
  wire       [31:0]   _zz_533;
  wire       [0:0]    _zz_534;
  wire       [1:0]    _zz_535;
  wire       [1:0]    _zz_536;
  wire       [1:0]    _zz_537;
  wire                _zz_538;
  wire                _zz_539;
  wire       [31:0]   _zz_540;
  wire       [31:0]   _zz_541;
  wire       [31:0]   _zz_542;
  wire       [31:0]   _zz_543;
  wire       [31:0]   _zz_544;
  wire       [31:0]   _zz_545;
  wire       [31:0]   _zz_546;
  wire       [31:0]   _zz_547;
  wire       [31:0]   _zz_548;
  wire                _zz_549;
  wire       [31:0]   _zz_550;
  wire       [31:0]   _zz_551;
  wire                _zz_552;
  wire                _zz_553;
  wire                _zz_554;
  wire       [31:0]   _zz_555;
  wire       [31:0]   memory_MEMORY_READ_DATA;
  wire                writeBack_CfuPlugin_CFU_IN_FLIGHT;
  wire                execute_CfuPlugin_CFU_IN_FLIGHT;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire                decode_PREDICTION_HAD_BRANCHED2;
  wire                decode_SRC2_FORCE_ZERO;
  wire                decode_IS_DIV;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_MUL;
  wire       `Input2Kind_defaultEncoding_type decode_CfuPlugin_CFU_INPUT_2_KIND;
  wire       `Input2Kind_defaultEncoding_type _zz_1;
  wire       `Input2Kind_defaultEncoding_type _zz_2;
  wire       `Input2Kind_defaultEncoding_type _zz_3;
  wire                decode_CfuPlugin_CFU_ENABLE;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_4;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_5;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_6;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_7;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_8;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_9;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_10;
  wire                decode_IS_CSR;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_11;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_12;
  wire       `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_13;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_14;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_15;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_16;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_17;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_18;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_STORE;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_19;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_20;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_21;
  wire       `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_22;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_23;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_24;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_25;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_26;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_27;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire                execute_IS_RS1_SIGNED;
  wire                execute_IS_DIV;
  wire                execute_IS_MUL;
  wire                execute_IS_RS2_SIGNED;
  wire                memory_IS_DIV;
  wire                memory_IS_MUL;
  reg                 _zz_28;
  reg                 _zz_29;
  wire                memory_CfuPlugin_CFU_IN_FLIGHT;
  wire       `Input2Kind_defaultEncoding_type execute_CfuPlugin_CFU_INPUT_2_KIND;
  wire       `Input2Kind_defaultEncoding_type _zz_30;
  wire                execute_CfuPlugin_CFU_ENABLE;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_31;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_32;
  wire       `EnvCtrlEnum_defaultEncoding_type writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_33;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire                execute_PREDICTION_HAD_BRANCHED2;
  wire       [31:0]   execute_RS1;
  wire                execute_BRANCH_COND_RESULT;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_34;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  reg        [31:0]   _zz_35;
  wire                memory_REGFILE_WRITE_VALID;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  reg        [31:0]   _zz_36;
  wire       `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_37;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_38;
  wire       `Src2CtrlEnum_defaultEncoding_type execute_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_39;
  wire       `Src1CtrlEnum_defaultEncoding_type execute_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_40;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_41;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_42;
  wire       [31:0]   _zz_43;
  wire                _zz_44;
  reg                 _zz_45;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `Input2Kind_defaultEncoding_type _zz_46;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_47;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_48;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_49;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_50;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_51;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_52;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_53;
  wire                writeBack_MEMORY_STORE;
  reg        [31:0]   _zz_54;
  wire                writeBack_MEMORY_ENABLE;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire       [31:0]   writeBack_MEMORY_READ_DATA;
  wire                memory_MMU_FAULT;
  wire       [31:0]   memory_MMU_RSP2_physicalAddress;
  wire                memory_MMU_RSP2_isIoAccess;
  wire                memory_MMU_RSP2_isPaging;
  wire                memory_MMU_RSP2_allowRead;
  wire                memory_MMU_RSP2_allowWrite;
  wire                memory_MMU_RSP2_allowExecute;
  wire                memory_MMU_RSP2_exception;
  wire                memory_MMU_RSP2_refilling;
  wire                memory_MMU_RSP2_bypassTranslation;
  wire       [31:0]   memory_PC;
  wire                memory_ALIGNEMENT_FAULT;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_STORE;
  wire                memory_MEMORY_ENABLE;
  wire                execute_MMU_FAULT;
  wire       [31:0]   execute_MMU_RSP2_physicalAddress;
  wire                execute_MMU_RSP2_isIoAccess;
  wire                execute_MMU_RSP2_isPaging;
  wire                execute_MMU_RSP2_allowRead;
  wire                execute_MMU_RSP2_allowWrite;
  wire                execute_MMU_RSP2_allowExecute;
  wire                execute_MMU_RSP2_exception;
  wire                execute_MMU_RSP2_refilling;
  wire                execute_MMU_RSP2_bypassTranslation;
  wire       [31:0]   execute_SRC_ADD;
  wire       [31:0]   execute_RS2;
  wire       [31:0]   execute_INSTRUCTION;
  wire                execute_MEMORY_STORE;
  wire                execute_MEMORY_ENABLE;
  wire                execute_ALIGNEMENT_FAULT;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 IBusCachedPlugin_rsp_issueDetected_4;
  reg                 IBusCachedPlugin_rsp_issueDetected_3;
  reg                 IBusCachedPlugin_rsp_issueDetected_2;
  reg                 IBusCachedPlugin_rsp_issueDetected_1;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_55;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_56;
  reg        [31:0]   _zz_57;
  reg        [31:0]   _zz_58;
  wire       [31:0]   decode_PC;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  wire                decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  wire                execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  wire                execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  reg                 memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  wire                writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  wire                writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_predictionJumpInterface_valid;
  (* keep , syn_keep *) wire       [31:0]   IBusCachedPlugin_predictionJumpInterface_payload /* synthesis syn_keep = 1 */ ;
  reg                 IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire                IBusCachedPlugin_decodePrediction_rsp_wasWrong;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                IBusCachedPlugin_mmuBus_rsp_isPaging;
  wire                IBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                IBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                IBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                IBusCachedPlugin_mmuBus_rsp_exception;
  wire                IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  reg                 DBusSimplePlugin_memoryExceptionPort_valid;
  reg        [3:0]    DBusSimplePlugin_memoryExceptionPort_payload_code;
  wire       [31:0]   DBusSimplePlugin_memoryExceptionPort_payload_badAddr;
  wire                DBusSimplePlugin_mmuBus_cmd_0_isValid;
  wire                DBusSimplePlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   DBusSimplePlugin_mmuBus_cmd_0_virtualAddress;
  wire                DBusSimplePlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   DBusSimplePlugin_mmuBus_rsp_physicalAddress;
  wire                DBusSimplePlugin_mmuBus_rsp_isIoAccess;
  wire                DBusSimplePlugin_mmuBus_rsp_isPaging;
  wire                DBusSimplePlugin_mmuBus_rsp_allowRead;
  wire                DBusSimplePlugin_mmuBus_rsp_allowWrite;
  wire                DBusSimplePlugin_mmuBus_rsp_allowExecute;
  wire                DBusSimplePlugin_mmuBus_rsp_exception;
  wire                DBusSimplePlugin_mmuBus_rsp_refilling;
  wire                DBusSimplePlugin_mmuBus_rsp_bypassTranslation;
  wire                DBusSimplePlugin_mmuBus_end;
  wire                DBusSimplePlugin_mmuBus_busy;
  reg                 DBusSimplePlugin_redoBranch_valid;
  wire       [31:0]   DBusSimplePlugin_redoBranch_payload;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  reg                 BranchPlugin_branchExceptionPort_valid;
  wire       [3:0]    BranchPlugin_branchExceptionPort_payload_code;
  wire       [31:0]   BranchPlugin_branchExceptionPort_payload_badAddr;
  reg                 CsrPlugin_inWfi /* verilator public */ ;
  wire                CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
  wire                externalInterrupt;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  wire                CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_selfException_valid;
  reg        [3:0]    CsrPlugin_selfException_payload_code;
  wire       [31:0]   CsrPlugin_selfException_payload_badAddr;
  wire                CsrPlugin_allowInterrupts;
  wire                CsrPlugin_allowException;
  reg                 CfuPlugin_joinException_valid;
  wire       [3:0]    CfuPlugin_joinException_payload_code;
  wire       [31:0]   CfuPlugin_joinException_payload_badAddr;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_59;
  wire       [3:0]    _zz_60;
  wire                _zz_61;
  wire                _zz_62;
  wire                _zz_63;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_corrected;
  reg                 IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                _zz_64;
  wire                _zz_65;
  wire                _zz_66;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_67;
  wire                _zz_68;
  reg                 _zz_69;
  wire                _zz_70;
  reg                 _zz_71;
  reg        [31:0]   _zz_72;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_4;
  wire                _zz_73;
  reg        [18:0]   _zz_74;
  wire                _zz_75;
  reg        [10:0]   _zz_76;
  wire                _zz_77;
  reg        [18:0]   _zz_78;
  reg                 _zz_79;
  wire                _zz_80;
  reg        [10:0]   _zz_81;
  wire                _zz_82;
  reg        [18:0]   _zz_83;
  wire                iBus_cmd_valid;
  wire                iBus_cmd_ready;
  reg        [31:0]   iBus_cmd_payload_address;
  wire       [2:0]    iBus_cmd_payload_size;
  wire                iBus_rsp_valid;
  wire       [31:0]   iBus_rsp_payload_data;
  wire                iBus_rsp_payload_error;
  wire       [31:0]   _zz_84;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s2_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire                dBus_cmd_valid;
  wire                dBus_cmd_ready;
  wire                dBus_cmd_payload_wr;
  wire       [31:0]   dBus_cmd_payload_address;
  wire       [31:0]   dBus_cmd_payload_data;
  wire       [1:0]    dBus_cmd_payload_size;
  wire                dBus_rsp_ready;
  wire                dBus_rsp_error;
  wire       [31:0]   dBus_rsp_data;
  wire                _zz_85;
  reg                 execute_DBusSimplePlugin_skipCmd;
  reg        [31:0]   _zz_86;
  reg        [3:0]    _zz_87;
  wire       [3:0]    execute_DBusSimplePlugin_formalMask;
  reg        [31:0]   writeBack_DBusSimplePlugin_rspShifted;
  wire                _zz_88;
  reg        [31:0]   _zz_89;
  wire                _zz_90;
  reg        [31:0]   _zz_91;
  reg        [31:0]   writeBack_DBusSimplePlugin_rspFormated;
  wire       [32:0]   _zz_92;
  wire                _zz_93;
  wire                _zz_94;
  wire                _zz_95;
  wire                _zz_96;
  wire                _zz_97;
  wire                _zz_98;
  wire                _zz_99;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_100;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_101;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_102;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_103;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_104;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_105;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_106;
  wire       `Input2Kind_defaultEncoding_type _zz_107;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg                 _zz_108;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_109;
  reg        [31:0]   _zz_110;
  wire                _zz_111;
  reg        [19:0]   _zz_112;
  wire                _zz_113;
  reg        [19:0]   _zz_114;
  reg        [31:0]   _zz_115;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  reg                 execute_LightShifterPlugin_isActive;
  wire                execute_LightShifterPlugin_isShift;
  reg        [4:0]    execute_LightShifterPlugin_amplitudeReg;
  wire       [4:0]    execute_LightShifterPlugin_amplitude;
  wire       [31:0]   execute_LightShifterPlugin_shiftInput;
  wire                execute_LightShifterPlugin_done;
  reg        [31:0]   _zz_116;
  reg                 _zz_117;
  reg                 _zz_118;
  reg                 _zz_119;
  reg        [4:0]    _zz_120;
  reg        [31:0]   _zz_121;
  wire                _zz_122;
  wire                _zz_123;
  wire                _zz_124;
  wire                _zz_125;
  wire                _zz_126;
  wire                _zz_127;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    _zz_128;
  reg                 _zz_129;
  reg                 _zz_130;
  wire                _zz_131;
  reg        [19:0]   _zz_132;
  wire                _zz_133;
  reg        [10:0]   _zz_134;
  wire                _zz_135;
  reg        [18:0]   _zz_136;
  reg                 _zz_137;
  wire                execute_BranchPlugin_missAlignedTarget;
  reg        [31:0]   execute_BranchPlugin_branch_src1;
  reg        [31:0]   execute_BranchPlugin_branch_src2;
  wire                _zz_138;
  reg        [19:0]   _zz_139;
  wire                _zz_140;
  reg        [10:0]   _zz_141;
  wire                _zz_142;
  reg        [18:0]   _zz_143;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  reg        [1:0]    CsrPlugin_misa_base;
  reg        [25:0]   CsrPlugin_misa_extensions;
  reg        [1:0]    CsrPlugin_mtvec_mode;
  reg        [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg        [31:0]   CsrPlugin_mscratch;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg        [63:0]   CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  wire                _zz_144;
  wire                _zz_145;
  wire                _zz_146;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_147;
  wire                _zz_148;
  wire       [1:0]    _zz_149;
  wire                _zz_150;
  wire       [1:0]    _zz_151;
  wire                _zz_152;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                CsrPlugin_exception;
  reg                 CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
  wire                CsrPlugin_pipelineLiberator_active;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException /* verilator public */ ;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  reg                 execute_CsrPlugin_wfiWake;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire       [31:0]   execute_CsrPlugin_readData;
  reg                 execute_CsrPlugin_writeInstruction;
  reg                 execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  wire       [31:0]   execute_CsrPlugin_readToWriteData;
  reg        [31:0]   execute_CsrPlugin_writeData;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  reg        [31:0]   _zz_153;
  reg        [31:0]   _zz_154;
  reg        [31:0]   _zz_155;
  reg        [31:0]   _zz_156;
  reg        [31:0]   _zz_157;
  reg        [31:0]   _zz_158;
  reg        [31:0]   _zz_159;
  reg        [31:0]   _zz_160;
  reg        [31:0]   _zz_161;
  reg        [31:0]   _zz_162;
  reg        [31:0]   _zz_163;
  reg        [31:0]   _zz_164;
  reg        [31:0]   _zz_165;
  reg        [31:0]   _zz_166;
  reg        [31:0]   _zz_167;
  reg        [31:0]   _zz_168;
  wire                execute_CfuPlugin_schedule;
  reg                 execute_CfuPlugin_hold;
  reg                 execute_CfuPlugin_fired;
  wire       [9:0]    execute_CfuPlugin_functionsIds_0;
  wire                _zz_169;
  reg        [23:0]   _zz_170;
  reg        [31:0]   _zz_171;
  wire                memory_CfuPlugin_rsp_valid;
  reg                 memory_CfuPlugin_rsp_ready;
  wire                memory_CfuPlugin_rsp_payload_response_ok;
  wire       [31:0]   memory_CfuPlugin_rsp_payload_outputs_0;
  reg                 CfuPlugin_bus_rsp_s2mPipe_rValid;
  reg                 CfuPlugin_bus_rsp_s2mPipe_rData_response_ok;
  reg        [31:0]   CfuPlugin_bus_rsp_s2mPipe_rData_outputs_0;
  reg        [32:0]   memory_MulDivIterativePlugin_rs1;
  reg        [31:0]   memory_MulDivIterativePlugin_rs2;
  reg        [64:0]   memory_MulDivIterativePlugin_accumulator;
  wire                memory_MulDivIterativePlugin_frontendOk;
  reg                 memory_MulDivIterativePlugin_mul_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_mul_counter_willClear;
  reg        [5:0]    memory_MulDivIterativePlugin_mul_counter_valueNext;
  reg        [5:0]    memory_MulDivIterativePlugin_mul_counter_value;
  wire                memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc;
  wire                memory_MulDivIterativePlugin_mul_counter_willOverflow;
  reg                 memory_MulDivIterativePlugin_div_needRevert;
  reg                 memory_MulDivIterativePlugin_div_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_div_counter_willClear;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_valueNext;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_value;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflowIfInc;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflow;
  reg                 memory_MulDivIterativePlugin_div_done;
  reg        [31:0]   memory_MulDivIterativePlugin_div_result;
  wire       [31:0]   _zz_172;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outNumerator;
  wire       [31:0]   _zz_173;
  wire                _zz_174;
  wire                _zz_175;
  reg        [32:0]   _zz_176;
  reg        [31:0]   externalInterruptArray_regNext;
  reg        [31:0]   _zz_177;
  wire       [31:0]   _zz_178;
  reg        [31:0]   decode_to_execute_PC;
  reg        [31:0]   execute_to_memory_PC;
  reg        [31:0]   memory_to_writeBack_PC;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  reg        `Src1CtrlEnum_defaultEncoding_type decode_to_execute_SRC1_CTRL;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  reg                 decode_to_execute_MEMORY_ENABLE;
  reg                 execute_to_memory_MEMORY_ENABLE;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  reg        `AluCtrlEnum_defaultEncoding_type decode_to_execute_ALU_CTRL;
  reg        `Src2CtrlEnum_defaultEncoding_type decode_to_execute_SRC2_CTRL;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  reg                 decode_to_execute_MEMORY_STORE;
  reg                 execute_to_memory_MEMORY_STORE;
  reg                 memory_to_writeBack_MEMORY_STORE;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  reg        `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_ALU_BITWISE_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type decode_to_execute_SHIFT_CTRL;
  reg        `BranchCtrlEnum_defaultEncoding_type decode_to_execute_BRANCH_CTRL;
  reg                 decode_to_execute_IS_CSR;
  reg        `EnvCtrlEnum_defaultEncoding_type decode_to_execute_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type execute_to_memory_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type memory_to_writeBack_ENV_CTRL;
  reg                 decode_to_execute_CfuPlugin_CFU_ENABLE;
  reg        `Input2Kind_defaultEncoding_type decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND;
  reg                 decode_to_execute_IS_MUL;
  reg                 execute_to_memory_IS_MUL;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  reg                 decode_to_execute_IS_DIV;
  reg                 execute_to_memory_IS_DIV;
  reg        [31:0]   decode_to_execute_RS1;
  reg        [31:0]   decode_to_execute_RS2;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  reg                 decode_to_execute_PREDICTION_HAD_BRANCHED2;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  reg                 execute_to_memory_ALIGNEMENT_FAULT;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  reg                 execute_to_memory_MMU_FAULT;
  reg        [31:0]   execute_to_memory_MMU_RSP2_physicalAddress;
  reg                 execute_to_memory_MMU_RSP2_isIoAccess;
  reg                 execute_to_memory_MMU_RSP2_isPaging;
  reg                 execute_to_memory_MMU_RSP2_allowRead;
  reg                 execute_to_memory_MMU_RSP2_allowWrite;
  reg                 execute_to_memory_MMU_RSP2_allowExecute;
  reg                 execute_to_memory_MMU_RSP2_exception;
  reg                 execute_to_memory_MMU_RSP2_refilling;
  reg                 execute_to_memory_MMU_RSP2_bypassTranslation;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  reg                 execute_to_memory_CfuPlugin_CFU_IN_FLIGHT;
  reg                 memory_to_writeBack_CfuPlugin_CFU_IN_FLIGHT;
  reg        [31:0]   memory_to_writeBack_MEMORY_READ_DATA;
  reg                 execute_CsrPlugin_csr_3857;
  reg                 execute_CsrPlugin_csr_3858;
  reg                 execute_CsrPlugin_csr_3859;
  reg                 execute_CsrPlugin_csr_3860;
  reg                 execute_CsrPlugin_csr_769;
  reg                 execute_CsrPlugin_csr_768;
  reg                 execute_CsrPlugin_csr_836;
  reg                 execute_CsrPlugin_csr_772;
  reg                 execute_CsrPlugin_csr_773;
  reg                 execute_CsrPlugin_csr_833;
  reg                 execute_CsrPlugin_csr_832;
  reg                 execute_CsrPlugin_csr_834;
  reg                 execute_CsrPlugin_csr_835;
  reg                 execute_CsrPlugin_csr_2816;
  reg                 execute_CsrPlugin_csr_2944;
  reg                 execute_CsrPlugin_csr_2818;
  reg                 execute_CsrPlugin_csr_2946;
  reg                 execute_CsrPlugin_csr_3072;
  reg                 execute_CsrPlugin_csr_3200;
  reg                 execute_CsrPlugin_csr_3074;
  reg                 execute_CsrPlugin_csr_3202;
  reg                 execute_CsrPlugin_csr_2820;
  reg                 execute_CsrPlugin_csr_2821;
  reg                 execute_CsrPlugin_csr_2822;
  reg                 execute_CsrPlugin_csr_2823;
  reg                 execute_CsrPlugin_csr_2824;
  reg                 execute_CsrPlugin_csr_2825;
  reg                 execute_CsrPlugin_csr_2826;
  reg                 execute_CsrPlugin_csr_2827;
  reg                 execute_CsrPlugin_csr_2828;
  reg                 execute_CsrPlugin_csr_2829;
  reg                 execute_CsrPlugin_csr_2830;
  reg                 execute_CsrPlugin_csr_2831;
  reg                 execute_CsrPlugin_csr_2832;
  reg                 execute_CsrPlugin_csr_2833;
  reg                 execute_CsrPlugin_csr_2834;
  reg                 execute_CsrPlugin_csr_2835;
  reg                 execute_CsrPlugin_csr_3008;
  reg                 execute_CsrPlugin_csr_4032;
  reg        [31:0]   _zz_179;
  reg        [31:0]   _zz_180;
  reg        [31:0]   _zz_181;
  reg        [31:0]   _zz_182;
  reg        [31:0]   _zz_183;
  reg        [31:0]   _zz_184;
  reg        [31:0]   _zz_185;
  reg        [31:0]   _zz_186;
  reg        [31:0]   _zz_187;
  reg        [31:0]   _zz_188;
  reg        [31:0]   _zz_189;
  reg        [31:0]   _zz_190;
  reg        [31:0]   _zz_191;
  reg        [31:0]   _zz_192;
  reg        [31:0]   _zz_193;
  reg        [31:0]   _zz_194;
  reg        [31:0]   _zz_195;
  reg        [31:0]   _zz_196;
  reg        [31:0]   _zz_197;
  reg        [31:0]   _zz_198;
  reg        [31:0]   _zz_199;
  reg        [31:0]   _zz_200;
  reg        [31:0]   _zz_201;
  reg        [31:0]   _zz_202;
  reg        [31:0]   _zz_203;
  reg        [31:0]   _zz_204;
  reg        [31:0]   _zz_205;
  reg        [31:0]   _zz_206;
  reg        [31:0]   _zz_207;
  reg        [31:0]   _zz_208;
  reg        [2:0]    _zz_209;
  reg                 _zz_210;
  reg        [31:0]   iBusWishbone_DAT_MISO_regNext;
  wire                dBus_cmd_halfPipe_valid;
  wire                dBus_cmd_halfPipe_ready;
  wire                dBus_cmd_halfPipe_payload_wr;
  wire       [31:0]   dBus_cmd_halfPipe_payload_address;
  wire       [31:0]   dBus_cmd_halfPipe_payload_data;
  wire       [1:0]    dBus_cmd_halfPipe_payload_size;
  reg                 dBus_cmd_halfPipe_regs_valid;
  reg                 dBus_cmd_halfPipe_regs_ready;
  reg                 dBus_cmd_halfPipe_regs_payload_wr;
  reg        [31:0]   dBus_cmd_halfPipe_regs_payload_address;
  reg        [31:0]   dBus_cmd_halfPipe_regs_payload_data;
  reg        [1:0]    dBus_cmd_halfPipe_regs_payload_size;
  reg        [3:0]    _zz_211;
  `ifndef SYNTHESIS
  reg [39:0] decode_CfuPlugin_CFU_INPUT_2_KIND_string;
  reg [39:0] _zz_1_string;
  reg [39:0] _zz_2_string;
  reg [39:0] _zz_3_string;
  reg [39:0] _zz_4_string;
  reg [39:0] _zz_5_string;
  reg [39:0] _zz_6_string;
  reg [39:0] _zz_7_string;
  reg [39:0] decode_ENV_CTRL_string;
  reg [39:0] _zz_8_string;
  reg [39:0] _zz_9_string;
  reg [39:0] _zz_10_string;
  reg [31:0] _zz_11_string;
  reg [31:0] _zz_12_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_13_string;
  reg [71:0] _zz_14_string;
  reg [71:0] _zz_15_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_16_string;
  reg [39:0] _zz_17_string;
  reg [39:0] _zz_18_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_19_string;
  reg [23:0] _zz_20_string;
  reg [23:0] _zz_21_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_22_string;
  reg [63:0] _zz_23_string;
  reg [63:0] _zz_24_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_25_string;
  reg [95:0] _zz_26_string;
  reg [95:0] _zz_27_string;
  reg [39:0] execute_CfuPlugin_CFU_INPUT_2_KIND_string;
  reg [39:0] _zz_30_string;
  reg [39:0] memory_ENV_CTRL_string;
  reg [39:0] _zz_31_string;
  reg [39:0] execute_ENV_CTRL_string;
  reg [39:0] _zz_32_string;
  reg [39:0] writeBack_ENV_CTRL_string;
  reg [39:0] _zz_33_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_34_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_37_string;
  reg [23:0] execute_SRC2_CTRL_string;
  reg [23:0] _zz_39_string;
  reg [95:0] execute_SRC1_CTRL_string;
  reg [95:0] _zz_40_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_41_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_42_string;
  reg [39:0] _zz_46_string;
  reg [39:0] _zz_47_string;
  reg [31:0] _zz_48_string;
  reg [71:0] _zz_49_string;
  reg [39:0] _zz_50_string;
  reg [23:0] _zz_51_string;
  reg [63:0] _zz_52_string;
  reg [95:0] _zz_53_string;
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_55_string;
  reg [95:0] _zz_100_string;
  reg [63:0] _zz_101_string;
  reg [23:0] _zz_102_string;
  reg [39:0] _zz_103_string;
  reg [71:0] _zz_104_string;
  reg [31:0] _zz_105_string;
  reg [39:0] _zz_106_string;
  reg [39:0] _zz_107_string;
  reg [95:0] decode_to_execute_SRC1_CTRL_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [23:0] decode_to_execute_SRC2_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  reg [39:0] decode_to_execute_ENV_CTRL_string;
  reg [39:0] execute_to_memory_ENV_CTRL_string;
  reg [39:0] memory_to_writeBack_ENV_CTRL_string;
  reg [39:0] decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND_string;
  `endif

  (* ram_style = "block" *) reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_224 = (memory_arbitration_isValid && memory_IS_MUL);
  assign _zz_225 = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_226 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_227 = 1'b1;
  assign _zz_228 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_229 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_230 = ((execute_arbitration_isValid && execute_LightShifterPlugin_isShift) && (execute_SRC2[4 : 0] != 5'h0));
  assign _zz_231 = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_232 = ((_zz_217 && IBusCachedPlugin_cache_io_cpu_decode_error) && (! IBusCachedPlugin_rsp_issueDetected_3));
  assign _zz_233 = ((_zz_217 && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! IBusCachedPlugin_rsp_issueDetected_2));
  assign _zz_234 = ((_zz_217 && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! IBusCachedPlugin_rsp_issueDetected_1));
  assign _zz_235 = ((_zz_217 && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_236 = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_237 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
  assign _zz_238 = ({CsrPlugin_selfException_valid,BranchPlugin_branchExceptionPort_valid} != 2'b00);
  assign _zz_239 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc));
  assign _zz_240 = ({CfuPlugin_joinException_valid,DBusSimplePlugin_memoryExceptionPort_valid} != 2'b00);
  assign _zz_241 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_242 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_243 = writeBack_INSTRUCTION[29 : 28];
  assign _zz_244 = ((dBus_rsp_ready && dBus_rsp_error) && (! memory_MEMORY_STORE));
  assign _zz_245 = (! ((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (1'b1 || (! memory_arbitration_isStuckByOthers))));
  assign _zz_246 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_247 = (1'b0 || (! 1'b1));
  assign _zz_248 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_249 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign _zz_250 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_251 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_252 = (CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]);
  assign _zz_253 = (execute_CsrPlugin_illegalAccess || execute_CsrPlugin_illegalInstruction);
  assign _zz_254 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_ECALL));
  assign _zz_255 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_div_done));
  assign _zz_256 = (! memory_arbitration_isStuck);
  assign _zz_257 = (iBus_cmd_valid || (_zz_209 != 3'b000));
  assign _zz_258 = (! execute_arbitration_isStuckByOthers);
  assign _zz_259 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign _zz_260 = ((_zz_144 && 1'b1) && (! 1'b0));
  assign _zz_261 = ((_zz_145 && 1'b1) && (! 1'b0));
  assign _zz_262 = ((_zz_146 && 1'b1) && (! 1'b0));
  assign _zz_263 = (CfuPlugin_bus_rsp_ready && (! memory_CfuPlugin_rsp_ready));
  assign _zz_264 = (! dBus_cmd_halfPipe_regs_valid);
  assign _zz_265 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_266 = execute_INSTRUCTION[13];
  assign _zz_267 = _zz_92[32 : 32];
  assign _zz_268 = _zz_92[31 : 31];
  assign _zz_269 = _zz_92[30 : 30];
  assign _zz_270 = _zz_92[29 : 29];
  assign _zz_271 = _zz_92[27 : 27];
  assign _zz_272 = _zz_92[24 : 24];
  assign _zz_273 = _zz_92[16 : 16];
  assign _zz_274 = _zz_92[13 : 13];
  assign _zz_275 = _zz_92[12 : 12];
  assign _zz_276 = _zz_92[11 : 11];
  assign _zz_277 = _zz_92[15 : 15];
  assign _zz_278 = _zz_92[5 : 5];
  assign _zz_279 = _zz_92[3 : 3];
  assign _zz_280 = _zz_92[19 : 19];
  assign _zz_281 = _zz_92[10 : 10];
  assign _zz_282 = _zz_92[4 : 4];
  assign _zz_283 = _zz_92[0 : 0];
  assign _zz_284 = (_zz_59 - 4'b0001);
  assign _zz_285 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_286 = {29'd0, _zz_285};
  assign _zz_287 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_288 = {{_zz_74,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_289 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_290 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_291 = {{_zz_76,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_292 = {{_zz_78,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_293 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_294 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_295 = (memory_MEMORY_STORE ? 3'b110 : 3'b100);
  assign _zz_296 = execute_SRC_LESS;
  assign _zz_297 = 3'b100;
  assign _zz_298 = execute_INSTRUCTION[19 : 15];
  assign _zz_299 = execute_INSTRUCTION[31 : 20];
  assign _zz_300 = {execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]};
  assign _zz_301 = ($signed(_zz_302) + $signed(_zz_305));
  assign _zz_302 = ($signed(_zz_303) + $signed(_zz_304));
  assign _zz_303 = execute_SRC1;
  assign _zz_304 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_305 = (execute_SRC_USE_SUB_LESS ? _zz_306 : _zz_307);
  assign _zz_306 = 32'h00000001;
  assign _zz_307 = 32'h0;
  assign _zz_308 = (_zz_309 >>> 1);
  assign _zz_309 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_LightShifterPlugin_shiftInput[31]),execute_LightShifterPlugin_shiftInput};
  assign _zz_310 = execute_INSTRUCTION[31 : 20];
  assign _zz_311 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_312 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_313 = {_zz_132,execute_INSTRUCTION[31 : 20]};
  assign _zz_314 = {{_zz_134,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_315 = {{_zz_136,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_316 = execute_INSTRUCTION[31 : 20];
  assign _zz_317 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_318 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_319 = 3'b100;
  assign _zz_320 = (_zz_147 & (~ _zz_321));
  assign _zz_321 = (_zz_147 - 2'b01);
  assign _zz_322 = (_zz_149 & (~ _zz_323));
  assign _zz_323 = (_zz_149 - 2'b01);
  assign _zz_324 = (_zz_151 & (~ _zz_325));
  assign _zz_325 = (_zz_151 - 2'b01);
  assign _zz_326 = {execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[14 : 12]};
  assign _zz_327 = execute_INSTRUCTION[31 : 24];
  assign _zz_328 = memory_MulDivIterativePlugin_mul_counter_willIncrement;
  assign _zz_329 = {5'd0, _zz_328};
  assign _zz_330 = (_zz_332 + _zz_334);
  assign _zz_331 = (memory_MulDivIterativePlugin_rs2[0] ? memory_MulDivIterativePlugin_rs1 : 33'h0);
  assign _zz_332 = {{1{_zz_331[32]}}, _zz_331};
  assign _zz_333 = _zz_335;
  assign _zz_334 = {{1{_zz_333[32]}}, _zz_333};
  assign _zz_335 = (memory_MulDivIterativePlugin_accumulator >>> 32);
  assign _zz_336 = memory_MulDivIterativePlugin_div_counter_willIncrement;
  assign _zz_337 = {5'd0, _zz_336};
  assign _zz_338 = {1'd0, memory_MulDivIterativePlugin_rs2};
  assign _zz_339 = memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_340 = memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_341 = {_zz_172,(! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_342 = _zz_343;
  assign _zz_343 = _zz_344;
  assign _zz_344 = ({memory_MulDivIterativePlugin_div_needRevert,(memory_MulDivIterativePlugin_div_needRevert ? (~ _zz_173) : _zz_173)} + _zz_346);
  assign _zz_345 = memory_MulDivIterativePlugin_div_needRevert;
  assign _zz_346 = {32'd0, _zz_345};
  assign _zz_347 = _zz_175;
  assign _zz_348 = {32'd0, _zz_347};
  assign _zz_349 = _zz_174;
  assign _zz_350 = {31'd0, _zz_349};
  assign _zz_351 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_352 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_353 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_354 = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_355 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_356 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_357 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_358 = (iBus_cmd_payload_address >>> 5);
  assign _zz_359 = 1'b1;
  assign _zz_360 = 1'b1;
  assign _zz_361 = {_zz_63,_zz_62};
  assign _zz_362 = 32'h0000106f;
  assign _zz_363 = (decode_INSTRUCTION & 32'h0000107f);
  assign _zz_364 = 32'h00001073;
  assign _zz_365 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002073);
  assign _zz_366 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_367 = {((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013),{((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & _zz_368) == 32'h00000003),{(_zz_369 == _zz_370),{_zz_371,{_zz_372,_zz_373}}}}}};
  assign _zz_368 = 32'h0000207f;
  assign _zz_369 = (decode_INSTRUCTION & 32'h0000505f);
  assign _zz_370 = 32'h00000003;
  assign _zz_371 = ((decode_INSTRUCTION & 32'h0000707b) == 32'h00000063);
  assign _zz_372 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_373 = {((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033),{((decode_INSTRUCTION & 32'hfc00305f) == 32'h00001013),{((decode_INSTRUCTION & _zz_374) == 32'h00005013),{(_zz_375 == _zz_376),{_zz_377,{_zz_378,_zz_379}}}}}};
  assign _zz_374 = 32'hbc00707f;
  assign _zz_375 = (decode_INSTRUCTION & 32'hbe00707f);
  assign _zz_376 = 32'h00005033;
  assign _zz_377 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033);
  assign _zz_378 = ((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073);
  assign _zz_379 = {((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073),((decode_INSTRUCTION & 32'hffffffff) == 32'h00000073)};
  assign _zz_380 = decode_INSTRUCTION[31];
  assign _zz_381 = decode_INSTRUCTION[31];
  assign _zz_382 = decode_INSTRUCTION[7];
  assign _zz_383 = 32'h02004064;
  assign _zz_384 = _zz_99;
  assign _zz_385 = {_zz_97,_zz_98};
  assign _zz_386 = ((decode_INSTRUCTION & 32'h02004074) == 32'h02000030);
  assign _zz_387 = 1'b0;
  assign _zz_388 = 1'b0;
  assign _zz_389 = (_zz_96 != 1'b0);
  assign _zz_390 = {((_zz_391 == _zz_392) != 1'b0),{(_zz_393 != 1'b0),{(_zz_394 != _zz_395),{_zz_396,{_zz_397,_zz_398}}}}};
  assign _zz_391 = (decode_INSTRUCTION & 32'h00203050);
  assign _zz_392 = 32'h00000050;
  assign _zz_393 = ((decode_INSTRUCTION & 32'h00403050) == 32'h00000050);
  assign _zz_394 = {(_zz_399 == _zz_400),(_zz_401 == _zz_402)};
  assign _zz_395 = 2'b00;
  assign _zz_396 = ({_zz_95,_zz_403} != 2'b00);
  assign _zz_397 = (_zz_404 != 1'b0);
  assign _zz_398 = {(_zz_405 != _zz_406),{_zz_407,{_zz_408,_zz_409}}};
  assign _zz_399 = (decode_INSTRUCTION & 32'h00001050);
  assign _zz_400 = 32'h00001050;
  assign _zz_401 = (decode_INSTRUCTION & 32'h00002050);
  assign _zz_402 = 32'h00002050;
  assign _zz_403 = ((decode_INSTRUCTION & 32'h0000001c) == 32'h00000004);
  assign _zz_404 = ((decode_INSTRUCTION & 32'h00000058) == 32'h00000040);
  assign _zz_405 = {(_zz_410 == _zz_411),(_zz_412 == _zz_413)};
  assign _zz_406 = 2'b00;
  assign _zz_407 = ({_zz_414,{_zz_415,_zz_416}} != 3'b000);
  assign _zz_408 = ({_zz_417,_zz_418} != 3'b000);
  assign _zz_409 = {(_zz_419 != _zz_420),{_zz_421,{_zz_422,_zz_423}}};
  assign _zz_410 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz_411 = 32'h00005010;
  assign _zz_412 = (decode_INSTRUCTION & 32'h02007064);
  assign _zz_413 = 32'h00005020;
  assign _zz_414 = ((decode_INSTRUCTION & _zz_424) == 32'h40001010);
  assign _zz_415 = (_zz_425 == _zz_426);
  assign _zz_416 = (_zz_427 == _zz_428);
  assign _zz_417 = (_zz_429 == _zz_430);
  assign _zz_418 = {_zz_431,_zz_432};
  assign _zz_419 = (_zz_433 == _zz_434);
  assign _zz_420 = 1'b0;
  assign _zz_421 = (_zz_97 != 1'b0);
  assign _zz_422 = (_zz_435 != _zz_436);
  assign _zz_423 = {_zz_437,{_zz_438,_zz_439}};
  assign _zz_424 = 32'h40003054;
  assign _zz_425 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz_426 = 32'h00001010;
  assign _zz_427 = (decode_INSTRUCTION & 32'h02007054);
  assign _zz_428 = 32'h00001010;
  assign _zz_429 = (decode_INSTRUCTION & 32'h00000064);
  assign _zz_430 = 32'h00000024;
  assign _zz_431 = ((decode_INSTRUCTION & 32'h00003034) == 32'h00001010);
  assign _zz_432 = ((decode_INSTRUCTION & 32'h02003054) == 32'h00001010);
  assign _zz_433 = (decode_INSTRUCTION & 32'h00001000);
  assign _zz_434 = 32'h00001000;
  assign _zz_435 = {(_zz_440 == _zz_441),(_zz_442 == _zz_443)};
  assign _zz_436 = 2'b00;
  assign _zz_437 = ({_zz_96,{_zz_444,_zz_445}} != 3'b000);
  assign _zz_438 = ({_zz_446,_zz_447} != 5'h0);
  assign _zz_439 = {(_zz_448 != _zz_449),{_zz_450,{_zz_451,_zz_452}}};
  assign _zz_440 = (decode_INSTRUCTION & 32'h00002010);
  assign _zz_441 = 32'h00002000;
  assign _zz_442 = (decode_INSTRUCTION & 32'h00005000);
  assign _zz_443 = 32'h00001000;
  assign _zz_444 = ((decode_INSTRUCTION & _zz_453) == 32'h00000020);
  assign _zz_445 = ((decode_INSTRUCTION & _zz_454) == 32'h00000020);
  assign _zz_446 = ((decode_INSTRUCTION & _zz_455) == 32'h00002040);
  assign _zz_447 = {(_zz_456 == _zz_457),{_zz_458,{_zz_459,_zz_460}}};
  assign _zz_448 = ((decode_INSTRUCTION & _zz_461) == 32'h00000020);
  assign _zz_449 = 1'b0;
  assign _zz_450 = ({_zz_462,_zz_463} != 2'b00);
  assign _zz_451 = ({_zz_464,_zz_465} != 3'b000);
  assign _zz_452 = {(_zz_466 != _zz_467),{_zz_468,{_zz_469,_zz_470}}};
  assign _zz_453 = 32'h00000034;
  assign _zz_454 = 32'h00000064;
  assign _zz_455 = 32'h00002040;
  assign _zz_456 = (decode_INSTRUCTION & 32'h00001040);
  assign _zz_457 = 32'h00001040;
  assign _zz_458 = ((decode_INSTRUCTION & _zz_471) == 32'h00000040);
  assign _zz_459 = (_zz_472 == _zz_473);
  assign _zz_460 = (_zz_474 == _zz_475);
  assign _zz_461 = 32'h00000020;
  assign _zz_462 = ((decode_INSTRUCTION & _zz_476) == 32'h00000008);
  assign _zz_463 = ((decode_INSTRUCTION & _zz_477) == 32'h00000010);
  assign _zz_464 = _zz_94;
  assign _zz_465 = {_zz_478,_zz_479};
  assign _zz_466 = {_zz_95,{_zz_480,_zz_481}};
  assign _zz_467 = 6'h0;
  assign _zz_468 = ({_zz_482,_zz_483} != 2'b00);
  assign _zz_469 = (_zz_484 != _zz_485);
  assign _zz_470 = {_zz_486,{_zz_487,_zz_488}};
  assign _zz_471 = 32'h00000050;
  assign _zz_472 = (decode_INSTRUCTION & 32'h00400040);
  assign _zz_473 = 32'h00000040;
  assign _zz_474 = (decode_INSTRUCTION & 32'h00000038);
  assign _zz_475 = 32'h0;
  assign _zz_476 = 32'h00000008;
  assign _zz_477 = 32'h00000010;
  assign _zz_478 = ((decode_INSTRUCTION & _zz_489) == 32'h00000010);
  assign _zz_479 = ((decode_INSTRUCTION & _zz_490) == 32'h00000020);
  assign _zz_480 = (_zz_491 == _zz_492);
  assign _zz_481 = {_zz_493,{_zz_494,_zz_495}};
  assign _zz_482 = _zz_94;
  assign _zz_483 = (_zz_496 == _zz_497);
  assign _zz_484 = {_zz_94,_zz_498};
  assign _zz_485 = 2'b00;
  assign _zz_486 = ({_zz_499,_zz_500} != 2'b00);
  assign _zz_487 = (_zz_501 != _zz_502);
  assign _zz_488 = {_zz_503,{_zz_504,_zz_505}};
  assign _zz_489 = 32'h00000030;
  assign _zz_490 = 32'h02000060;
  assign _zz_491 = (decode_INSTRUCTION & 32'h00001010);
  assign _zz_492 = 32'h00001010;
  assign _zz_493 = ((decode_INSTRUCTION & _zz_506) == 32'h00002010);
  assign _zz_494 = (_zz_507 == _zz_508);
  assign _zz_495 = {_zz_509,_zz_510};
  assign _zz_496 = (decode_INSTRUCTION & 32'h00000070);
  assign _zz_497 = 32'h00000020;
  assign _zz_498 = ((decode_INSTRUCTION & _zz_511) == 32'h0);
  assign _zz_499 = (_zz_512 == _zz_513);
  assign _zz_500 = (_zz_514 == _zz_515);
  assign _zz_501 = (_zz_516 == _zz_517);
  assign _zz_502 = 1'b0;
  assign _zz_503 = ({_zz_518,_zz_519} != 4'b0000);
  assign _zz_504 = (_zz_520 != _zz_521);
  assign _zz_505 = {_zz_522,{_zz_523,_zz_524}};
  assign _zz_506 = 32'h00002010;
  assign _zz_507 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz_508 = 32'h00000010;
  assign _zz_509 = ((decode_INSTRUCTION & _zz_525) == 32'h00000004);
  assign _zz_510 = ((decode_INSTRUCTION & _zz_526) == 32'h0);
  assign _zz_511 = 32'h00000020;
  assign _zz_512 = (decode_INSTRUCTION & 32'h00006014);
  assign _zz_513 = 32'h00006010;
  assign _zz_514 = (decode_INSTRUCTION & 32'h00005014);
  assign _zz_515 = 32'h00004010;
  assign _zz_516 = (decode_INSTRUCTION & 32'h00006014);
  assign _zz_517 = 32'h00002010;
  assign _zz_518 = (_zz_527 == _zz_528);
  assign _zz_519 = {_zz_529,{_zz_530,_zz_531}};
  assign _zz_520 = (_zz_532 == _zz_533);
  assign _zz_521 = 1'b0;
  assign _zz_522 = ({_zz_534,_zz_535} != 3'b000);
  assign _zz_523 = (_zz_536 != _zz_537);
  assign _zz_524 = {_zz_538,_zz_539};
  assign _zz_525 = 32'h0000000c;
  assign _zz_526 = 32'h00000024;
  assign _zz_527 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_528 = 32'h0;
  assign _zz_529 = ((decode_INSTRUCTION & 32'h00000018) == 32'h0);
  assign _zz_530 = ((decode_INSTRUCTION & _zz_540) == 32'h00002000);
  assign _zz_531 = ((decode_INSTRUCTION & _zz_541) == 32'h00001000);
  assign _zz_532 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz_533 = 32'h0;
  assign _zz_534 = ((decode_INSTRUCTION & _zz_542) == 32'h00000040);
  assign _zz_535 = {(_zz_543 == _zz_544),(_zz_545 == _zz_546)};
  assign _zz_536 = {(_zz_547 == _zz_548),_zz_93};
  assign _zz_537 = 2'b00;
  assign _zz_538 = ({_zz_549,_zz_93} != 2'b00);
  assign _zz_539 = ((_zz_550 == _zz_551) != 1'b0);
  assign _zz_540 = 32'h00006004;
  assign _zz_541 = 32'h00005004;
  assign _zz_542 = 32'h00000044;
  assign _zz_543 = (decode_INSTRUCTION & 32'h00002014);
  assign _zz_544 = 32'h00002010;
  assign _zz_545 = (decode_INSTRUCTION & 32'h40004034);
  assign _zz_546 = 32'h40000030;
  assign _zz_547 = (decode_INSTRUCTION & 32'h00000014);
  assign _zz_548 = 32'h00000004;
  assign _zz_549 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000004);
  assign _zz_550 = (decode_INSTRUCTION & 32'h00001054);
  assign _zz_551 = 32'h00001004;
  assign _zz_552 = execute_INSTRUCTION[31];
  assign _zz_553 = execute_INSTRUCTION[31];
  assign _zz_554 = execute_INSTRUCTION[7];
  assign _zz_555 = 32'h0;
  always @ (posedge clk) begin
    if(_zz_359) begin
      _zz_221 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @ (posedge clk) begin
    if(_zz_360) begin
      _zz_222 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  always @ (posedge clk) begin
    if(_zz_45) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (_zz_212                                                     ), //i
    .io_cpu_prefetch_isValid                  (_zz_213                                                     ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt               ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]       ), //i
    .io_cpu_fetch_isValid                     (_zz_214                                                     ), //i
    .io_cpu_fetch_isStuck                     (_zz_215                                                     ), //i
    .io_cpu_fetch_isRemoved                   (_zz_216                                                     ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
    .io_cpu_fetch_data                        (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]              ), //o
    .io_cpu_fetch_mmuRsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                      ), //i
    .io_cpu_fetch_mmuRsp_isPaging             (IBusCachedPlugin_mmuBus_rsp_isPaging                        ), //i
    .io_cpu_fetch_mmuRsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                       ), //i
    .io_cpu_fetch_mmuRsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                      ), //i
    .io_cpu_fetch_mmuRsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute                    ), //i
    .io_cpu_fetch_mmuRsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                       ), //i
    .io_cpu_fetch_mmuRsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                       ), //i
    .io_cpu_fetch_mmuRsp_bypassTranslation    (IBusCachedPlugin_mmuBus_rsp_bypassTranslation               ), //i
    .io_cpu_fetch_physicalAddress             (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //o
    .io_cpu_decode_isValid                    (_zz_217                                                     ), //i
    .io_cpu_decode_isStuck                    (_zz_218                                                     ), //i
    .io_cpu_decode_pc                         (IBusCachedPlugin_iBusRsp_stages_2_input_payload[31:0]       ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]             ), //o
    .io_cpu_decode_cacheMiss                  (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss              ), //o
    .io_cpu_decode_error                      (IBusCachedPlugin_cache_io_cpu_decode_error                  ), //o
    .io_cpu_decode_mmuRefilling               (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling           ), //o
    .io_cpu_decode_mmuException               (IBusCachedPlugin_cache_io_cpu_decode_mmuException           ), //o
    .io_cpu_decode_isUser                     (_zz_219                                                     ), //i
    .io_cpu_fill_valid                        (_zz_220                                                     ), //i
    .io_cpu_fill_payload                      (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //i
    .io_mem_cmd_valid                         (IBusCachedPlugin_cache_io_mem_cmd_valid                     ), //o
    .io_mem_cmd_ready                         (iBus_cmd_ready                                              ), //i
    .io_mem_cmd_payload_address               (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]     ), //o
    .io_mem_cmd_payload_size                  (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]         ), //o
    .io_mem_rsp_valid                         (iBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                  (iBus_rsp_payload_data[31:0]                                 ), //i
    .io_mem_rsp_payload_error                 (iBus_rsp_payload_error                                      ), //i
    .clk                                      (clk                                                         ), //i
    .reset                                    (reset                                                       )  //i
  );
  always @(*) begin
    case(_zz_361)
      2'b00 : begin
        _zz_223 = CsrPlugin_jumpInterface_payload;
      end
      2'b01 : begin
        _zz_223 = DBusSimplePlugin_redoBranch_payload;
      end
      2'b10 : begin
        _zz_223 = BranchPlugin_jumpInterface_payload;
      end
      default : begin
        _zz_223 = IBusCachedPlugin_predictionJumpInterface_payload;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(decode_CfuPlugin_CFU_INPUT_2_KIND)
      `Input2Kind_defaultEncoding_RS : decode_CfuPlugin_CFU_INPUT_2_KIND_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : decode_CfuPlugin_CFU_INPUT_2_KIND_string = "IMM_I";
      default : decode_CfuPlugin_CFU_INPUT_2_KIND_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_1)
      `Input2Kind_defaultEncoding_RS : _zz_1_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : _zz_1_string = "IMM_I";
      default : _zz_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_2)
      `Input2Kind_defaultEncoding_RS : _zz_2_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : _zz_2_string = "IMM_I";
      default : _zz_2_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_3)
      `Input2Kind_defaultEncoding_RS : _zz_3_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : _zz_3_string = "IMM_I";
      default : _zz_3_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_4)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_4_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_4_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_4_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_4_string = "ECALL";
      default : _zz_4_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_5)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_5_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_5_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_5_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_5_string = "ECALL";
      default : _zz_5_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_6)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_6_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_6_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_6_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_6_string = "ECALL";
      default : _zz_6_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_7)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_7_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_7_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_7_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_7_string = "ECALL";
      default : _zz_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : decode_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_ENV_CTRL_string = "ECALL";
      default : decode_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_8)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_8_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_8_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_8_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_8_string = "ECALL";
      default : _zz_8_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_9)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_9_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_9_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_9_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_9_string = "ECALL";
      default : _zz_9_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_10)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_10_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_10_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_10_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_10_string = "ECALL";
      default : _zz_10_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_11)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_11_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_11_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_11_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_11_string = "JALR";
      default : _zz_11_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_12)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_12_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_12_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_12_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_12_string = "JALR";
      default : _zz_12_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_13)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_13_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_13_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_13_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_13_string = "SRA_1    ";
      default : _zz_13_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_14)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_14_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_14_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_14_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_14_string = "SRA_1    ";
      default : _zz_14_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_15)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_15_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_15_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_15_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_15_string = "SRA_1    ";
      default : _zz_15_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_16)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_16_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_16_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_16_string = "AND_1";
      default : _zz_16_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_17)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_17_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_17_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_17_string = "AND_1";
      default : _zz_17_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_18)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_18_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_18_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_18_string = "AND_1";
      default : _zz_18_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_19)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_19_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_19_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_19_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_19_string = "PC ";
      default : _zz_19_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_20)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_20_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_20_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_20_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_20_string = "PC ";
      default : _zz_20_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_21)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_21_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_21_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_21_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_21_string = "PC ";
      default : _zz_21_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_22)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_22_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_22_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_22_string = "BITWISE ";
      default : _zz_22_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_23)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_23_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_23_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_23_string = "BITWISE ";
      default : _zz_23_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_24)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_24_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_24_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_24_string = "BITWISE ";
      default : _zz_24_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_25)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_25_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_25_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_25_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_25_string = "URS1        ";
      default : _zz_25_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_26)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_26_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_26_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_26_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_26_string = "URS1        ";
      default : _zz_26_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_27)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_27_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_27_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_27_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_27_string = "URS1        ";
      default : _zz_27_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_CfuPlugin_CFU_INPUT_2_KIND)
      `Input2Kind_defaultEncoding_RS : execute_CfuPlugin_CFU_INPUT_2_KIND_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : execute_CfuPlugin_CFU_INPUT_2_KIND_string = "IMM_I";
      default : execute_CfuPlugin_CFU_INPUT_2_KIND_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_30)
      `Input2Kind_defaultEncoding_RS : _zz_30_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : _zz_30_string = "IMM_I";
      default : _zz_30_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : memory_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_ENV_CTRL_string = "ECALL";
      default : memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_31)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_31_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_31_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_31_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_31_string = "ECALL";
      default : _zz_31_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : execute_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_ENV_CTRL_string = "ECALL";
      default : execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_32)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_32_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_32_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_32_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_32_string = "ECALL";
      default : _zz_32_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : writeBack_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : writeBack_ENV_CTRL_string = "ECALL";
      default : writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_33)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_33_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_33_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_33_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_33_string = "ECALL";
      default : _zz_33_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_34)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_34_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_34_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_34_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_34_string = "JALR";
      default : _zz_34_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_37)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_37_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_37_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_37_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_37_string = "SRA_1    ";
      default : _zz_37_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : execute_SRC2_CTRL_string = "PC ";
      default : execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_39)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_39_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_39_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_39_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_39_string = "PC ";
      default : _zz_39_string = "???";
    endcase
  end
  always @(*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : execute_SRC1_CTRL_string = "URS1        ";
      default : execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_40)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_40_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_40_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_40_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_40_string = "URS1        ";
      default : _zz_40_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_41)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_41_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_41_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_41_string = "BITWISE ";
      default : _zz_41_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_42)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_42_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_42_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_42_string = "AND_1";
      default : _zz_42_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_46)
      `Input2Kind_defaultEncoding_RS : _zz_46_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : _zz_46_string = "IMM_I";
      default : _zz_46_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_47)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_47_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_47_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_47_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_47_string = "ECALL";
      default : _zz_47_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_48)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_48_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_48_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_48_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_48_string = "JALR";
      default : _zz_48_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_49)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_49_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_49_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_49_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_49_string = "SRA_1    ";
      default : _zz_49_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_50)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_50_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_50_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_50_string = "AND_1";
      default : _zz_50_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_51)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_51_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_51_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_51_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_51_string = "PC ";
      default : _zz_51_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_52)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_52_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_52_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_52_string = "BITWISE ";
      default : _zz_52_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_53)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_53_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_53_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_53_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_53_string = "URS1        ";
      default : _zz_53_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_55)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_55_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_55_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_55_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_55_string = "JALR";
      default : _zz_55_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_100)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_100_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_100_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_100_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_100_string = "URS1        ";
      default : _zz_100_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_101)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_101_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_101_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_101_string = "BITWISE ";
      default : _zz_101_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_102)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_102_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_102_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_102_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_102_string = "PC ";
      default : _zz_102_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_103)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_103_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_103_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_103_string = "AND_1";
      default : _zz_103_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_104)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_104_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_104_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_104_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_104_string = "SRA_1    ";
      default : _zz_104_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_105)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_105_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_105_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_105_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_105_string = "JALR";
      default : _zz_105_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_106)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_106_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_106_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_106_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_106_string = "ECALL";
      default : _zz_106_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_107)
      `Input2Kind_defaultEncoding_RS : _zz_107_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : _zz_107_string = "IMM_I";
      default : _zz_107_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_to_execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_to_execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_to_execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_to_execute_SRC1_CTRL_string = "URS1        ";
      default : decode_to_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_to_execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_to_execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_to_execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_to_execute_SRC2_CTRL_string = "PC ";
      default : decode_to_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_to_execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_to_execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : decode_to_execute_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_to_execute_ENV_CTRL_string = "ECALL";
      default : decode_to_execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_to_memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_to_memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : execute_to_memory_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_to_memory_ENV_CTRL_string = "ECALL";
      default : execute_to_memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : memory_to_writeBack_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_to_writeBack_ENV_CTRL_string = "ECALL";
      default : memory_to_writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND)
      `Input2Kind_defaultEncoding_RS : decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND_string = "RS   ";
      `Input2Kind_defaultEncoding_IMM_I : decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND_string = "IMM_I";
      default : decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND_string = "?????";
    endcase
  end
  `endif

  assign memory_MEMORY_READ_DATA = dBus_rsp_data;
  assign writeBack_CfuPlugin_CFU_IN_FLIGHT = memory_to_writeBack_CfuPlugin_CFU_IN_FLIGHT;
  assign execute_CfuPlugin_CFU_IN_FLIGHT = ((execute_CfuPlugin_schedule || execute_CfuPlugin_hold) || execute_CfuPlugin_fired);
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign execute_REGFILE_WRITE_DATA = _zz_109;
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = dBus_cmd_payload_address[1 : 0];
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_PREDICTION_HAD_BRANCHED2 = IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign decode_IS_DIV = _zz_267[0];
  assign decode_IS_RS2_SIGNED = _zz_268[0];
  assign decode_IS_RS1_SIGNED = _zz_269[0];
  assign decode_IS_MUL = _zz_270[0];
  assign decode_CfuPlugin_CFU_INPUT_2_KIND = _zz_1;
  assign _zz_2 = _zz_3;
  assign decode_CfuPlugin_CFU_ENABLE = _zz_271[0];
  assign _zz_4 = _zz_5;
  assign _zz_6 = _zz_7;
  assign decode_ENV_CTRL = _zz_8;
  assign _zz_9 = _zz_10;
  assign decode_IS_CSR = _zz_272[0];
  assign _zz_11 = _zz_12;
  assign decode_SHIFT_CTRL = _zz_13;
  assign _zz_14 = _zz_15;
  assign decode_ALU_BITWISE_CTRL = _zz_16;
  assign _zz_17 = _zz_18;
  assign decode_SRC_LESS_UNSIGNED = _zz_273[0];
  assign decode_MEMORY_STORE = _zz_274[0];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_275[0];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_276[0];
  assign decode_SRC2_CTRL = _zz_19;
  assign _zz_20 = _zz_21;
  assign decode_ALU_CTRL = _zz_22;
  assign _zz_23 = _zz_24;
  assign decode_SRC1_CTRL = _zz_25;
  assign _zz_26 = _zz_27;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  always @ (*) begin
    _zz_28 = memory_CfuPlugin_CFU_IN_FLIGHT;
    if(memory_arbitration_isStuck)begin
      _zz_28 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_29 = execute_CfuPlugin_CFU_IN_FLIGHT;
    if(execute_arbitration_isStuck)begin
      _zz_29 = 1'b0;
    end
  end

  assign memory_CfuPlugin_CFU_IN_FLIGHT = execute_to_memory_CfuPlugin_CFU_IN_FLIGHT;
  assign execute_CfuPlugin_CFU_INPUT_2_KIND = _zz_30;
  assign execute_CfuPlugin_CFU_ENABLE = decode_to_execute_CfuPlugin_CFU_ENABLE;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_31;
  assign execute_ENV_CTRL = _zz_32;
  assign writeBack_ENV_CTRL = _zz_33;
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = ((execute_PREDICTION_HAD_BRANCHED2 != execute_BRANCH_COND_RESULT) || execute_BranchPlugin_missAlignedTarget);
  assign execute_PC = decode_to_execute_PC;
  assign execute_PREDICTION_HAD_BRANCHED2 = decode_to_execute_PREDICTION_HAD_BRANCHED2;
  assign execute_RS1 = decode_to_execute_RS1;
  assign execute_BRANCH_COND_RESULT = _zz_130;
  assign execute_BRANCH_CTRL = _zz_34;
  assign decode_RS2_USE = _zz_277[0];
  assign decode_RS1_USE = _zz_278[0];
  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  always @ (*) begin
    _zz_35 = memory_REGFILE_WRITE_DATA;
    if(memory_CfuPlugin_CFU_IN_FLIGHT)begin
      _zz_35 = memory_CfuPlugin_rsp_payload_outputs_0;
    end
    if(_zz_224)begin
      _zz_35 = ((memory_INSTRUCTION[13 : 12] == 2'b00) ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_accumulator[63 : 32]);
    end
    if(_zz_225)begin
      _zz_35 = memory_MulDivIterativePlugin_div_result;
    end
  end

  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(_zz_119)begin
      if((_zz_120 == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_121;
      end
    end
    if(_zz_226)begin
      if(_zz_227)begin
        if(_zz_123)begin
          decode_RS2 = _zz_54;
        end
      end
    end
    if(_zz_228)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_125)begin
          decode_RS2 = _zz_35;
        end
      end
    end
    if(_zz_229)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_127)begin
          decode_RS2 = _zz_36;
        end
      end
    end
  end

  always @ (*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(_zz_119)begin
      if((_zz_120 == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_121;
      end
    end
    if(_zz_226)begin
      if(_zz_227)begin
        if(_zz_122)begin
          decode_RS1 = _zz_54;
        end
      end
    end
    if(_zz_228)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_124)begin
          decode_RS1 = _zz_35;
        end
      end
    end
    if(_zz_229)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_126)begin
          decode_RS1 = _zz_36;
        end
      end
    end
  end

  always @ (*) begin
    _zz_36 = execute_REGFILE_WRITE_DATA;
    if(_zz_230)begin
      _zz_36 = _zz_116;
    end
    if(_zz_231)begin
      _zz_36 = execute_CsrPlugin_readData;
    end
  end

  assign execute_SHIFT_CTRL = _zz_37;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_38 = execute_PC;
  assign execute_SRC2_CTRL = _zz_39;
  assign execute_SRC1_CTRL = _zz_40;
  assign decode_SRC_USE_SUB_LESS = _zz_279[0];
  assign decode_SRC_ADD_ZERO = _zz_280[0];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_41;
  assign execute_SRC2 = _zz_115;
  assign execute_SRC1 = _zz_110;
  assign execute_ALU_BITWISE_CTRL = _zz_42;
  assign _zz_43 = writeBack_INSTRUCTION;
  assign _zz_44 = writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_45 = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_45 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusCachedPlugin_cache_io_cpu_fetch_data);
  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_281[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000000b),{((decode_INSTRUCTION & _zz_362) == 32'h00000003),{(_zz_363 == _zz_364),{_zz_365,{_zz_366,_zz_367}}}}}}} != 21'h0);
  assign writeBack_MEMORY_STORE = memory_to_writeBack_MEMORY_STORE;
  always @ (*) begin
    _zz_54 = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      _zz_54 = writeBack_DBusSimplePlugin_rspFormated;
    end
  end

  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_READ_DATA = memory_to_writeBack_MEMORY_READ_DATA;
  assign memory_MMU_FAULT = execute_to_memory_MMU_FAULT;
  assign memory_MMU_RSP2_physicalAddress = execute_to_memory_MMU_RSP2_physicalAddress;
  assign memory_MMU_RSP2_isIoAccess = execute_to_memory_MMU_RSP2_isIoAccess;
  assign memory_MMU_RSP2_isPaging = execute_to_memory_MMU_RSP2_isPaging;
  assign memory_MMU_RSP2_allowRead = execute_to_memory_MMU_RSP2_allowRead;
  assign memory_MMU_RSP2_allowWrite = execute_to_memory_MMU_RSP2_allowWrite;
  assign memory_MMU_RSP2_allowExecute = execute_to_memory_MMU_RSP2_allowExecute;
  assign memory_MMU_RSP2_exception = execute_to_memory_MMU_RSP2_exception;
  assign memory_MMU_RSP2_refilling = execute_to_memory_MMU_RSP2_refilling;
  assign memory_MMU_RSP2_bypassTranslation = execute_to_memory_MMU_RSP2_bypassTranslation;
  assign memory_PC = execute_to_memory_PC;
  assign memory_ALIGNEMENT_FAULT = execute_to_memory_ALIGNEMENT_FAULT;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_STORE = execute_to_memory_MEMORY_STORE;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_MMU_FAULT = ((execute_MMU_RSP2_exception || ((! execute_MMU_RSP2_allowWrite) && execute_MEMORY_STORE)) || ((! execute_MMU_RSP2_allowRead) && (! execute_MEMORY_STORE)));
  assign execute_MMU_RSP2_physicalAddress = DBusSimplePlugin_mmuBus_rsp_physicalAddress;
  assign execute_MMU_RSP2_isIoAccess = DBusSimplePlugin_mmuBus_rsp_isIoAccess;
  assign execute_MMU_RSP2_isPaging = DBusSimplePlugin_mmuBus_rsp_isPaging;
  assign execute_MMU_RSP2_allowRead = DBusSimplePlugin_mmuBus_rsp_allowRead;
  assign execute_MMU_RSP2_allowWrite = DBusSimplePlugin_mmuBus_rsp_allowWrite;
  assign execute_MMU_RSP2_allowExecute = DBusSimplePlugin_mmuBus_rsp_allowExecute;
  assign execute_MMU_RSP2_exception = DBusSimplePlugin_mmuBus_rsp_exception;
  assign execute_MMU_RSP2_refilling = DBusSimplePlugin_mmuBus_rsp_refilling;
  assign execute_MMU_RSP2_bypassTranslation = DBusSimplePlugin_mmuBus_rsp_bypassTranslation;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign execute_MEMORY_STORE = decode_to_execute_MEMORY_STORE;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_ALIGNEMENT_FAULT = (((dBus_cmd_payload_size == 2'b10) && (dBus_cmd_payload_address[1 : 0] != 2'b00)) || ((dBus_cmd_payload_size == 2'b01) && (dBus_cmd_payload_address[0 : 0] != 1'b0)));
  assign decode_MEMORY_ENABLE = _zz_282[0];
  assign decode_FLUSH_ALL = _zz_283[0];
  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_4 = IBusCachedPlugin_rsp_issueDetected_3;
    if(_zz_232)begin
      IBusCachedPlugin_rsp_issueDetected_4 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_3 = IBusCachedPlugin_rsp_issueDetected_2;
    if(_zz_233)begin
      IBusCachedPlugin_rsp_issueDetected_3 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_2 = IBusCachedPlugin_rsp_issueDetected_1;
    if(_zz_234)begin
      IBusCachedPlugin_rsp_issueDetected_2 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_1 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_235)begin
      IBusCachedPlugin_rsp_issueDetected_1 = 1'b1;
    end
  end

  assign decode_BRANCH_CTRL = _zz_55;
  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  always @ (*) begin
    _zz_56 = execute_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_56 = BranchPlugin_jumpInterface_payload;
    end
  end

  always @ (*) begin
    _zz_57 = memory_FORMAL_PC_NEXT;
    if(DBusSimplePlugin_redoBranch_valid)begin
      _zz_57 = DBusSimplePlugin_redoBranch_payload;
    end
  end

  always @ (*) begin
    _zz_58 = decode_FORMAL_PC_NEXT;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      _zz_58 = IBusCachedPlugin_predictionJumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_iBusRsp_output_payload_pc;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @ (*) begin
    decode_arbitration_haltItself = 1'b0;
    if(((DBusSimplePlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE))begin
      decode_arbitration_haltItself = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if((decode_arbitration_isValid && (_zz_117 || _zz_118)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(({(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET))}} != 3'b000))begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_236)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      decode_arbitration_flushNext = 1'b1;
    end
    if(_zz_236)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if(((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! dBus_cmd_ready)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_85)))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_230)begin
      if((! execute_LightShifterPlugin_done))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_237)begin
      if((! execute_CsrPlugin_wfiWake))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_231)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if((CfuPlugin_bus_cmd_valid && (! CfuPlugin_bus_cmd_ready)))begin
      execute_arbitration_haltItself = 1'b1;
    end
  end

  assign execute_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(_zz_238)begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  assign execute_arbitration_flushIt = 1'b0;
  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(BranchPlugin_jumpInterface_valid)begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(_zz_238)begin
      execute_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if((((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (! memory_MEMORY_STORE)) && ((! dBus_rsp_ready) || 1'b0)))begin
      memory_arbitration_haltItself = 1'b1;
    end
    if(memory_CfuPlugin_CFU_IN_FLIGHT)begin
      if((! memory_CfuPlugin_rsp_valid))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_224)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc)))begin
        memory_arbitration_haltItself = 1'b1;
      end
      if(_zz_239)begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_225)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_div_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(_zz_240)begin
      memory_arbitration_removeIt = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    memory_arbitration_flushIt = 1'b0;
    if(DBusSimplePlugin_redoBranch_valid)begin
      memory_arbitration_flushIt = 1'b1;
    end
  end

  always @ (*) begin
    memory_arbitration_flushNext = 1'b0;
    if(DBusSimplePlugin_redoBranch_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(_zz_240)begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  assign writeBack_arbitration_haltItself = 1'b0;
  assign writeBack_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  assign writeBack_arbitration_flushIt = 1'b0;
  always @ (*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(_zz_241)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_242)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @ (*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}} != 4'b0000))begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_241)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_242)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if((IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_iBusRsp_stages_2_input_valid))begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_inWfi = 1'b0;
    if(_zz_237)begin
      CsrPlugin_inWfi = 1'b1;
    end
  end

  assign CsrPlugin_thirdPartyWake = 1'b0;
  always @ (*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(_zz_241)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_242)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_241)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(_zz_242)begin
      case(_zz_243)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        default : begin
        end
      endcase
    end
  end

  assign CsrPlugin_forceMachineWire = 1'b0;
  assign CsrPlugin_allowInterrupts = 1'b1;
  assign CsrPlugin_allowException = 1'b1;
  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({CsrPlugin_jumpInterface_valid,{BranchPlugin_jumpInterface_valid,{DBusSimplePlugin_redoBranch_valid,IBusCachedPlugin_predictionJumpInterface_valid}}} != 4'b0000);
  assign _zz_59 = {IBusCachedPlugin_predictionJumpInterface_valid,{BranchPlugin_jumpInterface_valid,{DBusSimplePlugin_redoBranch_valid,CsrPlugin_jumpInterface_valid}}};
  assign _zz_60 = (_zz_59 & (~ _zz_284));
  assign _zz_61 = _zz_60[3];
  assign _zz_62 = (_zz_60[1] || _zz_61);
  assign _zz_63 = (_zz_60[2] || _zz_61);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_223;
  always @ (*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  always @ (*) begin
    IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_286);
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
    IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch)begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_64 = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_64);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_64);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_mmuBus_busy)begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_65 = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_65);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_65);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
    if((IBusCachedPlugin_rsp_issueDetected_4 || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b1;
    end
  end

  assign _zz_66 = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_66);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_66);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_67;
  assign _zz_67 = ((1'b0 && (! _zz_68)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_68 = _zz_69;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_68;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_70)) || IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_70 = _zz_71;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = _zz_70;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = _zz_72;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  assign decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
  assign _zz_73 = _zz_287[11];
  always @ (*) begin
    _zz_74[18] = _zz_73;
    _zz_74[17] = _zz_73;
    _zz_74[16] = _zz_73;
    _zz_74[15] = _zz_73;
    _zz_74[14] = _zz_73;
    _zz_74[13] = _zz_73;
    _zz_74[12] = _zz_73;
    _zz_74[11] = _zz_73;
    _zz_74[10] = _zz_73;
    _zz_74[9] = _zz_73;
    _zz_74[8] = _zz_73;
    _zz_74[7] = _zz_73;
    _zz_74[6] = _zz_73;
    _zz_74[5] = _zz_73;
    _zz_74[4] = _zz_73;
    _zz_74[3] = _zz_73;
    _zz_74[2] = _zz_73;
    _zz_74[1] = _zz_73;
    _zz_74[0] = _zz_73;
  end

  always @ (*) begin
    IBusCachedPlugin_decodePrediction_cmd_hadBranch = ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) || ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_B) && _zz_288[31]));
    if(_zz_79)begin
      IBusCachedPlugin_decodePrediction_cmd_hadBranch = 1'b0;
    end
  end

  assign _zz_75 = _zz_289[19];
  always @ (*) begin
    _zz_76[10] = _zz_75;
    _zz_76[9] = _zz_75;
    _zz_76[8] = _zz_75;
    _zz_76[7] = _zz_75;
    _zz_76[6] = _zz_75;
    _zz_76[5] = _zz_75;
    _zz_76[4] = _zz_75;
    _zz_76[3] = _zz_75;
    _zz_76[2] = _zz_75;
    _zz_76[1] = _zz_75;
    _zz_76[0] = _zz_75;
  end

  assign _zz_77 = _zz_290[11];
  always @ (*) begin
    _zz_78[18] = _zz_77;
    _zz_78[17] = _zz_77;
    _zz_78[16] = _zz_77;
    _zz_78[15] = _zz_77;
    _zz_78[14] = _zz_77;
    _zz_78[13] = _zz_77;
    _zz_78[12] = _zz_77;
    _zz_78[11] = _zz_77;
    _zz_78[10] = _zz_77;
    _zz_78[9] = _zz_77;
    _zz_78[8] = _zz_77;
    _zz_78[7] = _zz_77;
    _zz_78[6] = _zz_77;
    _zz_78[5] = _zz_77;
    _zz_78[4] = _zz_77;
    _zz_78[3] = _zz_77;
    _zz_78[2] = _zz_77;
    _zz_78[1] = _zz_77;
    _zz_78[0] = _zz_77;
  end

  always @ (*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_79 = _zz_291[1];
      end
      default : begin
        _zz_79 = _zz_292[1];
      end
    endcase
  end

  assign IBusCachedPlugin_predictionJumpInterface_valid = (decode_arbitration_isValid && IBusCachedPlugin_decodePrediction_cmd_hadBranch);
  assign _zz_80 = _zz_293[19];
  always @ (*) begin
    _zz_81[10] = _zz_80;
    _zz_81[9] = _zz_80;
    _zz_81[8] = _zz_80;
    _zz_81[7] = _zz_80;
    _zz_81[6] = _zz_80;
    _zz_81[5] = _zz_80;
    _zz_81[4] = _zz_80;
    _zz_81[3] = _zz_80;
    _zz_81[2] = _zz_80;
    _zz_81[1] = _zz_80;
    _zz_81[0] = _zz_80;
  end

  assign _zz_82 = _zz_294[11];
  always @ (*) begin
    _zz_83[18] = _zz_82;
    _zz_83[17] = _zz_82;
    _zz_83[16] = _zz_82;
    _zz_83[15] = _zz_82;
    _zz_83[14] = _zz_82;
    _zz_83[13] = _zz_82;
    _zz_83[12] = _zz_82;
    _zz_83[11] = _zz_82;
    _zz_83[10] = _zz_82;
    _zz_83[9] = _zz_82;
    _zz_83[8] = _zz_82;
    _zz_83[7] = _zz_82;
    _zz_83[6] = _zz_82;
    _zz_83[5] = _zz_82;
    _zz_83[4] = _zz_82;
    _zz_83[3] = _zz_82;
    _zz_83[2] = _zz_82;
    _zz_83[1] = _zz_82;
    _zz_83[0] = _zz_82;
  end

  assign IBusCachedPlugin_predictionJumpInterface_payload = (decode_PC + ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_81,{{{_zz_380,decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_83,{{{_zz_381,_zz_382},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0}));
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_213 = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign _zz_214 = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_215 = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_214;
  assign IBusCachedPlugin_mmuBus_cmd_0_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_virtualAddress = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign IBusCachedPlugin_mmuBus_end = (IBusCachedPlugin_iBusRsp_stages_1_input_ready || IBusCachedPlugin_externalFlush);
  assign _zz_217 = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign _zz_218 = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_219 = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_235)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_233)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @ (*) begin
    _zz_220 = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(_zz_233)begin
      _zz_220 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_234)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_232)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(_zz_234)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(_zz_232)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_2_input_payload[31 : 2],2'b00};
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  assign _zz_212 = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign _zz_85 = 1'b0;
  always @ (*) begin
    execute_DBusSimplePlugin_skipCmd = 1'b0;
    if(execute_ALIGNEMENT_FAULT)begin
      execute_DBusSimplePlugin_skipCmd = 1'b1;
    end
    if((execute_MMU_FAULT || execute_MMU_RSP2_refilling))begin
      execute_DBusSimplePlugin_skipCmd = 1'b1;
    end
  end

  assign dBus_cmd_valid = (((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! execute_arbitration_isStuckByOthers)) && (! execute_arbitration_isFlushed)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_85));
  assign dBus_cmd_payload_wr = execute_MEMORY_STORE;
  assign dBus_cmd_payload_size = execute_INSTRUCTION[13 : 12];
  always @ (*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_86 = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_86 = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_86 = execute_RS2[31 : 0];
      end
    endcase
  end

  assign dBus_cmd_payload_data = _zz_86;
  always @ (*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_87 = 4'b0001;
      end
      2'b01 : begin
        _zz_87 = 4'b0011;
      end
      default : begin
        _zz_87 = 4'b1111;
      end
    endcase
  end

  assign execute_DBusSimplePlugin_formalMask = (_zz_87 <<< dBus_cmd_payload_address[1 : 0]);
  assign DBusSimplePlugin_mmuBus_cmd_0_isValid = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
  assign DBusSimplePlugin_mmuBus_cmd_0_isStuck = execute_arbitration_isStuck;
  assign DBusSimplePlugin_mmuBus_cmd_0_virtualAddress = execute_SRC_ADD;
  assign DBusSimplePlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign DBusSimplePlugin_mmuBus_end = ((! execute_arbitration_isStuck) || execute_arbitration_removeIt);
  assign dBus_cmd_payload_address = DBusSimplePlugin_mmuBus_rsp_physicalAddress;
  always @ (*) begin
    DBusSimplePlugin_memoryExceptionPort_valid = 1'b0;
    if(_zz_244)begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b1;
    end
    if(memory_ALIGNEMENT_FAULT)begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b1;
    end
    if(memory_MMU_RSP2_refilling)begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b0;
    end else begin
      if(memory_MMU_FAULT)begin
        DBusSimplePlugin_memoryExceptionPort_valid = 1'b1;
      end
    end
    if(_zz_245)begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b0;
    end
  end

  always @ (*) begin
    DBusSimplePlugin_memoryExceptionPort_payload_code = 4'bxxxx;
    if(_zz_244)begin
      DBusSimplePlugin_memoryExceptionPort_payload_code = 4'b0101;
    end
    if(memory_ALIGNEMENT_FAULT)begin
      DBusSimplePlugin_memoryExceptionPort_payload_code = {1'd0, _zz_295};
    end
    if(! memory_MMU_RSP2_refilling) begin
      if(memory_MMU_FAULT)begin
        DBusSimplePlugin_memoryExceptionPort_payload_code = (memory_MEMORY_STORE ? 4'b1111 : 4'b1101);
      end
    end
  end

  assign DBusSimplePlugin_memoryExceptionPort_payload_badAddr = memory_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusSimplePlugin_redoBranch_valid = 1'b0;
    if(memory_MMU_RSP2_refilling)begin
      DBusSimplePlugin_redoBranch_valid = 1'b1;
    end
    if(_zz_245)begin
      DBusSimplePlugin_redoBranch_valid = 1'b0;
    end
  end

  assign DBusSimplePlugin_redoBranch_payload = memory_PC;
  always @ (*) begin
    writeBack_DBusSimplePlugin_rspShifted = writeBack_MEMORY_READ_DATA;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusSimplePlugin_rspShifted[7 : 0] = writeBack_MEMORY_READ_DATA[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusSimplePlugin_rspShifted[15 : 0] = writeBack_MEMORY_READ_DATA[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusSimplePlugin_rspShifted[7 : 0] = writeBack_MEMORY_READ_DATA[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign _zz_88 = (writeBack_DBusSimplePlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_89[31] = _zz_88;
    _zz_89[30] = _zz_88;
    _zz_89[29] = _zz_88;
    _zz_89[28] = _zz_88;
    _zz_89[27] = _zz_88;
    _zz_89[26] = _zz_88;
    _zz_89[25] = _zz_88;
    _zz_89[24] = _zz_88;
    _zz_89[23] = _zz_88;
    _zz_89[22] = _zz_88;
    _zz_89[21] = _zz_88;
    _zz_89[20] = _zz_88;
    _zz_89[19] = _zz_88;
    _zz_89[18] = _zz_88;
    _zz_89[17] = _zz_88;
    _zz_89[16] = _zz_88;
    _zz_89[15] = _zz_88;
    _zz_89[14] = _zz_88;
    _zz_89[13] = _zz_88;
    _zz_89[12] = _zz_88;
    _zz_89[11] = _zz_88;
    _zz_89[10] = _zz_88;
    _zz_89[9] = _zz_88;
    _zz_89[8] = _zz_88;
    _zz_89[7 : 0] = writeBack_DBusSimplePlugin_rspShifted[7 : 0];
  end

  assign _zz_90 = (writeBack_DBusSimplePlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_91[31] = _zz_90;
    _zz_91[30] = _zz_90;
    _zz_91[29] = _zz_90;
    _zz_91[28] = _zz_90;
    _zz_91[27] = _zz_90;
    _zz_91[26] = _zz_90;
    _zz_91[25] = _zz_90;
    _zz_91[24] = _zz_90;
    _zz_91[23] = _zz_90;
    _zz_91[22] = _zz_90;
    _zz_91[21] = _zz_90;
    _zz_91[20] = _zz_90;
    _zz_91[19] = _zz_90;
    _zz_91[18] = _zz_90;
    _zz_91[17] = _zz_90;
    _zz_91[16] = _zz_90;
    _zz_91[15 : 0] = writeBack_DBusSimplePlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_265)
      2'b00 : begin
        writeBack_DBusSimplePlugin_rspFormated = _zz_89;
      end
      2'b01 : begin
        writeBack_DBusSimplePlugin_rspFormated = _zz_91;
      end
      default : begin
        writeBack_DBusSimplePlugin_rspFormated = writeBack_DBusSimplePlugin_rspShifted;
      end
    endcase
  end

  assign IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  assign IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = IBusCachedPlugin_mmuBus_rsp_physicalAddress[31];
  assign IBusCachedPlugin_mmuBus_rsp_isPaging = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign IBusCachedPlugin_mmuBus_busy = 1'b0;
  assign DBusSimplePlugin_mmuBus_rsp_physicalAddress = DBusSimplePlugin_mmuBus_cmd_0_virtualAddress;
  assign DBusSimplePlugin_mmuBus_rsp_allowRead = 1'b1;
  assign DBusSimplePlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign DBusSimplePlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign DBusSimplePlugin_mmuBus_rsp_isIoAccess = DBusSimplePlugin_mmuBus_rsp_physicalAddress[31];
  assign DBusSimplePlugin_mmuBus_rsp_isPaging = 1'b0;
  assign DBusSimplePlugin_mmuBus_rsp_exception = 1'b0;
  assign DBusSimplePlugin_mmuBus_rsp_refilling = 1'b0;
  assign DBusSimplePlugin_mmuBus_busy = 1'b0;
  assign _zz_93 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_94 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_95 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_96 = ((decode_INSTRUCTION & 32'h0000000c) == 32'h00000008);
  assign _zz_97 = ((decode_INSTRUCTION & 32'h00003000) == 32'h00002000);
  assign _zz_98 = ((decode_INSTRUCTION & 32'h00007000) == 32'h00001000);
  assign _zz_99 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00004000);
  assign _zz_92 = {(((decode_INSTRUCTION & _zz_383) == 32'h02004020) != 1'b0),{({_zz_99,_zz_98} != 2'b00),{({_zz_384,_zz_385} != 3'b000),{(_zz_386 != _zz_387),{_zz_388,{_zz_389,_zz_390}}}}}};
  assign _zz_100 = _zz_92[2 : 1];
  assign _zz_53 = _zz_100;
  assign _zz_101 = _zz_92[7 : 6];
  assign _zz_52 = _zz_101;
  assign _zz_102 = _zz_92[9 : 8];
  assign _zz_51 = _zz_102;
  assign _zz_103 = _zz_92[18 : 17];
  assign _zz_50 = _zz_103;
  assign _zz_104 = _zz_92[21 : 20];
  assign _zz_49 = _zz_104;
  assign _zz_105 = _zz_92[23 : 22];
  assign _zz_48 = _zz_105;
  assign _zz_106 = _zz_92[26 : 25];
  assign _zz_47 = _zz_106;
  assign _zz_107 = _zz_92[28 : 28];
  assign _zz_46 = _zz_107;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_221;
  assign decode_RegFilePlugin_rs2Data = _zz_222;
  always @ (*) begin
    lastStageRegFileWrite_valid = (_zz_44 && writeBack_arbitration_isFiring);
    if(_zz_108)begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  always @ (*) begin
    lastStageRegFileWrite_payload_address = _zz_43[11 : 7];
    if(_zz_108)begin
      lastStageRegFileWrite_payload_address = 5'h0;
    end
  end

  always @ (*) begin
    lastStageRegFileWrite_payload_data = _zz_54;
    if(_zz_108)begin
      lastStageRegFileWrite_payload_data = 32'h0;
    end
  end

  always @ (*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @ (*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_BITWISE : begin
        _zz_109 = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_109 = {31'd0, _zz_296};
      end
      default : begin
        _zz_109 = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @ (*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_110 = execute_RS1;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_110 = {29'd0, _zz_297};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_110 = {execute_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_110 = {27'd0, _zz_298};
      end
    endcase
  end

  assign _zz_111 = _zz_299[11];
  always @ (*) begin
    _zz_112[19] = _zz_111;
    _zz_112[18] = _zz_111;
    _zz_112[17] = _zz_111;
    _zz_112[16] = _zz_111;
    _zz_112[15] = _zz_111;
    _zz_112[14] = _zz_111;
    _zz_112[13] = _zz_111;
    _zz_112[12] = _zz_111;
    _zz_112[11] = _zz_111;
    _zz_112[10] = _zz_111;
    _zz_112[9] = _zz_111;
    _zz_112[8] = _zz_111;
    _zz_112[7] = _zz_111;
    _zz_112[6] = _zz_111;
    _zz_112[5] = _zz_111;
    _zz_112[4] = _zz_111;
    _zz_112[3] = _zz_111;
    _zz_112[2] = _zz_111;
    _zz_112[1] = _zz_111;
    _zz_112[0] = _zz_111;
  end

  assign _zz_113 = _zz_300[11];
  always @ (*) begin
    _zz_114[19] = _zz_113;
    _zz_114[18] = _zz_113;
    _zz_114[17] = _zz_113;
    _zz_114[16] = _zz_113;
    _zz_114[15] = _zz_113;
    _zz_114[14] = _zz_113;
    _zz_114[13] = _zz_113;
    _zz_114[12] = _zz_113;
    _zz_114[11] = _zz_113;
    _zz_114[10] = _zz_113;
    _zz_114[9] = _zz_113;
    _zz_114[8] = _zz_113;
    _zz_114[7] = _zz_113;
    _zz_114[6] = _zz_113;
    _zz_114[5] = _zz_113;
    _zz_114[4] = _zz_113;
    _zz_114[3] = _zz_113;
    _zz_114[2] = _zz_113;
    _zz_114[1] = _zz_113;
    _zz_114[0] = _zz_113;
  end

  always @ (*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_115 = execute_RS2;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_115 = {_zz_112,execute_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_115 = {_zz_114,{execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_115 = _zz_38;
      end
    endcase
  end

  always @ (*) begin
    execute_SrcPlugin_addSub = _zz_301;
    if(execute_SRC2_FORCE_ZERO)begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_LightShifterPlugin_isShift = (execute_SHIFT_CTRL != `ShiftCtrlEnum_defaultEncoding_DISABLE_1);
  assign execute_LightShifterPlugin_amplitude = (execute_LightShifterPlugin_isActive ? execute_LightShifterPlugin_amplitudeReg : execute_SRC2[4 : 0]);
  assign execute_LightShifterPlugin_shiftInput = (execute_LightShifterPlugin_isActive ? memory_REGFILE_WRITE_DATA : execute_SRC1);
  assign execute_LightShifterPlugin_done = (execute_LightShifterPlugin_amplitude[4 : 1] == 4'b0000);
  always @ (*) begin
    case(execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
        _zz_116 = (execute_LightShifterPlugin_shiftInput <<< 1);
      end
      default : begin
        _zz_116 = _zz_308;
      end
    endcase
  end

  always @ (*) begin
    _zz_117 = 1'b0;
    if(_zz_246)begin
      if(_zz_247)begin
        if(_zz_122)begin
          _zz_117 = 1'b1;
        end
      end
    end
    if(_zz_248)begin
      if(_zz_249)begin
        if(_zz_124)begin
          _zz_117 = 1'b1;
        end
      end
    end
    if(_zz_250)begin
      if(_zz_251)begin
        if(_zz_126)begin
          _zz_117 = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_117 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_118 = 1'b0;
    if(_zz_246)begin
      if(_zz_247)begin
        if(_zz_123)begin
          _zz_118 = 1'b1;
        end
      end
    end
    if(_zz_248)begin
      if(_zz_249)begin
        if(_zz_125)begin
          _zz_118 = 1'b1;
        end
      end
    end
    if(_zz_250)begin
      if(_zz_251)begin
        if(_zz_127)begin
          _zz_118 = 1'b1;
        end
      end
    end
    if((! decode_RS2_USE))begin
      _zz_118 = 1'b0;
    end
  end

  assign _zz_122 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_123 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_124 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_125 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_126 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_127 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign _zz_128 = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_128 == 3'b000)) begin
        _zz_129 = execute_BranchPlugin_eq;
    end else if((_zz_128 == 3'b001)) begin
        _zz_129 = (! execute_BranchPlugin_eq);
    end else if((((_zz_128 & 3'b101) == 3'b101))) begin
        _zz_129 = (! execute_SRC_LESS);
    end else begin
        _zz_129 = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_130 = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_130 = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_130 = 1'b1;
      end
      default : begin
        _zz_130 = _zz_129;
      end
    endcase
  end

  assign _zz_131 = _zz_310[11];
  always @ (*) begin
    _zz_132[19] = _zz_131;
    _zz_132[18] = _zz_131;
    _zz_132[17] = _zz_131;
    _zz_132[16] = _zz_131;
    _zz_132[15] = _zz_131;
    _zz_132[14] = _zz_131;
    _zz_132[13] = _zz_131;
    _zz_132[12] = _zz_131;
    _zz_132[11] = _zz_131;
    _zz_132[10] = _zz_131;
    _zz_132[9] = _zz_131;
    _zz_132[8] = _zz_131;
    _zz_132[7] = _zz_131;
    _zz_132[6] = _zz_131;
    _zz_132[5] = _zz_131;
    _zz_132[4] = _zz_131;
    _zz_132[3] = _zz_131;
    _zz_132[2] = _zz_131;
    _zz_132[1] = _zz_131;
    _zz_132[0] = _zz_131;
  end

  assign _zz_133 = _zz_311[19];
  always @ (*) begin
    _zz_134[10] = _zz_133;
    _zz_134[9] = _zz_133;
    _zz_134[8] = _zz_133;
    _zz_134[7] = _zz_133;
    _zz_134[6] = _zz_133;
    _zz_134[5] = _zz_133;
    _zz_134[4] = _zz_133;
    _zz_134[3] = _zz_133;
    _zz_134[2] = _zz_133;
    _zz_134[1] = _zz_133;
    _zz_134[0] = _zz_133;
  end

  assign _zz_135 = _zz_312[11];
  always @ (*) begin
    _zz_136[18] = _zz_135;
    _zz_136[17] = _zz_135;
    _zz_136[16] = _zz_135;
    _zz_136[15] = _zz_135;
    _zz_136[14] = _zz_135;
    _zz_136[13] = _zz_135;
    _zz_136[12] = _zz_135;
    _zz_136[11] = _zz_135;
    _zz_136[10] = _zz_135;
    _zz_136[9] = _zz_135;
    _zz_136[8] = _zz_135;
    _zz_136[7] = _zz_135;
    _zz_136[6] = _zz_135;
    _zz_136[5] = _zz_135;
    _zz_136[4] = _zz_135;
    _zz_136[3] = _zz_135;
    _zz_136[2] = _zz_135;
    _zz_136[1] = _zz_135;
    _zz_136[0] = _zz_135;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_137 = (_zz_313[1] ^ execute_RS1[1]);
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_137 = _zz_314[1];
      end
      default : begin
        _zz_137 = _zz_315[1];
      end
    endcase
  end

  assign execute_BranchPlugin_missAlignedTarget = (execute_BRANCH_COND_RESULT && _zz_137);
  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src1 = execute_RS1;
      end
      default : begin
        execute_BranchPlugin_branch_src1 = execute_PC;
      end
    endcase
  end

  assign _zz_138 = _zz_316[11];
  always @ (*) begin
    _zz_139[19] = _zz_138;
    _zz_139[18] = _zz_138;
    _zz_139[17] = _zz_138;
    _zz_139[16] = _zz_138;
    _zz_139[15] = _zz_138;
    _zz_139[14] = _zz_138;
    _zz_139[13] = _zz_138;
    _zz_139[12] = _zz_138;
    _zz_139[11] = _zz_138;
    _zz_139[10] = _zz_138;
    _zz_139[9] = _zz_138;
    _zz_139[8] = _zz_138;
    _zz_139[7] = _zz_138;
    _zz_139[6] = _zz_138;
    _zz_139[5] = _zz_138;
    _zz_139[4] = _zz_138;
    _zz_139[3] = _zz_138;
    _zz_139[2] = _zz_138;
    _zz_139[1] = _zz_138;
    _zz_139[0] = _zz_138;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src2 = {_zz_139,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        execute_BranchPlugin_branch_src2 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_141,{{{_zz_552,execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_143,{{{_zz_553,_zz_554},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0});
        if(execute_PREDICTION_HAD_BRANCHED2)begin
          execute_BranchPlugin_branch_src2 = {29'd0, _zz_319};
        end
      end
    endcase
  end

  assign _zz_140 = _zz_317[19];
  always @ (*) begin
    _zz_141[10] = _zz_140;
    _zz_141[9] = _zz_140;
    _zz_141[8] = _zz_140;
    _zz_141[7] = _zz_140;
    _zz_141[6] = _zz_140;
    _zz_141[5] = _zz_140;
    _zz_141[4] = _zz_140;
    _zz_141[3] = _zz_140;
    _zz_141[2] = _zz_140;
    _zz_141[1] = _zz_140;
    _zz_141[0] = _zz_140;
  end

  assign _zz_142 = _zz_318[11];
  always @ (*) begin
    _zz_143[18] = _zz_142;
    _zz_143[17] = _zz_142;
    _zz_143[16] = _zz_142;
    _zz_143[15] = _zz_142;
    _zz_143[14] = _zz_142;
    _zz_143[13] = _zz_142;
    _zz_143[12] = _zz_142;
    _zz_143[11] = _zz_142;
    _zz_143[10] = _zz_142;
    _zz_143[9] = _zz_142;
    _zz_143[8] = _zz_142;
    _zz_143[7] = _zz_142;
    _zz_143[6] = _zz_142;
    _zz_143[5] = _zz_142;
    _zz_143[4] = _zz_142;
    _zz_143[3] = _zz_142;
    _zz_143[2] = _zz_142;
    _zz_143[1] = _zz_142;
    _zz_143[0] = _zz_142;
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((execute_arbitration_isValid && execute_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = execute_BRANCH_CALC;
  always @ (*) begin
    BranchPlugin_branchExceptionPort_valid = (execute_arbitration_isValid && (execute_BRANCH_DO && execute_BRANCH_CALC[1]));
    if(1'b0)begin
      BranchPlugin_branchExceptionPort_valid = 1'b0;
    end
  end

  assign BranchPlugin_branchExceptionPort_payload_code = 4'b0000;
  assign BranchPlugin_branchExceptionPort_payload_badAddr = execute_BRANCH_CALC;
  assign IBusCachedPlugin_decodePrediction_rsp_wasWrong = BranchPlugin_jumpInterface_valid;
  always @ (*) begin
    CsrPlugin_privilege = 2'b11;
    if(CsrPlugin_forceMachineWire)begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign _zz_144 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_145 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_146 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_147 = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_148 = _zz_320[0];
  assign _zz_149 = {CfuPlugin_joinException_valid,DBusSimplePlugin_memoryExceptionPort_valid};
  assign _zz_150 = _zz_322[0];
  assign _zz_151 = {CsrPlugin_selfException_valid,BranchPlugin_branchExceptionPort_valid};
  assign _zz_152 = _zz_324[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_236)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(_zz_238)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(_zz_240)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(writeBack_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  always @ (*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != 3'b000))begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException)begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @ (*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException)begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @ (*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException)begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  always @ (*) begin
    CsrPlugin_xtvec_mode = 2'bxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    CsrPlugin_xtvec_base = 30'h0;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign execute_CsrPlugin_blockedBySideEffects = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) || 1'b0);
  always @ (*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_3857)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3858)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3859)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3860)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_769)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_768)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_836)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_773)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_833)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_832)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_835)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2816)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2944)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2818)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2946)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_3072)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3200)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3074)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3202)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2820)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2821)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2822)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2823)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2824)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2825)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2826)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2827)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2828)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2829)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2830)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2831)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2832)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2833)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_2834)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2835)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3008)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_4032)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(_zz_252)begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(((! execute_arbitration_isValid) || (! execute_IS_CSR)))begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)))begin
      if((CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]))begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_valid = 1'b0;
    if(_zz_253)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(_zz_254)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(_zz_253)begin
      CsrPlugin_selfException_payload_code = 4'b0010;
    end
    if(_zz_254)begin
      case(CsrPlugin_privilege)
        2'b00 : begin
          CsrPlugin_selfException_payload_code = 4'b1000;
        end
        default : begin
          CsrPlugin_selfException_payload_code = 4'b1011;
        end
      endcase
    end
  end

  assign CsrPlugin_selfException_payload_badAddr = execute_INSTRUCTION;
  always @ (*) begin
    execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
    if(_zz_252)begin
      execute_CsrPlugin_writeInstruction = 1'b0;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
    if(_zz_252)begin
      execute_CsrPlugin_readInstruction = 1'b0;
    end
  end

  assign execute_CsrPlugin_writeEnable = (execute_CsrPlugin_writeInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readEnable = (execute_CsrPlugin_readInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readToWriteData = execute_CsrPlugin_readData;
  always @ (*) begin
    case(_zz_266)
      1'b0 : begin
        execute_CsrPlugin_writeData = execute_SRC1;
      end
      default : begin
        execute_CsrPlugin_writeData = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign execute_CfuPlugin_schedule = (execute_arbitration_isValid && execute_CfuPlugin_CFU_ENABLE);
  assign CfuPlugin_bus_cmd_valid = ((execute_CfuPlugin_schedule || execute_CfuPlugin_hold) && (! execute_CfuPlugin_fired));
  assign execute_CfuPlugin_functionsIds_0 = _zz_326;
  assign CfuPlugin_bus_cmd_payload_function_id = execute_CfuPlugin_functionsIds_0;
  assign CfuPlugin_bus_cmd_payload_inputs_0 = execute_RS1;
  assign _zz_169 = _zz_327[7];
  always @ (*) begin
    _zz_170[23] = _zz_169;
    _zz_170[22] = _zz_169;
    _zz_170[21] = _zz_169;
    _zz_170[20] = _zz_169;
    _zz_170[19] = _zz_169;
    _zz_170[18] = _zz_169;
    _zz_170[17] = _zz_169;
    _zz_170[16] = _zz_169;
    _zz_170[15] = _zz_169;
    _zz_170[14] = _zz_169;
    _zz_170[13] = _zz_169;
    _zz_170[12] = _zz_169;
    _zz_170[11] = _zz_169;
    _zz_170[10] = _zz_169;
    _zz_170[9] = _zz_169;
    _zz_170[8] = _zz_169;
    _zz_170[7] = _zz_169;
    _zz_170[6] = _zz_169;
    _zz_170[5] = _zz_169;
    _zz_170[4] = _zz_169;
    _zz_170[3] = _zz_169;
    _zz_170[2] = _zz_169;
    _zz_170[1] = _zz_169;
    _zz_170[0] = _zz_169;
  end

  always @ (*) begin
    case(execute_CfuPlugin_CFU_INPUT_2_KIND)
      `Input2Kind_defaultEncoding_RS : begin
        _zz_171 = execute_RS2;
      end
      default : begin
        _zz_171 = {_zz_170,execute_INSTRUCTION[31 : 24]};
      end
    endcase
  end

  assign CfuPlugin_bus_cmd_payload_inputs_1 = _zz_171;
  assign memory_CfuPlugin_rsp_valid = (CfuPlugin_bus_rsp_valid || CfuPlugin_bus_rsp_s2mPipe_rValid);
  assign CfuPlugin_bus_rsp_ready = (! CfuPlugin_bus_rsp_s2mPipe_rValid);
  assign memory_CfuPlugin_rsp_payload_response_ok = (CfuPlugin_bus_rsp_s2mPipe_rValid ? CfuPlugin_bus_rsp_s2mPipe_rData_response_ok : CfuPlugin_bus_rsp_payload_response_ok);
  assign memory_CfuPlugin_rsp_payload_outputs_0 = (CfuPlugin_bus_rsp_s2mPipe_rValid ? CfuPlugin_bus_rsp_s2mPipe_rData_outputs_0 : CfuPlugin_bus_rsp_payload_outputs_0);
  always @ (*) begin
    CfuPlugin_joinException_valid = 1'b0;
    if(memory_CfuPlugin_CFU_IN_FLIGHT)begin
      if(memory_arbitration_isValid)begin
        CfuPlugin_joinException_valid = (! memory_CfuPlugin_rsp_payload_response_ok);
      end
    end
  end

  assign CfuPlugin_joinException_payload_code = 4'b1111;
  assign CfuPlugin_joinException_payload_badAddr = 32'h0;
  always @ (*) begin
    memory_CfuPlugin_rsp_ready = 1'b0;
    if(memory_CfuPlugin_CFU_IN_FLIGHT)begin
      memory_CfuPlugin_rsp_ready = (! memory_arbitration_isStuckByOthers);
    end
  end

  assign memory_MulDivIterativePlugin_frontendOk = 1'b1;
  always @ (*) begin
    memory_MulDivIterativePlugin_mul_counter_willIncrement = 1'b0;
    if(_zz_224)begin
      if(_zz_239)begin
        memory_MulDivIterativePlugin_mul_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_mul_counter_willClear = 1'b0;
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_mul_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_mul_counter_value == 6'h20);
  assign memory_MulDivIterativePlugin_mul_counter_willOverflow = (memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc && memory_MulDivIterativePlugin_mul_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_mul_counter_willOverflow)begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = (memory_MulDivIterativePlugin_mul_counter_value + _zz_329);
    end
    if(memory_MulDivIterativePlugin_mul_counter_willClear)begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 6'h0;
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b0;
    if(_zz_225)begin
      if(_zz_255)begin
        memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willClear = 1'b0;
    if(_zz_256)begin
      memory_MulDivIterativePlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_div_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_div_counter_value == 6'h21);
  assign memory_MulDivIterativePlugin_div_counter_willOverflow = (memory_MulDivIterativePlugin_div_counter_willOverflowIfInc && memory_MulDivIterativePlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_div_counter_willOverflow)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_div_counter_valueNext = (memory_MulDivIterativePlugin_div_counter_value + _zz_337);
    end
    if(memory_MulDivIterativePlugin_div_counter_willClear)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_172 = memory_MulDivIterativePlugin_rs1[31 : 0];
  assign memory_MulDivIterativePlugin_div_stage_0_remainderShifted = {memory_MulDivIterativePlugin_accumulator[31 : 0],_zz_172[31]};
  assign memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = (memory_MulDivIterativePlugin_div_stage_0_remainderShifted - _zz_338);
  assign memory_MulDivIterativePlugin_div_stage_0_outRemainder = ((! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_339 : _zz_340);
  assign memory_MulDivIterativePlugin_div_stage_0_outNumerator = _zz_341[31:0];
  assign _zz_173 = (memory_INSTRUCTION[13] ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_rs1[31 : 0]);
  assign _zz_174 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_175 = ((execute_IS_MUL && _zz_174) || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_176[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_176[31 : 0] = execute_RS1;
  end

  assign _zz_178 = (_zz_177 & externalInterruptArray_regNext);
  assign externalInterrupt = (_zz_178 != 32'h0);
  assign _zz_27 = decode_SRC1_CTRL;
  assign _zz_25 = _zz_53;
  assign _zz_40 = decode_to_execute_SRC1_CTRL;
  assign _zz_24 = decode_ALU_CTRL;
  assign _zz_22 = _zz_52;
  assign _zz_41 = decode_to_execute_ALU_CTRL;
  assign _zz_21 = decode_SRC2_CTRL;
  assign _zz_19 = _zz_51;
  assign _zz_39 = decode_to_execute_SRC2_CTRL;
  assign _zz_18 = decode_ALU_BITWISE_CTRL;
  assign _zz_16 = _zz_50;
  assign _zz_42 = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_15 = decode_SHIFT_CTRL;
  assign _zz_13 = _zz_49;
  assign _zz_37 = decode_to_execute_SHIFT_CTRL;
  assign _zz_12 = decode_BRANCH_CTRL;
  assign _zz_55 = _zz_48;
  assign _zz_34 = decode_to_execute_BRANCH_CTRL;
  assign _zz_10 = decode_ENV_CTRL;
  assign _zz_7 = execute_ENV_CTRL;
  assign _zz_5 = memory_ENV_CTRL;
  assign _zz_8 = _zz_47;
  assign _zz_32 = decode_to_execute_ENV_CTRL;
  assign _zz_31 = execute_to_memory_ENV_CTRL;
  assign _zz_33 = memory_to_writeBack_ENV_CTRL;
  assign _zz_3 = decode_CfuPlugin_CFU_INPUT_2_KIND;
  assign _zz_1 = _zz_46;
  assign _zz_30 = decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND;
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != 3'b000) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != 4'b0000));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != 2'b00) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != 3'b000));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != 1'b0) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != 2'b00));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  always @ (*) begin
    _zz_179 = 32'h0;
    if(execute_CsrPlugin_csr_3857)begin
      _zz_179[3 : 0] = 4'b1011;
    end
  end

  always @ (*) begin
    _zz_180 = 32'h0;
    if(execute_CsrPlugin_csr_3858)begin
      _zz_180[4 : 0] = 5'h16;
    end
  end

  always @ (*) begin
    _zz_181 = 32'h0;
    if(execute_CsrPlugin_csr_3859)begin
      _zz_181[5 : 0] = 6'h21;
    end
  end

  always @ (*) begin
    _zz_182 = 32'h0;
    if(execute_CsrPlugin_csr_769)begin
      _zz_182[31 : 30] = CsrPlugin_misa_base;
      _zz_182[25 : 0] = CsrPlugin_misa_extensions;
    end
  end

  always @ (*) begin
    _zz_183 = 32'h0;
    if(execute_CsrPlugin_csr_768)begin
      _zz_183[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_183[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_183[3 : 3] = CsrPlugin_mstatus_MIE;
    end
  end

  always @ (*) begin
    _zz_184 = 32'h0;
    if(execute_CsrPlugin_csr_836)begin
      _zz_184[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_184[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_184[3 : 3] = CsrPlugin_mip_MSIP;
    end
  end

  always @ (*) begin
    _zz_185 = 32'h0;
    if(execute_CsrPlugin_csr_772)begin
      _zz_185[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_185[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_185[3 : 3] = CsrPlugin_mie_MSIE;
    end
  end

  always @ (*) begin
    _zz_186 = 32'h0;
    if(execute_CsrPlugin_csr_773)begin
      _zz_186[31 : 2] = CsrPlugin_mtvec_base;
      _zz_186[1 : 0] = CsrPlugin_mtvec_mode;
    end
  end

  always @ (*) begin
    _zz_187 = 32'h0;
    if(execute_CsrPlugin_csr_833)begin
      _zz_187[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @ (*) begin
    _zz_188 = 32'h0;
    if(execute_CsrPlugin_csr_832)begin
      _zz_188[31 : 0] = CsrPlugin_mscratch;
    end
  end

  always @ (*) begin
    _zz_189 = 32'h0;
    if(execute_CsrPlugin_csr_834)begin
      _zz_189[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_189[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_190 = 32'h0;
    if(execute_CsrPlugin_csr_835)begin
      _zz_190[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @ (*) begin
    _zz_191 = 32'h0;
    if(execute_CsrPlugin_csr_2816)begin
      _zz_191[31 : 0] = CsrPlugin_mcycle[31 : 0];
    end
  end

  always @ (*) begin
    _zz_192 = 32'h0;
    if(execute_CsrPlugin_csr_2944)begin
      _zz_192[31 : 0] = CsrPlugin_mcycle[63 : 32];
    end
  end

  always @ (*) begin
    _zz_193 = 32'h0;
    if(execute_CsrPlugin_csr_2818)begin
      _zz_193[31 : 0] = CsrPlugin_minstret[31 : 0];
    end
  end

  always @ (*) begin
    _zz_194 = 32'h0;
    if(execute_CsrPlugin_csr_2946)begin
      _zz_194[31 : 0] = CsrPlugin_minstret[63 : 32];
    end
  end

  always @ (*) begin
    _zz_195 = 32'h0;
    if(execute_CsrPlugin_csr_3072)begin
      _zz_195[31 : 0] = CsrPlugin_mcycle[31 : 0];
    end
  end

  always @ (*) begin
    _zz_196 = 32'h0;
    if(execute_CsrPlugin_csr_3200)begin
      _zz_196[31 : 0] = CsrPlugin_mcycle[63 : 32];
    end
  end

  always @ (*) begin
    _zz_197 = 32'h0;
    if(execute_CsrPlugin_csr_3074)begin
      _zz_197[31 : 0] = CsrPlugin_minstret[31 : 0];
    end
  end

  always @ (*) begin
    _zz_198 = 32'h0;
    if(execute_CsrPlugin_csr_3202)begin
      _zz_198[31 : 0] = CsrPlugin_minstret[63 : 32];
    end
  end

  always @ (*) begin
    _zz_199 = 32'h0;
    if(execute_CsrPlugin_csr_2820)begin
      _zz_199[31 : 0] = _zz_153;
    end
  end

  always @ (*) begin
    _zz_200 = 32'h0;
    if(execute_CsrPlugin_csr_2822)begin
      _zz_200[31 : 0] = _zz_155;
    end
  end

  always @ (*) begin
    _zz_201 = 32'h0;
    if(execute_CsrPlugin_csr_2824)begin
      _zz_201[31 : 0] = _zz_157;
    end
  end

  always @ (*) begin
    _zz_202 = 32'h0;
    if(execute_CsrPlugin_csr_2826)begin
      _zz_202[31 : 0] = _zz_159;
    end
  end

  always @ (*) begin
    _zz_203 = 32'h0;
    if(execute_CsrPlugin_csr_2828)begin
      _zz_203[31 : 0] = _zz_161;
    end
  end

  always @ (*) begin
    _zz_204 = 32'h0;
    if(execute_CsrPlugin_csr_2830)begin
      _zz_204[31 : 0] = _zz_163;
    end
  end

  always @ (*) begin
    _zz_205 = 32'h0;
    if(execute_CsrPlugin_csr_2832)begin
      _zz_205[31 : 0] = _zz_165;
    end
  end

  always @ (*) begin
    _zz_206 = 32'h0;
    if(execute_CsrPlugin_csr_2834)begin
      _zz_206[31 : 0] = _zz_167;
    end
  end

  always @ (*) begin
    _zz_207 = 32'h0;
    if(execute_CsrPlugin_csr_3008)begin
      _zz_207[31 : 0] = _zz_177;
    end
  end

  always @ (*) begin
    _zz_208 = 32'h0;
    if(execute_CsrPlugin_csr_4032)begin
      _zz_208[31 : 0] = _zz_178;
    end
  end

  assign execute_CsrPlugin_readData = (((((_zz_179 | _zz_180) | (_zz_181 | _zz_555)) | ((_zz_182 | _zz_183) | (_zz_184 | _zz_185))) | (((_zz_186 | _zz_187) | (_zz_188 | _zz_189)) | ((_zz_190 | _zz_191) | (_zz_192 | _zz_193)))) | ((((_zz_194 | _zz_195) | (_zz_196 | _zz_197)) | ((_zz_198 | _zz_199) | (_zz_200 | _zz_201))) | (((_zz_202 | _zz_203) | (_zz_204 | _zz_205)) | ((_zz_206 | _zz_207) | _zz_208))));
  assign iBusWishbone_ADR = {_zz_358,_zz_209};
  assign iBusWishbone_CTI = ((_zz_209 == 3'b111) ? 3'b111 : 3'b010);
  assign iBusWishbone_BTE = 2'b00;
  assign iBusWishbone_SEL = 4'b1111;
  assign iBusWishbone_WE = 1'b0;
  assign iBusWishbone_DAT_MOSI = 32'h0;
  always @ (*) begin
    iBusWishbone_CYC = 1'b0;
    if(_zz_257)begin
      iBusWishbone_CYC = 1'b1;
    end
  end

  always @ (*) begin
    iBusWishbone_STB = 1'b0;
    if(_zz_257)begin
      iBusWishbone_STB = 1'b1;
    end
  end

  assign iBus_cmd_ready = (iBus_cmd_valid && iBusWishbone_ACK);
  assign iBus_rsp_valid = _zz_210;
  assign iBus_rsp_payload_data = iBusWishbone_DAT_MISO_regNext;
  assign iBus_rsp_payload_error = 1'b0;
  assign dBus_cmd_halfPipe_valid = dBus_cmd_halfPipe_regs_valid;
  assign dBus_cmd_halfPipe_payload_wr = dBus_cmd_halfPipe_regs_payload_wr;
  assign dBus_cmd_halfPipe_payload_address = dBus_cmd_halfPipe_regs_payload_address;
  assign dBus_cmd_halfPipe_payload_data = dBus_cmd_halfPipe_regs_payload_data;
  assign dBus_cmd_halfPipe_payload_size = dBus_cmd_halfPipe_regs_payload_size;
  assign dBus_cmd_ready = dBus_cmd_halfPipe_regs_ready;
  assign dBusWishbone_ADR = (dBus_cmd_halfPipe_payload_address >>> 2);
  assign dBusWishbone_CTI = 3'b000;
  assign dBusWishbone_BTE = 2'b00;
  always @ (*) begin
    case(dBus_cmd_halfPipe_payload_size)
      2'b00 : begin
        _zz_211 = 4'b0001;
      end
      2'b01 : begin
        _zz_211 = 4'b0011;
      end
      default : begin
        _zz_211 = 4'b1111;
      end
    endcase
  end

  always @ (*) begin
    dBusWishbone_SEL = (_zz_211 <<< dBus_cmd_halfPipe_payload_address[1 : 0]);
    if((! dBus_cmd_halfPipe_payload_wr))begin
      dBusWishbone_SEL = 4'b1111;
    end
  end

  assign dBusWishbone_WE = dBus_cmd_halfPipe_payload_wr;
  assign dBusWishbone_DAT_MOSI = dBus_cmd_halfPipe_payload_data;
  assign dBus_cmd_halfPipe_ready = (dBus_cmd_halfPipe_valid && dBusWishbone_ACK);
  assign dBusWishbone_CYC = dBus_cmd_halfPipe_valid;
  assign dBusWishbone_STB = dBus_cmd_halfPipe_valid;
  assign dBus_rsp_ready = ((dBus_cmd_halfPipe_valid && (! dBusWishbone_WE)) && dBusWishbone_ACK);
  assign dBus_rsp_data = dBusWishbone_DAT_MISO;
  assign dBus_rsp_error = 1'b0;
  always @ (posedge clk) begin
    if(reset) begin
      IBusCachedPlugin_fetchPc_pcReg <= externalResetVector;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_69 <= 1'b0;
      _zz_71 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_84;
      IBusCachedPlugin_rspCounter <= 32'h0;
      _zz_108 <= 1'b1;
      execute_LightShifterPlugin_isActive <= 1'b0;
      _zz_119 <= 1'b0;
      CsrPlugin_misa_base <= 2'b01;
      CsrPlugin_misa_extensions <= 26'h0000042;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_lastStageWasWfi <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      execute_CfuPlugin_hold <= 1'b0;
      execute_CfuPlugin_fired <= 1'b0;
      CfuPlugin_bus_rsp_s2mPipe_rValid <= 1'b0;
      memory_MulDivIterativePlugin_mul_counter_value <= 6'h0;
      memory_MulDivIterativePlugin_div_counter_value <= 6'h0;
      _zz_177 <= 32'h0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      execute_to_memory_CfuPlugin_CFU_IN_FLIGHT <= 1'b0;
      _zz_209 <= 3'b000;
      _zz_210 <= 1'b0;
      dBus_cmd_halfPipe_regs_valid <= 1'b0;
      dBus_cmd_halfPipe_regs_ready <= 1'b1;
    end else begin
      if(IBusCachedPlugin_fetchPc_correction)begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if((IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate)))begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_69 <= 1'b0;
      end
      if(_zz_67)begin
        _zz_69 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_71 <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_71 <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_2_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! (((dBus_rsp_ready && memory_MEMORY_ENABLE) && memory_arbitration_isValid) && memory_arbitration_isStuck)));
        `else
          if(!(! (((dBus_rsp_ready && memory_MEMORY_ENABLE) && memory_arbitration_isValid) && memory_arbitration_isStuck))) begin
            $display("FAILURE DBusSimplePlugin doesn't allow memory stage stall when read happend");
            $finish;
          end
        `endif
      `endif
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! (((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE) && (! writeBack_MEMORY_STORE)) && writeBack_arbitration_isStuck)));
        `else
          if(!(! (((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE) && (! writeBack_MEMORY_STORE)) && writeBack_arbitration_isStuck))) begin
            $display("FAILURE DBusSimplePlugin doesn't allow writeback stage stall when read happend");
            $finish;
          end
        `endif
      `endif
      _zz_108 <= 1'b0;
      if(_zz_230)begin
        if(_zz_258)begin
          execute_LightShifterPlugin_isActive <= 1'b1;
          if(execute_LightShifterPlugin_done)begin
            execute_LightShifterPlugin_isActive <= 1'b0;
          end
        end
      end
      if(execute_arbitration_removeIt)begin
        execute_LightShifterPlugin_isActive <= 1'b0;
      end
      _zz_119 <= (_zz_44 && writeBack_arbitration_isFiring);
      if((! decode_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if((! execute_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if((! memory_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if((! writeBack_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(_zz_259)begin
        if(_zz_260)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_261)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_262)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      CsrPlugin_lastStageWasWfi <= (writeBack_arbitration_isFiring && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
      if(CsrPlugin_pipelineLiberator_active)begin
        if((! execute_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if((! memory_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if((! writeBack_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt))begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump)begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(_zz_241)begin
        case(CsrPlugin_targetPrivilege)
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(_zz_242)begin
        case(_zz_243)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_146,{_zz_145,_zz_144}} != 3'b000) || CsrPlugin_thirdPartyWake);
      if(execute_CfuPlugin_schedule)begin
        execute_CfuPlugin_hold <= 1'b1;
      end
      if(CfuPlugin_bus_cmd_ready)begin
        execute_CfuPlugin_hold <= 1'b0;
      end
      if((CfuPlugin_bus_cmd_valid && CfuPlugin_bus_cmd_ready))begin
        execute_CfuPlugin_fired <= 1'b1;
      end
      if((! execute_arbitration_isStuckByOthers))begin
        execute_CfuPlugin_fired <= 1'b0;
      end
      if(memory_CfuPlugin_rsp_ready)begin
        CfuPlugin_bus_rsp_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_263)begin
        CfuPlugin_bus_rsp_s2mPipe_rValid <= CfuPlugin_bus_rsp_valid;
      end
      memory_MulDivIterativePlugin_mul_counter_value <= memory_MulDivIterativePlugin_mul_counter_valueNext;
      memory_MulDivIterativePlugin_div_counter_value <= memory_MulDivIterativePlugin_div_counter_valueNext;
      if((! memory_arbitration_isStuck))begin
        execute_to_memory_CfuPlugin_CFU_IN_FLIGHT <= _zz_29;
      end
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      if(execute_CsrPlugin_csr_769)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_misa_base <= execute_CsrPlugin_writeData[31 : 30];
          CsrPlugin_misa_extensions <= execute_CsrPlugin_writeData[25 : 0];
        end
      end
      if(execute_CsrPlugin_csr_768)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
          CsrPlugin_mstatus_MPIE <= _zz_351[0];
          CsrPlugin_mstatus_MIE <= _zz_352[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_354[0];
          CsrPlugin_mie_MTIE <= _zz_355[0];
          CsrPlugin_mie_MSIE <= _zz_356[0];
        end
      end
      if(execute_CsrPlugin_csr_3008)begin
        if(execute_CsrPlugin_writeEnable)begin
          _zz_177 <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      if(_zz_257)begin
        if(iBusWishbone_ACK)begin
          _zz_209 <= (_zz_209 + 3'b001);
        end
      end
      _zz_210 <= (iBusWishbone_CYC && iBusWishbone_ACK);
      if(_zz_264)begin
        dBus_cmd_halfPipe_regs_valid <= dBus_cmd_valid;
        dBus_cmd_halfPipe_regs_ready <= (! dBus_cmd_valid);
      end else begin
        dBus_cmd_halfPipe_regs_valid <= (! dBus_cmd_halfPipe_ready);
        dBus_cmd_halfPipe_regs_ready <= dBus_cmd_halfPipe_ready;
      end
    end
  end

  always @ (posedge clk) begin
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      _zz_72 <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready)begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
    end
    if(_zz_230)begin
      if(_zz_258)begin
        execute_LightShifterPlugin_amplitudeReg <= (execute_LightShifterPlugin_amplitude - 5'h01);
      end
    end
    _zz_120 <= _zz_43[11 : 7];
    _zz_121 <= _zz_54;
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_236)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_148 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_148 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(_zz_238)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_152 ? BranchPlugin_branchExceptionPort_payload_code : CsrPlugin_selfException_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_152 ? BranchPlugin_branchExceptionPort_payload_badAddr : CsrPlugin_selfException_payload_badAddr);
    end
    if(_zz_240)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_150 ? DBusSimplePlugin_memoryExceptionPort_payload_code : CfuPlugin_joinException_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_150 ? DBusSimplePlugin_memoryExceptionPort_payload_badAddr : CfuPlugin_joinException_payload_badAddr);
    end
    if(_zz_259)begin
      if(_zz_260)begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_261)begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_262)begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(_zz_241)begin
      case(CsrPlugin_targetPrivilege)
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= writeBack_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    if(_zz_154[0])begin
      _zz_153 <= (_zz_153 + 32'h00000001);
    end
    if(_zz_156[0])begin
      _zz_155 <= (_zz_155 + 32'h00000001);
    end
    if(_zz_158[0])begin
      _zz_157 <= (_zz_157 + 32'h00000001);
    end
    if(_zz_160[0])begin
      _zz_159 <= (_zz_159 + 32'h00000001);
    end
    if(_zz_162[0])begin
      _zz_161 <= (_zz_161 + 32'h00000001);
    end
    if(_zz_164[0])begin
      _zz_163 <= (_zz_163 + 32'h00000001);
    end
    if(_zz_166[0])begin
      _zz_165 <= (_zz_165 + 32'h00000001);
    end
    if(_zz_168[0])begin
      _zz_167 <= (_zz_167 + 32'h00000001);
    end
    if(_zz_263)begin
      CfuPlugin_bus_rsp_s2mPipe_rData_response_ok <= CfuPlugin_bus_rsp_payload_response_ok;
      CfuPlugin_bus_rsp_s2mPipe_rData_outputs_0 <= CfuPlugin_bus_rsp_payload_outputs_0;
    end
    if(_zz_224)begin
      if(_zz_239)begin
        memory_MulDivIterativePlugin_rs2 <= (memory_MulDivIterativePlugin_rs2 >>> 1);
        memory_MulDivIterativePlugin_accumulator <= ({_zz_330,memory_MulDivIterativePlugin_accumulator[31 : 0]} >>> 1);
      end
    end
    if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
      memory_MulDivIterativePlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_div_done <= 1'b0;
    end
    if(_zz_225)begin
      if(_zz_255)begin
        memory_MulDivIterativePlugin_rs1[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outNumerator;
        memory_MulDivIterativePlugin_accumulator[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outRemainder;
        if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
          memory_MulDivIterativePlugin_div_result <= _zz_342[31:0];
        end
      end
    end
    if(_zz_256)begin
      memory_MulDivIterativePlugin_accumulator <= 65'h0;
      memory_MulDivIterativePlugin_rs1 <= ((_zz_175 ? (~ _zz_176) : _zz_176) + _zz_348);
      memory_MulDivIterativePlugin_rs2 <= ((_zz_174 ? (~ execute_RS2) : execute_RS2) + _zz_350);
      memory_MulDivIterativePlugin_div_needRevert <= ((_zz_175 ^ (_zz_174 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    externalInterruptArray_regNext <= externalInterruptArray;
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= decode_PC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PC <= _zz_38;
    end
    if(((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack)))begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= _zz_58;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= _zz_56;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_57;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC1_CTRL <= _zz_26;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_CTRL <= _zz_23;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_CTRL <= _zz_20;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_STORE <= decode_MEMORY_STORE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_STORE <= execute_MEMORY_STORE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_STORE <= memory_MEMORY_STORE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_17;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_14;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_11;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ENV_CTRL <= _zz_9;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_6;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_ENV_CTRL <= _zz_4;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CfuPlugin_CFU_ENABLE <= decode_CfuPlugin_CFU_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CfuPlugin_CFU_INPUT_2_KIND <= _zz_2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= decode_RS1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= decode_RS2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PREDICTION_HAD_BRANCHED2 <= decode_PREDICTION_HAD_BRANCHED2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ALIGNEMENT_FAULT <= execute_ALIGNEMENT_FAULT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MMU_FAULT <= execute_MMU_FAULT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MMU_RSP2_physicalAddress <= execute_MMU_RSP2_physicalAddress;
      execute_to_memory_MMU_RSP2_isIoAccess <= execute_MMU_RSP2_isIoAccess;
      execute_to_memory_MMU_RSP2_isPaging <= execute_MMU_RSP2_isPaging;
      execute_to_memory_MMU_RSP2_allowRead <= execute_MMU_RSP2_allowRead;
      execute_to_memory_MMU_RSP2_allowWrite <= execute_MMU_RSP2_allowWrite;
      execute_to_memory_MMU_RSP2_allowExecute <= execute_MMU_RSP2_allowExecute;
      execute_to_memory_MMU_RSP2_exception <= execute_MMU_RSP2_exception;
      execute_to_memory_MMU_RSP2_refilling <= execute_MMU_RSP2_refilling;
      execute_to_memory_MMU_RSP2_bypassTranslation <= execute_MMU_RSP2_bypassTranslation;
    end
    if(((! memory_arbitration_isStuck) && (! execute_arbitration_isStuckByOthers)))begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_36;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_35;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_CfuPlugin_CFU_IN_FLIGHT <= _zz_28;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_READ_DATA <= memory_MEMORY_READ_DATA;
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3857 <= (decode_INSTRUCTION[31 : 20] == 12'hf11);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3858 <= (decode_INSTRUCTION[31 : 20] == 12'hf12);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3859 <= (decode_INSTRUCTION[31 : 20] == 12'hf13);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3860 <= (decode_INSTRUCTION[31 : 20] == 12'hf14);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_769 <= (decode_INSTRUCTION[31 : 20] == 12'h301);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_773 <= (decode_INSTRUCTION[31 : 20] == 12'h305);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_832 <= (decode_INSTRUCTION[31 : 20] == 12'h340);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2816 <= (decode_INSTRUCTION[31 : 20] == 12'hb00);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2944 <= (decode_INSTRUCTION[31 : 20] == 12'hb80);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2818 <= (decode_INSTRUCTION[31 : 20] == 12'hb02);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2946 <= (decode_INSTRUCTION[31 : 20] == 12'hb82);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3072 <= (decode_INSTRUCTION[31 : 20] == 12'hc00);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3200 <= (decode_INSTRUCTION[31 : 20] == 12'hc80);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3074 <= (decode_INSTRUCTION[31 : 20] == 12'hc02);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3202 <= (decode_INSTRUCTION[31 : 20] == 12'hc82);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2820 <= (decode_INSTRUCTION[31 : 20] == 12'hb04);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2821 <= (decode_INSTRUCTION[31 : 20] == 12'hb05);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2822 <= (decode_INSTRUCTION[31 : 20] == 12'hb06);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2823 <= (decode_INSTRUCTION[31 : 20] == 12'hb07);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2824 <= (decode_INSTRUCTION[31 : 20] == 12'hb08);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2825 <= (decode_INSTRUCTION[31 : 20] == 12'hb09);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2826 <= (decode_INSTRUCTION[31 : 20] == 12'hb0a);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2827 <= (decode_INSTRUCTION[31 : 20] == 12'hb0b);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2828 <= (decode_INSTRUCTION[31 : 20] == 12'hb0c);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2829 <= (decode_INSTRUCTION[31 : 20] == 12'hb0d);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2830 <= (decode_INSTRUCTION[31 : 20] == 12'hb0e);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2831 <= (decode_INSTRUCTION[31 : 20] == 12'hb0f);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2832 <= (decode_INSTRUCTION[31 : 20] == 12'hb10);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2833 <= (decode_INSTRUCTION[31 : 20] == 12'hb11);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2834 <= (decode_INSTRUCTION[31 : 20] == 12'hb12);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_2835 <= (decode_INSTRUCTION[31 : 20] == 12'hb13);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3008 <= (decode_INSTRUCTION[31 : 20] == 12'hbc0);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_4032 <= (decode_INSTRUCTION[31 : 20] == 12'hfc0);
    end
    if(execute_CsrPlugin_csr_836)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mip_MSIP <= _zz_353[0];
      end
    end
    if(execute_CsrPlugin_csr_773)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mtvec_base <= execute_CsrPlugin_writeData[31 : 2];
        CsrPlugin_mtvec_mode <= execute_CsrPlugin_writeData[1 : 0];
      end
    end
    if(execute_CsrPlugin_csr_833)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mepc <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_832)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mscratch <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_834)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mcause_interrupt <= _zz_357[0];
        CsrPlugin_mcause_exceptionCode <= execute_CsrPlugin_writeData[3 : 0];
      end
    end
    if(execute_CsrPlugin_csr_835)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mtval <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2816)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mcycle[31 : 0] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2944)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mcycle[63 : 32] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2818)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_minstret[31 : 0] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2946)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_minstret[63 : 32] <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2820)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_153 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2821)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_154 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2822)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_155 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2823)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_156 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2824)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_157 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2825)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_158 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2826)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_159 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2827)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_160 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2828)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_161 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2829)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_162 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2830)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_163 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2831)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_164 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2832)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_165 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2833)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_166 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2834)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_167 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_2835)begin
      if(execute_CsrPlugin_writeEnable)begin
        _zz_168 <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    iBusWishbone_DAT_MISO_regNext <= iBusWishbone_DAT_MISO;
    if(_zz_264)begin
      dBus_cmd_halfPipe_regs_payload_wr <= dBus_cmd_payload_wr;
      dBus_cmd_halfPipe_regs_payload_address <= dBus_cmd_payload_address;
      dBus_cmd_halfPipe_regs_payload_data <= dBus_cmd_payload_data;
      dBus_cmd_halfPipe_regs_payload_size <= dBus_cmd_payload_size;
    end
  end


endmodule

module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  input      [31:0]   io_cpu_fetch_mmuRsp_physicalAddress,
  input               io_cpu_fetch_mmuRsp_isIoAccess,
  input               io_cpu_fetch_mmuRsp_isPaging,
  input               io_cpu_fetch_mmuRsp_allowRead,
  input               io_cpu_fetch_mmuRsp_allowWrite,
  input               io_cpu_fetch_mmuRsp_allowExecute,
  input               io_cpu_fetch_mmuRsp_exception,
  input               io_cpu_fetch_mmuRsp_refilling,
  input               io_cpu_fetch_mmuRsp_bypassTranslation,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  output              io_cpu_decode_cacheMiss,
  output              io_cpu_decode_error,
  output              io_cpu_decode_mmuRefilling,
  output              io_cpu_decode_mmuException,
  input               io_cpu_decode_isUser,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clk,
  input               reset
);
  reg        [31:0]   _zz_9;
  reg        [23:0]   _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  wire       [0:0]    _zz_13;
  wire       [0:0]    _zz_14;
  wire       [23:0]   _zz_15;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* keep , syn_keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [5:0]    lineLoader_flushCounter;
  reg                 _zz_3;
  reg                 lineLoader_cmdSent;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* keep , syn_keep *) reg        [2:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [4:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [21:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [7:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire       [7:0]    _zz_4;
  wire                _zz_5;
  wire       [31:0]   fetchStage_read_banksValue_0_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_0_data;
  wire       [4:0]    _zz_6;
  wire                _zz_7;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [21:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [23:0]   _zz_8;
  wire                fetchStage_hit_hits_0;
  wire                fetchStage_hit_valid;
  wire                fetchStage_hit_error;
  wire       [31:0]   fetchStage_hit_data;
  wire       [31:0]   fetchStage_hit_word;
  reg        [31:0]   io_cpu_fetch_data_regNextWhen;
  reg        [31:0]   decodeStage_mmuRsp_physicalAddress;
  reg                 decodeStage_mmuRsp_isIoAccess;
  reg                 decodeStage_mmuRsp_isPaging;
  reg                 decodeStage_mmuRsp_allowRead;
  reg                 decodeStage_mmuRsp_allowWrite;
  reg                 decodeStage_mmuRsp_allowExecute;
  reg                 decodeStage_mmuRsp_exception;
  reg                 decodeStage_mmuRsp_refilling;
  reg                 decodeStage_mmuRsp_bypassTranslation;
  reg                 decodeStage_hit_valid;
  reg                 decodeStage_hit_error;
  (* ram_style = "block" *) reg [31:0] banks_0 [0:255];
  (* ram_style = "block" *) reg [23:0] ways_0_tags [0:31];

  assign _zz_11 = (! lineLoader_flushCounter[5]);
  assign _zz_12 = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign _zz_13 = _zz_8[0 : 0];
  assign _zz_14 = _zz_8[1 : 1];
  assign _zz_15 = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @ (posedge clk) begin
    if(_zz_1) begin
      banks_0[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(_zz_5) begin
      _zz_9 <= banks_0[_zz_4];
    end
  end

  always @ (posedge clk) begin
    if(_zz_2) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_15;
    end
  end

  always @ (posedge clk) begin
    if(_zz_7) begin
      _zz_10 <= ways_0_tags[_zz_6];
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(lineLoader_write_data_0_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(lineLoader_write_tag_0_valid)begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid)begin
      if((lineLoader_wordIndex == 3'b111))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(_zz_11)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if((! _zz_3))begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 5],5'h0};
  assign io_mem_cmd_payload_size = 3'b101;
  always @ (*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if((! lineLoader_valid))begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = 1'b1;
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  assign lineLoader_write_tag_0_valid = ((1'b1 && lineLoader_fire) || (! lineLoader_flushCounter[5]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[5] ? lineLoader_address[9 : 5] : lineLoader_flushCounter[4 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[5];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 10];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[9 : 5],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign _zz_4 = io_cpu_prefetch_pc[9 : 2];
  assign _zz_5 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_0_dataMem = _zz_9;
  assign fetchStage_read_banksValue_0_data = fetchStage_read_banksValue_0_dataMem[31 : 0];
  assign _zz_6 = io_cpu_prefetch_pc[9 : 5];
  assign _zz_7 = (! io_cpu_fetch_isStuck);
  assign _zz_8 = _zz_10;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_13[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_14[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_8[23 : 2];
  assign fetchStage_hit_hits_0 = (fetchStage_read_waysValues_0_tag_valid && (fetchStage_read_waysValues_0_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 10]));
  assign fetchStage_hit_valid = (fetchStage_hit_hits_0 != 1'b0);
  assign fetchStage_hit_error = fetchStage_read_waysValues_0_tag_error;
  assign fetchStage_hit_data = fetchStage_read_banksValue_0_data;
  assign fetchStage_hit_word = fetchStage_hit_data;
  assign io_cpu_fetch_data = fetchStage_hit_word;
  assign io_cpu_decode_data = io_cpu_fetch_data_regNextWhen;
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuRsp_physicalAddress;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = (decodeStage_hit_error || ((! decodeStage_mmuRsp_isPaging) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute))));
  assign io_cpu_decode_mmuRefilling = decodeStage_mmuRsp_refilling;
  assign io_cpu_decode_mmuException = (((! decodeStage_mmuRsp_refilling) && decodeStage_mmuRsp_isPaging) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute)));
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  always @ (posedge clk) begin
    if(reset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wordIndex <= 3'b000;
    end else begin
      if(lineLoader_fire)begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire)begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid)begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush)begin
        lineLoader_flushPending <= 1'b1;
      end
      if(_zz_12)begin
        lineLoader_flushPending <= 1'b0;
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire)begin
        lineLoader_cmdSent <= 1'b0;
      end
      if(io_mem_rsp_valid)begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + 3'b001);
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(_zz_11)begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 6'h01);
    end
    _zz_3 <= lineLoader_flushCounter[5];
    if(_zz_12)begin
      lineLoader_flushCounter <= 6'h0;
    end
    if((! io_cpu_decode_isStuck))begin
      io_cpu_fetch_data_regNextWhen <= io_cpu_fetch_data;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_mmuRsp_physicalAddress <= io_cpu_fetch_mmuRsp_physicalAddress;
      decodeStage_mmuRsp_isIoAccess <= io_cpu_fetch_mmuRsp_isIoAccess;
      decodeStage_mmuRsp_isPaging <= io_cpu_fetch_mmuRsp_isPaging;
      decodeStage_mmuRsp_allowRead <= io_cpu_fetch_mmuRsp_allowRead;
      decodeStage_mmuRsp_allowWrite <= io_cpu_fetch_mmuRsp_allowWrite;
      decodeStage_mmuRsp_allowExecute <= io_cpu_fetch_mmuRsp_allowExecute;
      decodeStage_mmuRsp_exception <= io_cpu_fetch_mmuRsp_exception;
      decodeStage_mmuRsp_refilling <= io_cpu_fetch_mmuRsp_refilling;
      decodeStage_mmuRsp_bypassTranslation <= io_cpu_fetch_mmuRsp_bypassTranslation;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_valid <= fetchStage_hit_valid;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_error <= fetchStage_hit_error;
    end
  end


endmodule
