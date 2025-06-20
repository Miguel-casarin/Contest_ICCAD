/* Generated by Yosys 0.33 (git sha1 2584903a060) */

(* top =  1  *)
(* src = "entrada/trojan5.v:1.1-18.10" *)
module Trojan5(pon_rst_n_i, prog_dat_i, pc_reg, prog_adr_o);
  wire _000_;
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
  wire _050_;
  wire _051_;
  wire _052_;
  (* src = "entrada/trojan5.v:4.23-4.29" *)
  input [12:0] pc_reg;
  wire [12:0] pc_reg;
  (* src = "entrada/trojan5.v:2.16-2.27" *)
  input pon_rst_n_i;
  wire pon_rst_n_i;
  (* src = "entrada/trojan5.v:5.24-5.34" *)
  output [12:0] prog_adr_o;
  wire [12:0] prog_adr_o;
  (* src = "entrada/trojan5.v:3.23-3.33" *)
  input [13:0] prog_dat_i;
  wire [13:0] prog_dat_i;
  \$_NOR_  _053_ (
    .A(prog_dat_i[11]),
    .B(prog_dat_i[10]),
    .Y(_000_)
  );
  \$_ANDNOT_  _054_ (
    .A(prog_dat_i[13]),
    .B(prog_dat_i[12]),
    .Y(_001_)
  );
  \$_NAND_  _055_ (
    .A(_001_),
    .B(_000_),
    .Y(_002_)
  );
  \$_ANDNOT_  _056_ (
    .A(prog_dat_i[10]),
    .B(prog_dat_i[11]),
    .Y(_003_)
  );
  \$_AND_  _057_ (
    .A(_003_),
    .B(_001_),
    .Y(_004_)
  );
  \$_ANDNOT_  _058_ (
    .A(_002_),
    .B(_004_),
    .Y(_005_)
  );
  \$_ORNOT_  _059_ (
    .A(prog_dat_i[10]),
    .B(prog_dat_i[11]),
    .Y(_006_)
  );
  \$_ANDNOT_  _060_ (
    .A(_001_),
    .B(_006_),
    .Y(_007_)
  );
  \$_ANDNOT_  _061_ (
    .A(_005_),
    .B(_007_),
    .Y(_008_)
  );
  \$_NAND_  _062_ (
    .A(prog_dat_i[11]),
    .B(prog_dat_i[10]),
    .Y(_009_)
  );
  \$_ANDNOT_  _063_ (
    .A(_001_),
    .B(_009_),
    .Y(_010_)
  );
  \$_ANDNOT_  _064_ (
    .A(_008_),
    .B(_010_),
    .Y(_011_)
  );
  \$_ORNOT_  _065_ (
    .A(prog_dat_i[13]),
    .B(prog_dat_i[12]),
    .Y(_012_)
  );
  \$_ANDNOT_  _066_ (
    .A(_000_),
    .B(_012_),
    .Y(_013_)
  );
  \$_ANDNOT_  _067_ (
    .A(_011_),
    .B(_013_),
    .Y(_014_)
  );
  \$_ANDNOT_  _068_ (
    .A(_003_),
    .B(_012_),
    .Y(_015_)
  );
  \$_ANDNOT_  _069_ (
    .A(_014_),
    .B(_015_),
    .Y(_016_)
  );
  \$_NOR_  _070_ (
    .A(_012_),
    .B(_006_),
    .Y(_017_)
  );
  \$_ANDNOT_  _071_ (
    .A(_016_),
    .B(_017_),
    .Y(_018_)
  );
  \$_NOR_  _072_ (
    .A(_012_),
    .B(_009_),
    .Y(_019_)
  );
  \$_ANDNOT_  _073_ (
    .A(_018_),
    .B(_019_),
    .Y(_020_)
  );
  \$_NAND_  _074_ (
    .A(prog_dat_i[13]),
    .B(prog_dat_i[12]),
    .Y(_021_)
  );
  \$_ANDNOT_  _075_ (
    .A(_000_),
    .B(_021_),
    .Y(_022_)
  );
  \$_ANDNOT_  _076_ (
    .A(_020_),
    .B(_022_),
    .Y(_023_)
  );
  \$_ANDNOT_  _077_ (
    .A(_003_),
    .B(_021_),
    .Y(_024_)
  );
  \$_NOR_  _078_ (
    .A(_024_),
    .B(_023_),
    .Y(_025_)
  );
  \$_NAND_  _079_ (
    .A(_025_),
    .B(pon_rst_n_i),
    .Y(_026_)
  );
  \$_XNOR_  _080_ (
    .A(_026_),
    .B(pc_reg[1]),
    .Y(prog_adr_o[1])
  );
  \$_XOR_  _081_ (
    .A(pc_reg[2]),
    .B(pc_reg[1]),
    .Y(_027_)
  );
  \$_MUX_  _082_ (
    .A(_027_),
    .B(pc_reg[2]),
    .S(_026_),
    .Y(prog_adr_o[2])
  );
  \$_AND_  _083_ (
    .A(pc_reg[2]),
    .B(pc_reg[1]),
    .Y(_028_)
  );
  \$_XOR_  _084_ (
    .A(_028_),
    .B(pc_reg[3]),
    .Y(_029_)
  );
  \$_MUX_  _085_ (
    .A(_029_),
    .B(pc_reg[3]),
    .S(_026_),
    .Y(prog_adr_o[3])
  );
  \$_AND_  _086_ (
    .A(_028_),
    .B(pc_reg[3]),
    .Y(_030_)
  );
  \$_XOR_  _087_ (
    .A(_030_),
    .B(pc_reg[4]),
    .Y(_031_)
  );
  \$_MUX_  _088_ (
    .A(_031_),
    .B(pc_reg[4]),
    .S(_026_),
    .Y(prog_adr_o[4])
  );
  \$_NAND_  _089_ (
    .A(pc_reg[4]),
    .B(pc_reg[3]),
    .Y(_032_)
  );
  \$_ANDNOT_  _090_ (
    .A(_028_),
    .B(_032_),
    .Y(_033_)
  );
  \$_XOR_  _091_ (
    .A(_033_),
    .B(pc_reg[5]),
    .Y(_034_)
  );
  \$_MUX_  _092_ (
    .A(_034_),
    .B(pc_reg[5]),
    .S(_026_),
    .Y(prog_adr_o[5])
  );
  \$_AND_  _093_ (
    .A(_033_),
    .B(pc_reg[5]),
    .Y(_035_)
  );
  \$_XOR_  _094_ (
    .A(_035_),
    .B(pc_reg[6]),
    .Y(_036_)
  );
  \$_MUX_  _095_ (
    .A(_036_),
    .B(pc_reg[6]),
    .S(_026_),
    .Y(prog_adr_o[6])
  );
  \$_NAND_  _096_ (
    .A(pc_reg[6]),
    .B(pc_reg[5]),
    .Y(_037_)
  );
  \$_ANDNOT_  _097_ (
    .A(_033_),
    .B(_037_),
    .Y(_038_)
  );
  \$_XOR_  _098_ (
    .A(_038_),
    .B(pc_reg[7]),
    .Y(_039_)
  );
  \$_MUX_  _099_ (
    .A(_039_),
    .B(pc_reg[7]),
    .S(_026_),
    .Y(prog_adr_o[7])
  );
  \$_AND_  _100_ (
    .A(_038_),
    .B(pc_reg[7]),
    .Y(_040_)
  );
  \$_XOR_  _101_ (
    .A(_040_),
    .B(pc_reg[8]),
    .Y(_041_)
  );
  \$_MUX_  _102_ (
    .A(_041_),
    .B(pc_reg[8]),
    .S(_026_),
    .Y(prog_adr_o[8])
  );
  \$_NAND_  _103_ (
    .A(pc_reg[8]),
    .B(pc_reg[7]),
    .Y(_042_)
  );
  \$_OR_  _104_ (
    .A(_042_),
    .B(_037_),
    .Y(_043_)
  );
  \$_ANDNOT_  _105_ (
    .A(_033_),
    .B(_043_),
    .Y(_044_)
  );
  \$_XOR_  _106_ (
    .A(_044_),
    .B(pc_reg[9]),
    .Y(_045_)
  );
  \$_MUX_  _107_ (
    .A(_045_),
    .B(pc_reg[9]),
    .S(_026_),
    .Y(prog_adr_o[9])
  );
  \$_AND_  _108_ (
    .A(_044_),
    .B(pc_reg[9]),
    .Y(_046_)
  );
  \$_XOR_  _109_ (
    .A(_046_),
    .B(pc_reg[10]),
    .Y(_047_)
  );
  \$_MUX_  _110_ (
    .A(_047_),
    .B(pc_reg[10]),
    .S(_026_),
    .Y(prog_adr_o[10])
  );
  \$_NAND_  _111_ (
    .A(pc_reg[10]),
    .B(pc_reg[9]),
    .Y(_048_)
  );
  \$_ANDNOT_  _112_ (
    .A(_044_),
    .B(_048_),
    .Y(_049_)
  );
  \$_XOR_  _113_ (
    .A(_049_),
    .B(pc_reg[11]),
    .Y(_050_)
  );
  \$_MUX_  _114_ (
    .A(_050_),
    .B(pc_reg[11]),
    .S(_026_),
    .Y(prog_adr_o[11])
  );
  \$_AND_  _115_ (
    .A(_049_),
    .B(pc_reg[11]),
    .Y(_051_)
  );
  \$_XOR_  _116_ (
    .A(_051_),
    .B(pc_reg[12]),
    .Y(_052_)
  );
  \$_MUX_  _117_ (
    .A(_052_),
    .B(pc_reg[12]),
    .S(_026_),
    .Y(prog_adr_o[12])
  );
  assign prog_adr_o[0] = pc_reg[0];
endmodule
