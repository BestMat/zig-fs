// Nagapillaiyar
const std = @import("std");
const fs = std.fs;

pub fn createDirectory(name: []const u8) !void {
    const cwd = fs.cwd();
    try cwd.makeDir(name);
}

pub fn createFile(name: []const u8) !void {
    const file = try std.fs.cwd().createFile(
        name,
        .{ .read = true },
    );

    defer file.close();
}

pub fn main() !void {
    std.debug.print("Nagapillaiyar\n", .{});
    // try createDirectory("Hello World!");
    try createFile("hello.txt");
}