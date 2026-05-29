const std = @import("std");


pub fn twoFer(buffer: []u8, name: ?[]const u8) ![]u8 {
    var printedBuffer: []u8 = undefined; 
    if (name != null) {
       printedBuffer = try std.fmt.bufPrintSentinel(buffer, "One for {s}, one for me.", .{name.?}, 0);
    } else {
       printedBuffer = try std.fmt.bufPrintSentinel(buffer, "One for you, one for me.", .{}, 0);
    }
    return printedBuffer;
}
