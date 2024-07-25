// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jul 17 16:23:15 2024
// Host        : Ethan-Lowder-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_1_sim_netlist.v
// Design      : c_addsub_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_1,c_addsub_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_16,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000" *) 
  (* c_b_width = "9" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_16 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ksEefSVwxJ7GZRGfDW/ikJjjKrptVqn8BoUNFE3DbyFfbjY6zlYjVU2CwELAYvgfKaBSrfyMEuMS
jKlgb8yavCVUJwldPyfxtdCTc4Xwwf5euzW2dlEPW6GJ/QR3MDQqWj87hbjhXiaVYBETI5rDAwxs
ag0jDyfGbH7Fx+g9iHA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUnXggesQ6wFp8A8d+M/2l15nNVdxv4BePG1TQSaW5ydG6gBnt1y3X+nKLPfsAAKMgY0S9HUXdwI
BtWpUk5399XEOzA2bD1xmv0kwgpoz7POYIpgdAx/BCQF4rvktNKhi//x7IGo53UxJVwDFGgSASrO
U5lhhW3AIMh5QGWdNY6U3TzkCUAU/h8BrAIu8xVBUHfzif45XFeiMwPEQ+uf9C38tdN1byBWu1D/
bdHKHLEoQ180FM40kDg21Tnzo1CCw9O7115GHzGr/Y7RqsUoXbHr1346oJXf0hxxsDt9e/cTljtl
4L97UAEqQxYqk45h7XMoUAz/YbWBBiDhQKrR3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iNgUNYpqDDi+BiL6da8RD7fGSSVTBewyOT5AwUszNtVY2QTxMMGmpdt4Wl8wGrjG/+93rEl2nPxj
fVk7z+ka8eUaCXkzXlWBjwMeJ90rJ8KO4FihwKtjjMiQquSLwyNR5pyyZNTkHBdNAkkDc8PkCtch
58pttA9zypiv98tm7zU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l9wV41MkDixx33FFiTcl/1LF3h1Ssk8tRJ69dtGKsXv9zoUl5Bxiuu/o/WzYfpCq3B5+G2qijP2Z
OIQg8dZnpVNEIlnCHyi/D8CgxGpnjTB9agrcv8p2uJfjEuchqWILowpBGaVDhzCH2CHEpi+ZHflK
AxkMClCs1aA/6Q0ZWIYTncVkAAMhjwkaIom1j7aWSm2i/zWAtmSZoLTcPpp31mhQRIss1MVGJsOR
Sh3metVPfaNOi3KvYM6QrxiVtTHO3a2wssYRgjTs87/jOj8J10HlZpV6TokY4thLe0cPSSEjglvq
P6RT4BZgxEuLA0F8c6+3OkGNR8Kzq00egupHgQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1b99Vg2radkzd2aDsrt07EnR9e4ghAuZTvdCwZ+Rfi+k0hCjhsY9FlMOKqmtC+lX1MNCBSeHgsNL
vC3O2ZjgIz/EMJCZZakXOrMcAGXIynPJrLgl1NY5RYyI0zJywRaKse7wLpCuqecTGBXUl9G57HTW
PPOgFQhib3Ya2IhicH3fARyC1eaTsrN27wBxP2SbDYBj+LDXG4uwVuxMwtLTV+0UvQmmIoppVGpZ
Ua7OYpyUmmyrNO0BBZV5rC+vJvv2uz6EYEInAbf/YvilBXxRCEmPVuo9PJwi37qvELSx0oUJaLW6
SpcXmCGOcObaWn+sWfPSIS9G56CPukLR9CbTsg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hrNBtOO525Y/qYPVt97xz4nxrMCJQmfV2TjTo00Y7cfC33GktlBrkj8AmqRWBwL54BC7INRnv+EM
dUB9k9sPwhzMDNgYx8Xs2o/+fBIofwnwjLpcykEeIl738vyCoa0SoxeK9v3Ks6oRRe19naTyXBZh
SSMXrAfLivnebn00pk2fIzGR0yUlYBnm1wM0LgODxBtx1gf57R3WPAX+iP12db7Jr/J1AtuhOpN3
LTnpRVg++HfBpxysFJlYUWYkMOcIj3QDjVCSVYLaf6+1Ir6izPggk614ydQW49xFI1feXBQmCdZj
GRAjYR+lgC7YQ2AYnnUzYpc0gNszwtpJjNz1kg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nV7nxF322RjcviTHhbV5But2nl7UvqvHOdctqSW5Chm+DWLRVeX5/RuqZiIggqahWMnCxKI8LbWs
tMgeFuwfZEDdkccQY+u8uRg70PK0ubEgM9V9yEadlgOcHGAcGWfEKlOP/4NUztFqY5W8lCjrq6Rw
+hAjup6bYkwhbjs1bYgO80It/T4sXDfmF6EFgGX34uqF+TeyqyfJTzh98ST/I6H9/SdQo/JQxbto
b/urscmiQUqDbmopEJpCzfPQR+MKUxzMhdXFmX6MmzhjsAjc7sUT3GVtsk5lSPK9foIK66/+mX3S
nPsq9e/4M7tDfoV1noDtEdGcaq8//O9/65wEUA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
D8vjA0bcs03atqVGl9n4waeXMx0cq7qqplOEpHoCsxcjrnCmleai/szQA+0wbIEOHR04zff/ikRf
JfA6YDU0wnRfi0x4K705Tkr7rwfpaJC+OTW4mKdBL8Wqm7ecjAreXQZVb6p6QVNaz4TrNairCp5R
5QeCslFvljCeKS+guLuFf441sciBjxYQDawtKwF1Lw0hFVg65PDaIdwzamCMJclhyPZ5oHnSTkFB
ZmjEtufNQD/lGIWS+MkwUVvdra98hC0JnQ8pwRQ/hdATIAIIm0LSL8Uq1X3GrUpk+2+r1a6L8N+l
aCeDJtDzvLPGVOI57FFRQEKUjjBea2T10d8Crvq90r84OEfcooPJz1OYhLGEyem5+xJ+h7KrvSQA
zpj8OngSFSDWg2l5GH1kY9p1qg9fuOMyhWC+tMFVuYTkZAY/gPWq6vpY+1A+1mtMb0fBdk3JiQx9
JRtQR3lE/tLwyB0ggWJJcPniIccaxxv2ixKSQKq3WPCyPMnkcWlLuAES

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdWuCO7PN7y/dH6CMR4JA05yurwi5lHIUjuk6g7VXrZ9GYhlTKmpCWlV0uGRUBrVMqBEOdEC+Qdo
3z23v5MofUgIVxjUAp/sUgwHIK6W6h79woMKhZ7Q8xOWMPZOLmuapnKFf81WzFnIBNCB6t14gJVU
px/ycQC6omaG/j9kW5E5E5SL6k3JPQazmLq4Xr2LJxBV0vQK7H4f53R4BHTUJa2f4FYma0lxdz44
oyi/sA2g6j+/1BusYznWbR1i4g6N5/yKHaQsVC8avD4Za+oFFIibqpFCH/pXnCw9xbVBmqb/6oXr
bryFUy7yXCVAcYqaw6V/UGRHO3IpM/9pCUt6zA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2640)
`pragma protect data_block
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
OkGWfOnn4VIcLjYpCH2fsjPm
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ksEefSVwxJ7GZRGfDW/ikJjjKrptVqn8BoUNFE3DbyFfbjY6zlYjVU2CwELAYvgfKaBSrfyMEuMS
jKlgb8yavCVUJwldPyfxtdCTc4Xwwf5euzW2dlEPW6GJ/QR3MDQqWj87hbjhXiaVYBETI5rDAwxs
ag0jDyfGbH7Fx+g9iHA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUnXggesQ6wFp8A8d+M/2l15nNVdxv4BePG1TQSaW5ydG6gBnt1y3X+nKLPfsAAKMgY0S9HUXdwI
BtWpUk5399XEOzA2bD1xmv0kwgpoz7POYIpgdAx/BCQF4rvktNKhi//x7IGo53UxJVwDFGgSASrO
U5lhhW3AIMh5QGWdNY6U3TzkCUAU/h8BrAIu8xVBUHfzif45XFeiMwPEQ+uf9C38tdN1byBWu1D/
bdHKHLEoQ180FM40kDg21Tnzo1CCw9O7115GHzGr/Y7RqsUoXbHr1346oJXf0hxxsDt9e/cTljtl
4L97UAEqQxYqk45h7XMoUAz/YbWBBiDhQKrR3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iNgUNYpqDDi+BiL6da8RD7fGSSVTBewyOT5AwUszNtVY2QTxMMGmpdt4Wl8wGrjG/+93rEl2nPxj
fVk7z+ka8eUaCXkzXlWBjwMeJ90rJ8KO4FihwKtjjMiQquSLwyNR5pyyZNTkHBdNAkkDc8PkCtch
58pttA9zypiv98tm7zU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l9wV41MkDixx33FFiTcl/1LF3h1Ssk8tRJ69dtGKsXv9zoUl5Bxiuu/o/WzYfpCq3B5+G2qijP2Z
OIQg8dZnpVNEIlnCHyi/D8CgxGpnjTB9agrcv8p2uJfjEuchqWILowpBGaVDhzCH2CHEpi+ZHflK
AxkMClCs1aA/6Q0ZWIYTncVkAAMhjwkaIom1j7aWSm2i/zWAtmSZoLTcPpp31mhQRIss1MVGJsOR
Sh3metVPfaNOi3KvYM6QrxiVtTHO3a2wssYRgjTs87/jOj8J10HlZpV6TokY4thLe0cPSSEjglvq
P6RT4BZgxEuLA0F8c6+3OkGNR8Kzq00egupHgQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1b99Vg2radkzd2aDsrt07EnR9e4ghAuZTvdCwZ+Rfi+k0hCjhsY9FlMOKqmtC+lX1MNCBSeHgsNL
vC3O2ZjgIz/EMJCZZakXOrMcAGXIynPJrLgl1NY5RYyI0zJywRaKse7wLpCuqecTGBXUl9G57HTW
PPOgFQhib3Ya2IhicH3fARyC1eaTsrN27wBxP2SbDYBj+LDXG4uwVuxMwtLTV+0UvQmmIoppVGpZ
Ua7OYpyUmmyrNO0BBZV5rC+vJvv2uz6EYEInAbf/YvilBXxRCEmPVuo9PJwi37qvELSx0oUJaLW6
SpcXmCGOcObaWn+sWfPSIS9G56CPukLR9CbTsg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hrNBtOO525Y/qYPVt97xz4nxrMCJQmfV2TjTo00Y7cfC33GktlBrkj8AmqRWBwL54BC7INRnv+EM
dUB9k9sPwhzMDNgYx8Xs2o/+fBIofwnwjLpcykEeIl738vyCoa0SoxeK9v3Ks6oRRe19naTyXBZh
SSMXrAfLivnebn00pk2fIzGR0yUlYBnm1wM0LgODxBtx1gf57R3WPAX+iP12db7Jr/J1AtuhOpN3
LTnpRVg++HfBpxysFJlYUWYkMOcIj3QDjVCSVYLaf6+1Ir6izPggk614ydQW49xFI1feXBQmCdZj
GRAjYR+lgC7YQ2AYnnUzYpc0gNszwtpJjNz1kg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nV7nxF322RjcviTHhbV5But2nl7UvqvHOdctqSW5Chm+DWLRVeX5/RuqZiIggqahWMnCxKI8LbWs
tMgeFuwfZEDdkccQY+u8uRg70PK0ubEgM9V9yEadlgOcHGAcGWfEKlOP/4NUztFqY5W8lCjrq6Rw
+hAjup6bYkwhbjs1bYgO80It/T4sXDfmF6EFgGX34uqF+TeyqyfJTzh98ST/I6H9/SdQo/JQxbto
b/urscmiQUqDbmopEJpCzfPQR+MKUxzMhdXFmX6MmzhjsAjc7sUT3GVtsk5lSPK9foIK66/+mX3S
nPsq9e/4M7tDfoV1noDtEdGcaq8//O9/65wEUA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
D8vjA0bcs03atqVGl9n4waeXMx0cq7qqplOEpHoCsxcjrnCmleai/szQA+0wbIEOHR04zff/ikRf
JfA6YDU0wnRfi0x4K705Tkr7rwfpaJC+OTW4mKdBL8Wqm7ecjAreXQZVb6p6QVNaz4TrNairCp5R
5QeCslFvljCeKS+guLuFf441sciBjxYQDawtKwF1Lw0hFVg65PDaIdwzamCMJclhyPZ5oHnSTkFB
ZmjEtufNQD/lGIWS+MkwUVvdra98hC0JnQ8pwRQ/hdATIAIIm0LSL8Uq1X3GrUpk+2+r1a6L8N+l
aCeDJtDzvLPGVOI57FFRQEKUjjBea2T10d8Crvq90r84OEfcooPJz1OYhLGEyem5+xJ+h7KrvSQA
zpj8OngSFSDWg2l5GH1kY9p1qg9fuOMyhWC+tMFVuYTkZAY/gPWq6vpY+1A+1mtMb0fBdk3JiQx9
JRtQR3lE/tLwyB0ggWJJcPniIccaxxv2ixKSQKq3WPCyPMnkcWlLuAES

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdWuCO7PN7y/dH6CMR4JA05yurwi5lHIUjuk6g7VXrZ9GYhlTKmpCWlV0uGRUBrVMqBEOdEC+Qdo
3z23v5MofUgIVxjUAp/sUgwHIK6W6h79woMKhZ7Q8xOWMPZOLmuapnKFf81WzFnIBNCB6t14gJVU
px/ycQC6omaG/j9kW5E5E5SL6k3JPQazmLq4Xr2LJxBV0vQK7H4f53R4BHTUJa2f4FYma0lxdz44
oyi/sA2g6j+/1BusYznWbR1i4g6N5/yKHaQsVC8avD4Za+oFFIibqpFCH/pXnCw9xbVBmqb/6oXr
bryFUy7yXCVAcYqaw6V/UGRHO3IpM/9pCUt6zA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MaiiVuj1FJr7tIKqIW49HReUkf+XJEnenWLRjm7ys/weit84Lw9KvbtfZAbxHQSA5Eh/UFoqMyQW
f0EZsO9ioWSU0ZAW4WwLzCLOHX6HpL4vGm0VxC4SeIHyF4/Bv5gzI8ewav2jvsum4Dg3ouB60Fvo
sJATV9wFSXo+JtDLlZ0osujyvbSaORxtXirvQthzVzyVQjlVGF/DOfE1qdv3Nv+IfIwR3/MmbNPX
muyi347t7THMDPGix1ERG1pF0zzAijqskDEJjDLiDBK9ucim5Y9BobDUbZ/5v4HmN3ikPHhnjfTA
vZ+WlnU8Uktomv+la1mck9SlW9ZWl7ps9GNaRQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qgaQFTaxTsZiVj8UCQ6IyYWjet1e1aTP6Gn8CubQhf9fpyVaUAyyJ2QENCdJaHZdI0bymrSAgezh
RXHcB1JiNEGmINprtnGNEqbwELik1eoFOprpMuE83SVr/M9qb6TPzPPjVThjLTlx0TBSq673w7+P
hKHXfHSI9kYTnRo+Mo+eJ6cSc+pDocIQD+bj+NyN8FXM8sGRVaxG2i36Ry6q9Hb8/lO91wzoZXiT
/Ig7iBoDULKN5KRmhhiKr14CvyWy7yKRtJ14b5k/4ErRioW503FmBCm15vrS65HocnBiAFKSWF5o
O7SkGyh6acx8g02/JhtFFSiHvVTMIhIIQY/phw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15008)
`pragma protect data_block
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
xlItE9BvH66GERp//SZf018=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
