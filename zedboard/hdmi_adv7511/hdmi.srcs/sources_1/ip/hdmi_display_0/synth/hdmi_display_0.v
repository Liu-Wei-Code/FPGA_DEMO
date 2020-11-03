// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:hdmi_display:1.0
// IP Revision: 1

(* X_CORE_INFO = "hdmi_display,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "hdmi_display_0,hdmi_display,{}" *)
(* CORE_GENERATION_INFO = "hdmi_display_0,hdmi_display,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=hdmi_display,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module hdmi_display_0 (
  i2c_clk,
  vga_clk,
  vga_clk_90,
  rgb_in,
  hsync_in,
  vsync_in,
  de_in,
  hdmi_clk,
  hdmi_hsync,
  hdmi_vsync,
  hdmi_d,
  hdmi_de,
  hdmi_scl,
  hdmi_sda
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i2c_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i2c_clk CLK" *)
input wire i2c_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vga_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vga_clk CLK" *)
input wire vga_clk;
input wire vga_clk_90;
input wire [23 : 0] rgb_in;
input wire hsync_in;
input wire vsync_in;
input wire de_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hdmi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hdmi_clk CLK" *)
output wire hdmi_clk;
output wire hdmi_hsync;
output wire hdmi_vsync;
output wire [15 : 0] hdmi_d;
output wire hdmi_de;
output wire hdmi_scl;
inout wire hdmi_sda;

  hdmi_display inst (
    .i2c_clk(i2c_clk),
    .vga_clk(vga_clk),
    .vga_clk_90(vga_clk_90),
    .rgb_in(rgb_in),
    .hsync_in(hsync_in),
    .vsync_in(vsync_in),
    .de_in(de_in),
    .hdmi_clk(hdmi_clk),
    .hdmi_hsync(hdmi_hsync),
    .hdmi_vsync(hdmi_vsync),
    .hdmi_d(hdmi_d),
    .hdmi_de(hdmi_de),
    .hdmi_scl(hdmi_scl),
    .hdmi_sda(hdmi_sda)
  );
endmodule
