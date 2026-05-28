const std = @import("std");

/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {


    // If the string has only one char, return the string itself
    if (s.len == 0 or buffer.len < s.len or s.len == 1) {
        const casted = @constCast(s);
        return casted;
    }
    
    // Reverse the string
    for (0..s.len) | index| {
        buffer[index] = s[s.len - 1 - index];
    }

    return buffer[0..s.len]; // Return the result up until the string lenght of the buffer size
}
