// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jul  2 10:45:48 2024
// Host        : Ethan-Lowder-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_16,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [8:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [10:0]S;
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
  (* c_a_type = "1" *) 
  (* c_a_width = "9" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "11" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2624)
`pragma protect data_block
TfJH6GHuajMeauJTRhUyl7OzSanq/meffUkKGz29FN2w7XCt4isotRMGWIS8W4L2R0MbQQArb5Gl
u+zoEbpHfOj7U4R0NNALqTyWlmJmrKz/tk0h7wJHMRRCYoCHtL25Hw91OH1sa7OQliBWDtOdlMY2
X6KZQlj/uITFKdisfOZoLyxW8eir0c4Ne5mY+6jmHxhdu9UAWaixoix4qOZBX5Wp+DXkkRuZTYNI
EwSnYftdOPqVEw4sjKbslkmIqWndSrI+mTYNLxpFTu70OHTM+XzlDMAIMb8brvspySfyd4n55HgX
/EX4eNlEjN6uedYHGzngOS+1IENKK1Qp5/kTsm2QiYOV7/mfv6NSkf17Gtmvi6JeJpvEtTHnwTuS
6qfvKlFszA+HqcTUZdrSYb5j37WS9Cs7B3wuQNnBd8beScMKyqbc4RllbaQpJuFAsBN+BsYh/yia
r8rW2i3iLREm6FKUtSZvJ6jCgmavpmzEpzI4urUpZW+x9sM+OEWWQqKNFF8s382oxPmy3C4sNJMa
R9peAKjhGuGam6fTgmcUlRHjUnvurqxUXWdbTyM/R6rkSSdGJ9VPXW33/Vh9iafBy0r/ZTh0TzFe
ogB5tMaPhs82Q+ebsoWZpSCMxaLhFUz7aYbjC5wMLOT2l8FSZnbuEn6MGV+6UHCRzik/Vz7c5Sb1
szGOAhPPT3SrUpZyBbLUI90O2ItflEK8SP0JYEpKJzt9Jej6OVhml5ktDQ02ozMHDoggjLmwVtNv
JUVWel4gfa6qlmlh/fVjeSbonJxbkTjLeRrUTieDE9gTWlvFny9jWwYPRMlat6xrlGa4w+ScSBsS
yyQ1V09a+OKjoao4iQGiBC9Ecku3dXid7ZpvaDvWeVJmYH/cUui/rO+YEy0jsRnDN6jiMBMNw6wV
lg1DHdc24erkLXTydgkHfeXfyIDuzOAofgopF0UEpgfjnJsOvmCwCosxlhM07+XimLP5GhwDUxLT
592QlDVxQF6kDPrg+uc1Pfa+CWIouic0ymYJt75sDTHLAkhKYUPvzn9lS1UKOosWlrf/ZHU1+JLo
gKjp3XWupSIh457GxI4Ul+D0uiwKoSj7uoCpzWGgvfydzNQZY7bo9hi8KBMXkFNqCrET7VaRklaJ
IxpCatphSsph5FbMKQqR3DyyNiAJT9CSe6WuohwV1buZo7laVWiUP69Asa8G6MlE5zms9rln8eC/
CtilaLAtytQjCfHM9Iy7EYe+aCcUHIxDZFVj6SO3QnxrllOsMz6iXUSKsfPYdiHG+mdqEh8uP6lB
o5a5e3QpwVg8XBRs3gz1zPKSMkXGXtUu4pTtaao0mvVTvcN0TWcPuqxI4fqY/cJKaoI7z/DRvfZW
FMNLvFwF/RNDiWaEK+3BlJRuPHjOadjkXYzzZYVPbT3AK1wgkHg0wNnjytcGndcxVdghvzWaIQft
OnFvtgkVjwZKrwn5jK3KZUzDT7DSdhHP1VA2vJ4kiGBkNaVpWPOBfg6awmMUJc8bF59UGnrzwojV
h69EVqJrOETPy5Kler6StpnQG1Wf5VstE770QbaXj5k/n7iGbGZYID149Eaya+/j61N1yv8U8lFx
SfGaRwcu8RIJx1Vek43qapQV9uj3wLFWGzJhDHUjPmI1lD+R1Xekq4OHYxRLgao+CfoZXoKoAEZ1
fmPHnDr3UxullaNKFHFeAjP/qWLamCqDhm18LTrHKcVvMwAGB4wgjIJx4Olh4oLODHaPUMfM+029
HChh/tZyQiT4VHHwJ57ciRKKdJaJ4SdHfeL3REvKpmWOEAqiuUEOiuxe6ACE3NuXhTsEn6ZBcZba
QWKq3ATYZde4SO2Ux6ZhxEWbqpXD4ova2/wa4w2Px7A0TWscr1xGnXwgoonYYNIgjNqWpThyTpFp
SzO7E4Pkfg59KqmdmCx7AiYiwf8lO/Iu6fi90wKsWxdqCun4bFQIO30NjbrX5anuouwRCuP8Hh8X
mc34+jGP7EflrPIfVbtqczjuhLW0eHNYU6VLLWBx8TR0aHj6gFlpWAKRUvxT7OgqXCT/wbLZKkMZ
iIMi7nMxptTepsWl8dTHgddlEARhiX3nsd163Yj7ETl7aVesAADHm+xg1nyekBD33xZgFJmOou1/
o0w8ZkGo6k/zl4nmqN0eH0x7uX0krMLZ9GYmg2g4c2dst700b09RGUKefO1KU7uz+bunqU57zcXG
1WgN0Vw0hpc/QVmMinjzMK9rESFGSqv7FK0D0RW/F0iIpcJMDqmRUWOvx8QjL4m68Q3k6/zb0+ZP
YaPC5sXNcoiAiv4OAZzw5BNsrL6Y2JZzV24OShY6/cwY5LaF1r6eZ6SQbhMTalJcP3vKSx0PHHG3
dQe7UruWvTiEewK6suUl+QP+GaDzmHnKY1z6cm0U7Z9c1lCohTFVjkzOaZ/prL++6KA34Sytw0eH
Asfvo2043Dq/6AJ3dbZAv9Sh3mEXSKaDs5+LLASEtKzN5wBlOYEkp1vBCsi0uTEhOOy/BYMKSQz2
Z1E/FlJ7KLHMYBY5TuH5RoebmRf0dcE7Imlsyw+cwE6gU70ts48iZWSwjgEGwjDiO4+ejtvduSv0
S6bOpmBPtjCBBmbhrYr5eGwn4OHLQHbuXkUsRudu7rJ822NcK450w8TCt0QxXfycB6hnTDK2CFpI
IaBIO7jzbZCeXe7NPMys6T+GlVJcthZKiMvXk+/iNOC0UUi/VT8Q8sZFwSEmXsLBk7CYY/s3qe0S
L87puCbqpJpPd/an9oGu3OnKfMbB/MdRZkRzcVsMUBPFzmT/3UAFjzFdGhnXVUMKm/dMX488Ne94
twFWx0BDBEwbZ8M/HebdZw/6Yo6J5Q4xoqMSqz06qqEubLr8xguzNS8SDw8UVR+65ec0Ku02Gufk
qvmzJgTZD+VnwCSZ0aVkCiKEbbOBb6akRFoDv86O7En+zNXkuYPqmJpQc9wIOH2pUiSqVk3tLw02
b97mCLwcOSHyptDSMj9xpgi3Z9/u3sXQX80CBOJuvMcC4vIoB/4bUJ+MFm/5Xds0xDXkweFdXFqT
2+snzJ8ERjDHjei9BZZCcfJcB7sSiQbDsRJpiw/CiDu9A829gnp8L8JYUEU68fBeQfDxxsR/yrcH
NJAsRToO26a0IMSjL2dxo3vE5VW37yzAeFsgqG4MBQc6mnZmHDqsXBhIlDfLxNGzTa9U/b5faZvs
tLhUL3LMvQXa2aUju8A6l4RHNsSe/PbL64G5w8i1XoIaFA+/oygs8u8RZOT91QwUd7Z8Ns63/h9j
gYKpEi+uHfj8TMWA/kYvy/OyNOptbF8I7fN3Me3rjwdlDhpwwDuKML/xyVXurA9e1ANNDp1q8nzs
8rFQq0XtQ6KZwbSlfs+78ZjqDhuGe37izYaQX3sx2zPPnhXFORNB83Yy36S6KYyXEWdSbuu0pu30
TBNirpXtE09qYnKNskzhDyRpIv0XHK0kDGAToO4idl4NhA+kFdMN84mLi9fdKUooeyiu2IqeT5Vh
Zb0=
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
blUYNQsRlKZ1uHInlQdm6NW6kMy8+VzDtTpmwmyBSbgPxFkboV7t+/USWmvjH9v+WRRapsHqCfc6
JVUMDWWoPthod15bw5D/CqyZeDGZL4ifMx1+IjtidyYrQa1lWIoaJnEcCKyNV+xmlLUCLdQSUNEQ
0x5EDLWfbEe1kmJNkIWC4AojwkQho35U1X9uT4bwwAfe7bGobRvwci9I3cJ6l1inZdqDrAFnCGsw
hJWOsTRnviN1URHN9/eKP/wm2YHy0XaQz5NheohY/AIN3wv2nUwHlbLscaEe0GiBszc2bR/Y9qjP
nu4zFteSer9oUf0kjBLcpg6vCZMg1GPtowdxVA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4sBtGnNi3tiWPvxNkHrIlkVmcPqIQSAWZL/AbaKSoJowyOzic68GMfNSN+RzMB4MWzNZsHtZ3b6t
CZxtQ8lT9qjL3FSQpQNYoKbOREutIMGAONFKGKvP5ELEd8NlwCPT15Gks1BnEC041fH4RknR+IO6
0qwiWQLRRaFP3nFgB6HgijjEUJMgH54jOsHa3XlEZ3cx6uleK97yhJCo39eh2e2rwb+n959tUBm0
LncMV0IYIN6Q4e99jMoghkgy9BD8Ec8ANivzQx6NDtAavYxkDWaoNWFc/GI3YJYkDQuTEwf6K6Qw
vTpoVyLT7iA51vMPmmOUBlYSoBChizvpDuV4wg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9536)
`pragma protect data_block
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
9Ih/71ZkwZjAqgu+vumfoMg=
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
