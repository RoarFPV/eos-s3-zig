const std = @import("std");

const microzig = @import("microzig");
const eos_s3 = microzig.hal;
const cpu = microzig.cpu;
const regs = microzig.chip.peripherals;
const cm4 = cpu.peripherals;
const uart = eos_s3.uart;
//const time = eos_s3.time;

fn turnOnLeds(on: bool) void {
    // #if (FPGA_DIS_PAD26_CFG == 0)
    // 	IO_MUX->PAD_26_CTRL = 0x103;
    // #endif
    // 00   | 00   | 01   | 03
    // 0000 | 0000 | 0001 | 0011

    const led_out_4ma = .{
        .FUNC_SEL = .{ .value = .alternative_3 },
        .OEN = .{ .value = .normal_operation },
        .E = .{ .value = .current_4ma },
    };

    regs.IOMUX.PAD_CTRL[22].modify(led_out_4ma);

    regs.IOMUX.PAD_CTRL[18].modify(led_out_4ma);
    regs.IOMUX.PAD_CTRL[21].modify(led_out_4ma);
    if (on) {
        //const output: u8 = @as(u8, on) << 4;
        //regs.MISC.IO_OUTPUT.write_raw(output);
        regs.MISC.IO_OUTPUT.modify(.{
            .IO_1 = 1,
            //.IO_4 = 1, // BLUE
            .IO_5 = 1, // GREEN
            //.IO_6 = 1, // RED
        });
    } else {
        regs.MISC.IO_OUTPUT.write_raw(0x0);
    }
}

pub fn main() !void {
    uart.init(.{ .clock = 72_000_000 / 34 });

    var on = false;
    var last: u32 = 0;
    var a: u32 = 0;
    while (true) {
        //a += 1;

        const systickVal = cm4.SysTick.VAL.read();
        const systick = &cm4.SysTick;
        _ = systick;

        const current: u32 = systickVal.CURRENT;
        on = !on;
        turnOnLeds(on);

        uart.log("leds: {}, a: {}", .{ on, a });

        a = 0; //(current - last);
        last = current;

        while (cm4.SysTick.CTRL.read().COUNTFLAG == 0) {
            a += 1; //@max(0, a - 1);
        }
    }
}
