module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,
    // cclk input from AVR, high when AVR is ready
    input cclk,
    // Outputs to the 8 onboard LEDs
    output[7:0]led,
    // AVR SPI connections
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    // AVR ADC channel select
    output [3:0] spi_channel,
    // Serial connections
    input avr_tx, // AVR Tx => FPGA Rx
    output avr_rx, // AVR Rx => FPGA Tx
    input avr_rx_busy,	 // AVR Rx buffer full
		output [15:0] R,
		output [15:0] C,
input button
	);
	wire c1;
	wire r = rst;
	//wire [7:0] c;
wire [255:0]arr;
//wire var;
wire [255:0] next;
//wire [63:0] copy;
wire rst = ~rst_n; // make reset active high
//genvar i,j;
// these signals should be high-z when not used
assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;


count timer (
	.clk(clk),
	.b(c1)
	); 


assign led = 8'b0;



pin p(
.clk(c1),
.arr(arr),
.next(next),
.rst(rst)
);

copy cat(
.rst(rst),
.clk(clk),
.arr(arr),
.next(next)
);

light pv(
.clk(clk),
.test(next),
.R(R),
.C(C)
);
endmodule