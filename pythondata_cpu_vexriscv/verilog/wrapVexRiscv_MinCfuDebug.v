//
// wrapper auto-generated from VexRiscv_MinCfuDebug.v
//

module VexRiscv (
    input      [31:0]     externalResetVector,
    input                 timerInterrupt,
    input                 softwareInterrupt,
    input      [31:0]     externalInterruptArray,
    input                 debug_bus_cmd_valid,
    output                debug_bus_cmd_ready,
    input                 debug_bus_cmd_payload_wr,
    input      [7:0]      debug_bus_cmd_payload_address,
    input      [31:0]     debug_bus_cmd_payload_data,
    output     [31:0]     debug_bus_rsp_data,
    output                debug_resetOut,
    output                iBusWishbone_CYC,
    output                iBusWishbone_STB,
    input                 iBusWishbone_ACK,
    output                iBusWishbone_WE,
    output     [29:0]     iBusWishbone_ADR,
    input      [31:0]     iBusWishbone_DAT_MISO,
    output     [31:0]     iBusWishbone_DAT_MOSI,
    output     [3:0]      iBusWishbone_SEL,
    input                 iBusWishbone_ERR,
    output     [2:0]      iBusWishbone_CTI,
    output     [1:0]      iBusWishbone_BTE,
    output                dBusWishbone_CYC,
    output                dBusWishbone_STB,
    input                 dBusWishbone_ACK,
    output                dBusWishbone_WE,
    output     [29:0]     dBusWishbone_ADR,
    input      [31:0]     dBusWishbone_DAT_MISO,
    output     [31:0]     dBusWishbone_DAT_MOSI,
    output     [3:0]      dBusWishbone_SEL,
    input                 dBusWishbone_ERR,
    output     [2:0]      dBusWishbone_CTI,
    output     [1:0]      dBusWishbone_BTE,
    input                 clk,
    input                 reset,
    input                 debugReset
);


    wire            CfuPlugin_bus_cmd_valid;
    wire            CfuPlugin_bus_cmd_ready;
    wire [9:0]      CfuPlugin_bus_cmd_payload_function_id;
    wire [31:0]     CfuPlugin_bus_cmd_payload_inputs_0;
    wire [31:0]     CfuPlugin_bus_cmd_payload_inputs_1;
    wire            CfuPlugin_bus_rsp_valid;
    wire            CfuPlugin_bus_rsp_ready;
    wire            CfuPlugin_bus_rsp_payload_response_ok;
    wire [31:0]     CfuPlugin_bus_rsp_payload_outputs_0;



VexRiscv_inner VexRiscv_inner(
    .externalResetVector(externalResetVector),
    .timerInterrupt(timerInterrupt),
    .softwareInterrupt(softwareInterrupt),
    .CfuPlugin_bus_cmd_valid(CfuPlugin_bus_cmd_valid),
    .CfuPlugin_bus_cmd_ready(CfuPlugin_bus_cmd_ready),
    .CfuPlugin_bus_cmd_payload_function_id(CfuPlugin_bus_cmd_payload_function_id),
    .CfuPlugin_bus_cmd_payload_inputs_0(CfuPlugin_bus_cmd_payload_inputs_0),
    .CfuPlugin_bus_cmd_payload_inputs_1(CfuPlugin_bus_cmd_payload_inputs_1),
    .CfuPlugin_bus_rsp_valid(CfuPlugin_bus_rsp_valid),
    .CfuPlugin_bus_rsp_ready(CfuPlugin_bus_rsp_ready),
    .CfuPlugin_bus_rsp_payload_response_ok(CfuPlugin_bus_rsp_payload_response_ok),
    .CfuPlugin_bus_rsp_payload_outputs_0(CfuPlugin_bus_rsp_payload_outputs_0),
    .externalInterruptArray(externalInterruptArray),
    .debug_bus_cmd_valid(debug_bus_cmd_valid),
    .debug_bus_cmd_ready(debug_bus_cmd_ready),
    .debug_bus_cmd_payload_wr(debug_bus_cmd_payload_wr),
    .debug_bus_cmd_payload_address(debug_bus_cmd_payload_address),
    .debug_bus_cmd_payload_data(debug_bus_cmd_payload_data),
    .debug_bus_rsp_data(debug_bus_rsp_data),
    .debug_resetOut(debug_resetOut),
    .iBusWishbone_CYC(iBusWishbone_CYC),
    .iBusWishbone_STB(iBusWishbone_STB),
    .iBusWishbone_ACK(iBusWishbone_ACK),
    .iBusWishbone_WE(iBusWishbone_WE),
    .iBusWishbone_ADR(iBusWishbone_ADR),
    .iBusWishbone_DAT_MISO(iBusWishbone_DAT_MISO),
    .iBusWishbone_DAT_MOSI(iBusWishbone_DAT_MOSI),
    .iBusWishbone_SEL(iBusWishbone_SEL),
    .iBusWishbone_ERR(iBusWishbone_ERR),
    .iBusWishbone_CTI(iBusWishbone_CTI),
    .iBusWishbone_BTE(iBusWishbone_BTE),
    .dBusWishbone_CYC(dBusWishbone_CYC),
    .dBusWishbone_STB(dBusWishbone_STB),
    .dBusWishbone_ACK(dBusWishbone_ACK),
    .dBusWishbone_WE(dBusWishbone_WE),
    .dBusWishbone_ADR(dBusWishbone_ADR),
    .dBusWishbone_DAT_MISO(dBusWishbone_DAT_MISO),
    .dBusWishbone_DAT_MOSI(dBusWishbone_DAT_MOSI),
    .dBusWishbone_SEL(dBusWishbone_SEL),
    .dBusWishbone_ERR(dBusWishbone_ERR),
    .dBusWishbone_CTI(dBusWishbone_CTI),
    .dBusWishbone_BTE(dBusWishbone_BTE),
    .clk(clk),
    .reset(reset),
    .debugReset(debugReset)
);


Cfu Cfu(
    .io_bus_cmd_valid(CfuPlugin_bus_cmd_valid),
    .io_bus_cmd_ready(CfuPlugin_bus_cmd_ready),
    .io_bus_cmd_payload_function_id(CfuPlugin_bus_cmd_payload_function_id),
    .io_bus_cmd_payload_inputs_0(CfuPlugin_bus_cmd_payload_inputs_0),
    .io_bus_cmd_payload_inputs_1(CfuPlugin_bus_cmd_payload_inputs_1),
    .io_bus_rsp_valid(CfuPlugin_bus_rsp_valid),
    .io_bus_rsp_ready(CfuPlugin_bus_rsp_ready),
    .io_bus_rsp_payload_response_ok(CfuPlugin_bus_rsp_payload_response_ok),
    .io_bus_rsp_payload_outputs_0(CfuPlugin_bus_rsp_payload_outputs_0),
    .clk(clk),
    .rst(reset)
);


endmodule
