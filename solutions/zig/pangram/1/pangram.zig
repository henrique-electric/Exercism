const alphabet = [_]u8 {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
                                'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
                                'u', 'v', 'w', 'x', 'y','z'};
const std = @import("std");

pub fn isPangram(str: []const u8) bool {
   var found: usize = 0;

   for (alphabet) | letter | {
        for (str, 0..) | _, index | {
            if (letter == std.ascii.toLower(str[index])) {
                found += 1;
                break; // Whe found the letter on the string, we can move to the next one
            }
        }
   }
    
    // If we found the all the letters on the alphabet if we hit 26 :)
    const res = if (found == 26) true else false;
    return res;
}
