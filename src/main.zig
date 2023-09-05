const std = @import("std");

const microzig = @import("microzig");
const eos_s3 = microzig.hal;
const cpu = microzig.cpu;
const regs = microzig.chip.peripherals;

//const time = eos_s3.time;

fn turnOnLeds(on: bool) void {
    // #if (FPGA_DIS_PAD26_CFG == 0)
    // 	IO_MUX->PAD_26_CTRL = 0x103;
    // #endif
    regs.IOMUX.PAD_CTRL[22].write_raw(0x103);
    regs.IOMUX.PAD_CTRL[18].write_raw(0x103);
    regs.IOMUX.PAD_CTRL[21].write_raw(0x103);
    if (on) {
        regs.MISC.IO_OUTPUT.write_raw(0x72);
    } else {
        regs.MISC.IO_OUTPUT.write_raw(0x0);
    }
}

pub fn main() !void {
    //var a = 0;
    var on = true;
    while (true) {
        //a += 1;
        turnOnLeds(on);

        on = !on;
        var a: u32 = 4_000_000;
        while (a > 0)
            a -= 1;
    }
}
