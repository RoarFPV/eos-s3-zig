const std = @import("std");
const microzig = @import("../../deps/microzig/build.zig");
const chips = @import("chips.zig");

fn root_dir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

const board_path = std.fmt.comptimePrint("{s}/boards/quicklogic_thing_plus/board.zig", .{root_dir()});
const linkerscript = std.fmt.comptimePrint("{s}/boards/quicklogic_thing_plus/thingplus.ld", .{root_dir()});

pub const quicklogic_thing_plus = .{
    .linkerscript = linkerscript,
    .board = microzig.Board{
        .name = "Quicklogic Thing Plus",
        .source = .{ .path = board_path },
        .chip = chips.eos_s3,
    },
};
