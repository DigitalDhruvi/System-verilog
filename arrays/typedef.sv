//type 1: simple struct

module struct_datatype;
struct {bit[3:0] a,b,c;} alphabet;
logic [11:0] d;
initial begin 
alphabet.a = 4'hA;
alphabet.b = 4'hB;
alphabet.c = 4'hC;
d = {alphabet.a,alphabet.b,alphabet.c};
$display("Concatenated vector is = %0h",d);
end
endmodule


//type 2: enum struct

module struct_enum;
struct {bit[7:0] address;
	logic [7:0] payload [63:0];
	enum {good,bad} pkt_type;
} packet;
initial begin
packet.address = 8'd25;
packet.pkt_type = bad;
packet.payload[0] = 8'd10;
packet.payload[1] = 8'd12;
$display("Display address of the packet = %0d",packet.address);
$display("Display payload 0 = %d and payload 1 = %d",packet.payload[0],packet.payload[1]);
$display("Display packet type = %s",packet.pkt_type);
end
endmodule


//type 3: typedef struct

module typedef_struct;
typedef struct{bit[2:0] a,b,c;}alphabet;
alphabet apples,mango,cherry;
initial
begin
//3 baskets of apples
apples.a = 3'b101;
apples.b = 3;
apples.c = 2;

alphabet mango;
mango = '{'d2,'d4,'d0};

alphabet cherry;
cherry.c = 3;

$display("Number of apples = %0p ",apples);
$display("Number of mangoes = %0p ",mango);
$display("Number of cherries = %0p ",cherry);
end
endmodule
