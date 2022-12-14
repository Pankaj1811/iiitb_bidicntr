/* Generated by Yosys 0.19+36 (git sha1 30a4218f537, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module iiitb_bidicntr(count, clk, ctrl, reset);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire [3:0] _08_;
  wire [3:0] _09_;
  input clk;
  wire clk;
  output [3:0] count;
  wire [3:0] count;
  input ctrl;
  wire ctrl;
  input reset;
  wire reset;
  sky130_fd_sc_hd__clkinv_1 _10_ (
    .A(count[0]),
    .Y(_08_[0])
  );
  sky130_fd_sc_hd__clkinv_1 _11_ (
    .A(reset),
    .Y(_00_)
  );
  sky130_fd_sc_hd__nand2b_1 _12_ (
    .A_N(ctrl),
    .B(count[1]),
    .Y(_01_)
  );
  sky130_fd_sc_hd__xor2_1 _13_ (
    .A(count[1]),
    .B(ctrl),
    .X(_02_)
  );
  sky130_fd_sc_hd__xnor2_1 _14_ (
    .A(count[0]),
    .B(_02_),
    .Y(_09_[1])
  );
  sky130_fd_sc_hd__o21ai_0 _15_ (
    .A1(_08_[0]),
    .A2(_02_),
    .B1(_01_),
    .Y(_03_)
  );
  sky130_fd_sc_hd__xor2_1 _16_ (
    .A(ctrl),
    .B(count[2]),
    .X(_04_)
  );
  sky130_fd_sc_hd__xnor2_1 _17_ (
    .A(_03_),
    .B(_04_),
    .Y(_09_[2])
  );
  sky130_fd_sc_hd__nand4_1 _18_ (
    .A(count[0]),
    .B(count[1]),
    .C(ctrl),
    .D(count[2]),
    .Y(_05_)
  );
  sky130_fd_sc_hd__or4_1 _19_ (
    .A(count[0]),
    .B(count[1]),
    .C(ctrl),
    .D(count[2]),
    .X(_06_)
  );
  sky130_fd_sc_hd__nand2_1 _20_ (
    .A(_05_),
    .B(_06_),
    .Y(_07_)
  );
  sky130_fd_sc_hd__xor2_1 _21_ (
    .A(count[3]),
    .B(_07_),
    .X(_09_[3])
  );
  sky130_fd_sc_hd__dfrtp_1 _22_ (
    .CLK(clk),
    .D(_08_[0]),
    .Q(count[0]),
    .RESET_B(_00_)
  );
  sky130_fd_sc_hd__dfrtp_1 _23_ (
    .CLK(clk),
    .D(_09_[1]),
    .Q(count[1]),
    .RESET_B(_00_)
  );
  sky130_fd_sc_hd__dfrtp_1 _24_ (
    .CLK(clk),
    .D(_09_[2]),
    .Q(count[2]),
    .RESET_B(_00_)
  );
  sky130_fd_sc_hd__dfrtp_1 _25_ (
    .CLK(clk),
    .D(_09_[3]),
    .Q(count[3]),
    .RESET_B(_00_)
  );
  assign _09_[0] = _08_[0];
endmodule
