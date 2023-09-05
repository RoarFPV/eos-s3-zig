const std = @import("std");
const microzig = @import("microzig");
const regs = microzig.chip.peripherals;

pub const pads = @import("hal/pads.zig");

// copied from: qorc-sdk\BSP\quickfeather\src\qf_baremetalsetupregs.CRU.C
pub fn init() void {
    // regs.SCB_ACTRL
    //     .

    // .modify(.{ .DISDEFWBUF = 1 });

    regs.SCB_ACTRL.ACTRL.modify(.{ .DISDEFWBUF = 1 });

    // Initialize AIP registers (HSOSC)
    regs.AIP.OSC_CTRL_1.modify(.{ .prog = 2194 }); // (72,000,000/32,768) - 3

    // Initialize power registers
    regs.PMU.FB_STATUS.modify(.{ .FB_Active = 1 });

    regs.PMU.A1_PWR_MODE_CFG.modify(.{ .A1_Power_Mode_Cfg = .{ .value = .shut_down_mode } });
    regs.PMU.MISC_STATUS.modify(.{ .I2S = 1 });
    regs.PMU.AUDIO_STATUS.modify(.{
        .AD0 = 1,
        .AD1 = 1,
        .AD2 = 1,
        .AD3 = 1,
        .AD4 = 1,
        .AD5 = 1,
    }); // = 0x03F; // Power up all audio domains

    // Configure Memory to support light sleep and retention mode */
    regs.PMU.M4SRAM_SSW_LPMF.write_raw(0xFFFF);
    regs.PMU.M4SRAM_SSW_LPMH_MASK_N.write_raw(0xFFFF);

    // Initialize clock registers
    //regsregs.CRU.CRU.
    regs.CRU.CLK_CTRL_A_0.write_raw(0);
    regs.CRU.CLK_CTRL_B_0.write_raw(0x246);
    regs.CRU.CLK_CTRL_C_0.write_raw(0x222);
    regs.CRU.CLK_CTRL_D_0.write_raw(0x222);
    regs.CRU.CLK_CTRL_F_0.write_raw(0x204);
    regs.CRU.CLK_CTRL_G_0.write_raw(0x221);
    regs.CRU.CLK_CTRL_H_0.write_raw(0x3FE);
    regs.CRU.CLK_CTRL_I_0.write_raw(0x200);
    regs.CRU.C01_CLK_GATE.write_raw(0x011);
    regs.CRU.C02_CLK_GATE.write_raw(0x001);
    regs.CRU.C10_FCLK_GATE.write_raw(0x05F);

    regs.MISC.LOCK_KEY_CTRL.write_raw(0x1ACCE551);

    regs.CRU.C11_CLK_GATE.write_raw(0x001);
    regs.CRU.C16_CLK_GATE.write_raw(0x001);
    regs.CRU.C21_CLK_GATE.write_raw(0x001);
    regs.CRU.C01_CLK_DIV.write_raw(0x017);
    regs.CRU.C09_CLK_DIV.write_raw(0x01B);
    regs.CRU.C31_CLK_DIV.write_raw(0x003);
    regs.CRU.CLK_DIVIDER_CLK_GATING.write_raw(0x33B);

    // system_init()
    // FPU settings ------------------------------------------------------------*/
    // #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
    //     SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
    // #endif

    regs.INTR_CTRL.OTHER_INTR.write_raw(0xffffff);

    regs.DMA.DMA_CTRL.modify(.{
        .dma_stop = 1,
    });

    // /* LDO Settings */
    regs.AIP.LDO_30_CTRL_0.write_raw(0x1ac); // LDO Enable       /* 0x1ac -> Vo =1.01V, imax = 7.2mA, LDO enabled. */
    regs.AIP.LDO_50_CTRL_0.write_raw(0x1ac); // LDO Enable
    regs.AIP.LDO_30_CTRL_0.write_raw(0x28c); // LDO Enable       /* 0x28c -> Vo =1.15V, imax = 7.2mA, LDO enabled. */
    regs.AIP.LDO_50_CTRL_0.write_raw(0x28c); // LDO Enable
}
