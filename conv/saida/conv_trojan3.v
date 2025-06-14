/* Generated by Yosys 0.33 (git sha1 2584903a060) */

(* top =  1  *)
(* src = "entrada/trojan3.v:1.1-20.10" *)
module Trojan3(clk, rst, data_in, data_out);
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  wire [15:0] _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  (* force_downto = 32'd1 *)
  (* src = "entrada/trojan3.v:12.24-12.35|/usr/bin/../share/yosys/techmap.v:270.23-270.24" *)
  wire [7:0] _050_;
  (* force_downto = 32'd1 *)
  (* src = "entrada/trojan3.v:12.24-12.35|/usr/bin/../share/yosys/techmap.v:270.26-270.27" *)
  wire [7:0] _051_;
  (* src = "entrada/trojan3.v:2.16-2.19" *)
  input clk;
  wire clk;
  (* src = "entrada/trojan3.v:7.15-7.22" *)
  wire [7:0] counter;
  (* src = "entrada/trojan3.v:4.23-4.30" *)
  input [15:0] data_in;
  wire [15:0] data_in;
  (* src = "entrada/trojan3.v:5.23-5.31" *)
  output [15:0] data_out;
  wire [15:0] data_out;
  (* src = "entrada/trojan3.v:3.16-3.19" *)
  input rst;
  wire rst;
  \$_NOT_  _052_ (
    .A(counter[0]),
    .Y(_050_[0])
  );
  \$_AND_  _053_ (
    .A(counter[1]),
    .B(counter[0]),
    .Y(_010_)
  );
  \$_NAND_  _054_ (
    .A(counter[2]),
    .B(counter[3]),
    .Y(_011_)
  );
  \$_ANDNOT_  _055_ (
    .A(_010_),
    .B(_011_),
    .Y(_012_)
  );
  \$_NAND_  _056_ (
    .A(counter[5]),
    .B(counter[4]),
    .Y(_013_)
  );
  \$_NAND_  _057_ (
    .A(counter[6]),
    .B(counter[7]),
    .Y(_014_)
  );
  \$_NOR_  _058_ (
    .A(_014_),
    .B(_013_),
    .Y(_015_)
  );
  \$_NAND_  _059_ (
    .A(_015_),
    .B(_012_),
    .Y(_016_)
  );
  \$_XNOR_  _060_ (
    .A(_016_),
    .B(data_in[1]),
    .Y(_000_[1])
  );
  \$_XOR_  _061_ (
    .A(data_in[2]),
    .B(data_in[1]),
    .Y(_017_)
  );
  \$_MUX_  _062_ (
    .A(_017_),
    .B(data_in[2]),
    .S(_016_),
    .Y(_000_[2])
  );
  \$_AND_  _063_ (
    .A(data_in[2]),
    .B(data_in[1]),
    .Y(_018_)
  );
  \$_XOR_  _064_ (
    .A(_018_),
    .B(data_in[3]),
    .Y(_019_)
  );
  \$_MUX_  _065_ (
    .A(_019_),
    .B(data_in[3]),
    .S(_016_),
    .Y(_000_[3])
  );
  \$_NAND_  _066_ (
    .A(data_in[2]),
    .B(data_in[1]),
    .Y(_020_)
  );
  \$_ANDNOT_  _067_ (
    .A(data_in[3]),
    .B(_020_),
    .Y(_021_)
  );
  \$_XOR_  _068_ (
    .A(_021_),
    .B(data_in[4]),
    .Y(_022_)
  );
  \$_MUX_  _069_ (
    .A(_022_),
    .B(data_in[4]),
    .S(_016_),
    .Y(_000_[4])
  );
  \$_NAND_  _070_ (
    .A(data_in[4]),
    .B(data_in[3]),
    .Y(_023_)
  );
  \$_ANDNOT_  _071_ (
    .A(_018_),
    .B(_023_),
    .Y(_024_)
  );
  \$_XOR_  _072_ (
    .A(_024_),
    .B(data_in[5]),
    .Y(_025_)
  );
  \$_MUX_  _073_ (
    .A(_025_),
    .B(data_in[5]),
    .S(_016_),
    .Y(_000_[5])
  );
  \$_OR_  _074_ (
    .A(_023_),
    .B(_020_),
    .Y(_026_)
  );
  \$_ANDNOT_  _075_ (
    .A(data_in[5]),
    .B(_026_),
    .Y(_027_)
  );
  \$_XOR_  _076_ (
    .A(_027_),
    .B(data_in[6]),
    .Y(_028_)
  );
  \$_MUX_  _077_ (
    .A(_028_),
    .B(data_in[6]),
    .S(_016_),
    .Y(_000_[6])
  );
  \$_NAND_  _078_ (
    .A(data_in[6]),
    .B(data_in[5]),
    .Y(_029_)
  );
  \$_OR_  _079_ (
    .A(_029_),
    .B(_026_),
    .Y(_030_)
  );
  \$_XNOR_  _080_ (
    .A(_030_),
    .B(data_in[7]),
    .Y(_031_)
  );
  \$_MUX_  _081_ (
    .A(_031_),
    .B(data_in[7]),
    .S(_016_),
    .Y(_000_[7])
  );
  \$_ANDNOT_  _082_ (
    .A(data_in[7]),
    .B(_030_),
    .Y(_032_)
  );
  \$_XOR_  _083_ (
    .A(_032_),
    .B(data_in[8]),
    .Y(_033_)
  );
  \$_MUX_  _084_ (
    .A(_033_),
    .B(data_in[8]),
    .S(_016_),
    .Y(_000_[8])
  );
  \$_NAND_  _085_ (
    .A(data_in[8]),
    .B(data_in[7]),
    .Y(_034_)
  );
  \$_OR_  _086_ (
    .A(_034_),
    .B(_029_),
    .Y(_035_)
  );
  \$_ANDNOT_  _087_ (
    .A(_024_),
    .B(_035_),
    .Y(_036_)
  );
  \$_XOR_  _088_ (
    .A(_036_),
    .B(data_in[9]),
    .Y(_037_)
  );
  \$_MUX_  _089_ (
    .A(_037_),
    .B(data_in[9]),
    .S(_016_),
    .Y(_000_[9])
  );
  \$_OR_  _090_ (
    .A(_035_),
    .B(_026_),
    .Y(_038_)
  );
  \$_ANDNOT_  _091_ (
    .A(data_in[9]),
    .B(_038_),
    .Y(_039_)
  );
  \$_XOR_  _092_ (
    .A(_039_),
    .B(data_in[10]),
    .Y(_040_)
  );
  \$_MUX_  _093_ (
    .A(_040_),
    .B(data_in[10]),
    .S(_016_),
    .Y(_000_[10])
  );
  \$_NAND_  _094_ (
    .A(data_in[10]),
    .B(data_in[9]),
    .Y(_041_)
  );
  \$_OR_  _095_ (
    .A(_041_),
    .B(_038_),
    .Y(_042_)
  );
  \$_XNOR_  _096_ (
    .A(_042_),
    .B(data_in[11]),
    .Y(_043_)
  );
  \$_MUX_  _097_ (
    .A(_043_),
    .B(data_in[11]),
    .S(_016_),
    .Y(_000_[11])
  );
  \$_ANDNOT_  _098_ (
    .A(data_in[11]),
    .B(_042_),
    .Y(_044_)
  );
  \$_XOR_  _099_ (
    .A(_044_),
    .B(data_in[12]),
    .Y(_045_)
  );
  \$_MUX_  _100_ (
    .A(_045_),
    .B(data_in[12]),
    .S(_016_),
    .Y(_000_[12])
  );
  \$_NAND_  _101_ (
    .A(data_in[12]),
    .B(data_in[11]),
    .Y(_046_)
  );
  \$_OR_  _102_ (
    .A(_046_),
    .B(_041_),
    .Y(_047_)
  );
  \$_ANDNOT_  _103_ (
    .A(_036_),
    .B(_047_),
    .Y(_048_)
  );
  \$_XOR_  _104_ (
    .A(_048_),
    .B(data_in[13]),
    .Y(_049_)
  );
  \$_MUX_  _105_ (
    .A(_049_),
    .B(data_in[13]),
    .S(_016_),
    .Y(_000_[13])
  );
  \$_AND_  _106_ (
    .A(_048_),
    .B(data_in[13]),
    .Y(_001_)
  );
  \$_XOR_  _107_ (
    .A(_001_),
    .B(data_in[14]),
    .Y(_002_)
  );
  \$_MUX_  _108_ (
    .A(_002_),
    .B(data_in[14]),
    .S(_016_),
    .Y(_000_[14])
  );
  \$_NAND_  _109_ (
    .A(data_in[14]),
    .B(data_in[13]),
    .Y(_003_)
  );
  \$_ANDNOT_  _110_ (
    .A(_048_),
    .B(_003_),
    .Y(_004_)
  );
  \$_XOR_  _111_ (
    .A(_004_),
    .B(data_in[15]),
    .Y(_005_)
  );
  \$_MUX_  _112_ (
    .A(_005_),
    .B(data_in[15]),
    .S(_016_),
    .Y(_000_[15])
  );
  \$_XOR_  _113_ (
    .A(counter[1]),
    .B(counter[0]),
    .Y(_051_[1])
  );
  \$_XOR_  _114_ (
    .A(_010_),
    .B(counter[2]),
    .Y(_051_[2])
  );
  \$_AND_  _115_ (
    .A(_010_),
    .B(counter[2]),
    .Y(_006_)
  );
  \$_XOR_  _116_ (
    .A(_006_),
    .B(counter[3]),
    .Y(_051_[3])
  );
  \$_XOR_  _117_ (
    .A(_012_),
    .B(counter[4]),
    .Y(_051_[4])
  );
  \$_AND_  _118_ (
    .A(_012_),
    .B(counter[4]),
    .Y(_007_)
  );
  \$_XOR_  _119_ (
    .A(_007_),
    .B(counter[5]),
    .Y(_051_[5])
  );
  \$_ORNOT_  _120_ (
    .A(_013_),
    .B(_012_),
    .Y(_008_)
  );
  \$_XNOR_  _121_ (
    .A(_008_),
    .B(counter[6]),
    .Y(_051_[6])
  );
  \$_ANDNOT_  _122_ (
    .A(counter[6]),
    .B(_008_),
    .Y(_009_)
  );
  \$_XOR_  _123_ (
    .A(_009_),
    .B(counter[7]),
    .Y(_051_[7])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[0]  /* _124_ */ (
    .AD(data_in[0]),
    .C(clk),
    .D(data_in[0]),
    .L(rst),
    .Q(data_out[0])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[1]  /* _125_ */ (
    .AD(data_in[1]),
    .C(clk),
    .D(_000_[1]),
    .L(rst),
    .Q(data_out[1])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[2]  /* _126_ */ (
    .AD(data_in[2]),
    .C(clk),
    .D(_000_[2]),
    .L(rst),
    .Q(data_out[2])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[3]  /* _127_ */ (
    .AD(data_in[3]),
    .C(clk),
    .D(_000_[3]),
    .L(rst),
    .Q(data_out[3])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[4]  /* _128_ */ (
    .AD(data_in[4]),
    .C(clk),
    .D(_000_[4]),
    .L(rst),
    .Q(data_out[4])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[5]  /* _129_ */ (
    .AD(data_in[5]),
    .C(clk),
    .D(_000_[5]),
    .L(rst),
    .Q(data_out[5])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[6]  /* _130_ */ (
    .AD(data_in[6]),
    .C(clk),
    .D(_000_[6]),
    .L(rst),
    .Q(data_out[6])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[7]  /* _131_ */ (
    .AD(data_in[7]),
    .C(clk),
    .D(_000_[7]),
    .L(rst),
    .Q(data_out[7])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[8]  /* _132_ */ (
    .AD(data_in[8]),
    .C(clk),
    .D(_000_[8]),
    .L(rst),
    .Q(data_out[8])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[9]  /* _133_ */ (
    .AD(data_in[9]),
    .C(clk),
    .D(_000_[9]),
    .L(rst),
    .Q(data_out[9])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[10]  /* _134_ */ (
    .AD(data_in[10]),
    .C(clk),
    .D(_000_[10]),
    .L(rst),
    .Q(data_out[10])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[11]  /* _135_ */ (
    .AD(data_in[11]),
    .C(clk),
    .D(_000_[11]),
    .L(rst),
    .Q(data_out[11])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[12]  /* _136_ */ (
    .AD(data_in[12]),
    .C(clk),
    .D(_000_[12]),
    .L(rst),
    .Q(data_out[12])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[13]  /* _137_ */ (
    .AD(data_in[13]),
    .C(clk),
    .D(_000_[13]),
    .L(rst),
    .Q(data_out[13])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[14]  /* _138_ */ (
    .AD(data_in[14]),
    .C(clk),
    .D(_000_[14]),
    .L(rst),
    .Q(data_out[14])
  );
  (* src = "entrada/trojan3.v:14.5-19.8" *)
  \$_ALDFF_PP_  \data_out_reg[15]  /* _139_ */ (
    .AD(data_in[15]),
    .C(clk),
    .D(_000_[15]),
    .L(rst),
    .Q(data_out[15])
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _140_ (
    .CK(clk),
    .D(_050_[0]),
    .Q(counter[0]),
    .RN(rst),
    .SN(1'h1)
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _141_ (
    .CK(clk),
    .D(_051_[1]),
    .Q(counter[1]),
    .RN(rst),
    .SN(1'h1)
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _142_ (
    .CK(clk),
    .D(_051_[2]),
    .Q(counter[2]),
    .RN(rst),
    .SN(1'h1)
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _143_ (
    .CK(clk),
    .D(_051_[3]),
    .Q(counter[3]),
    .RN(rst),
    .SN(1'h1)
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _144_ (
    .CK(clk),
    .D(_051_[4]),
    .Q(counter[4]),
    .RN(rst),
    .SN(1'h1)
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _145_ (
    .CK(clk),
    .D(_051_[5]),
    .Q(counter[5]),
    .RN(rst),
    .SN(1'h1)
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _146_ (
    .CK(clk),
    .D(_051_[6]),
    .Q(counter[6]),
    .RN(rst),
    .SN(1'h1)
  );
  (* src = "entrada/trojan3.v:8.5-13.8" *)
  dff _147_ (
    .CK(clk),
    .D(_051_[7]),
    .Q(counter[7]),
    .RN(rst),
    .SN(1'h1)
  );
  assign _000_[0] = data_in[0];
  assign _050_[7:1] = counter[7:1];
  assign _051_[0] = _050_[0];
endmodule
