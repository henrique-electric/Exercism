#include "raindrops.h"

std::string raindrops::convert(int number) {
    std::string result = "";
    if (number % 3 == 0) {
        result.append("Pling");
    }

    if (number % 5 == 0) {
        result.append("Plang");
    }
    
    if (number % 7 == 0) {
        result.append("Plong");
    }

    if (result.empty() == true) {
        result.append(std::to_string(number));
    }
    
    return result;
}
