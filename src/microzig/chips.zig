const std = @import("std");
const microzig = @import("../../deps/microzig/build.zig");

fn root_dir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

const chip_path = std.fmt.comptimePrint("{s}/chips/eos-s3.zig", .{root_dir()});
const hal_path = std.fmt.comptimePrint("{s}/hal.zig", .{root_dir()});
const json_register_schema_path = std.fmt.comptimePrint("{s}/chips/eos-s3.json", .{root_dir()});

pub const eos_s3 = microzig.Chip{
    .name = "EOS-S3",
    .source = .{ .path = chip_path },
    .hal = .{ .path = hal_path },
    .cpu = microzig.cpus.cortex_m4,
    .memory_regions = &.{
        .{ .kind = .flash, .offset = 0x00000000, .length = 0x00027000 },
        .{ .kind = .ram, .offset = 0x20027000, .length = 0x0003c800 },
    },
    .json_register_schema = .{
        .path = json_register_schema_path,
    },
};
