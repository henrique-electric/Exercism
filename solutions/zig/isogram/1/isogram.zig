const std = @import("std");

// Set to comptime since all the tests use string literals
pub fn isIsogram(comptime str: []const u8) bool {
    var casted: [str.len]u8 = undefined; // The array that will receive the string in uppercase (we know the its lenght because of comptime)

    _ = std.ascii.upperString(casted[0..], str); // Make the string upper case

    // For each character o the string, run throught all the string to find repeated ones ignoring the current index 
    for (casted, 0..) |char, search_char_index| {
        for (0..casted.len) | index | {
            if (casted[index] == char and char != ' ' and char != '-' and index != search_char_index) {
                return false; // the string is not an isogram
            }
        }
    }
    return true;
}
