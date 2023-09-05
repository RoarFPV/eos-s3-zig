const std = @import("std");
const Builder = std.build.Builder;
const Pkg = std.build.Pkg;
const comptimePrint = std.fmt.comptimePrint;
const LazyPath = std.build.LazyPath;

const microzig = @import("microzig");

pub const chips = @import("src/microzig/chips.zig");
pub const boards = @import("src/microzig/boards.zig");

// this build script is mostly for testing and verification of this
// package. In an attempt to modularize -- designing for a case where a
// project requires multiple HALs, it accepts microzig as a param
pub fn build(b: *Builder) !void {
    const optimize = b.standardOptimizeOption(.{});
    const thing_plus = boards.quicklogic_thing_plus;
    var exe = microzig.addEmbeddedExecutable(b, .{
        .name = "firmware.elf",
        .source_file = .{ .path = "src/main.zig" },
        .backing = .{ .board = thing_plus.board },
        .optimize = optimize,
        // .linkerscript_source_file = .{ .path = thing_plus.linkerscript },
    });
    exe.installArtifact(b);
}

fn root() []const u8 {
    return comptime (std.fs.path.dirname(@src().file) orelse ".") ++ "/";
}
