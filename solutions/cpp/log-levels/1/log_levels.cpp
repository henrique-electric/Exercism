#include <string>
#include <algorithm>

namespace log_line {
    std::string message(std::string line) {
        int delimiter_pos = line.find(":") + 2; // + 2 to remove the delimiter itself and the space char
        return line.substr(delimiter_pos, line.size() - 1);
    }

    std::string log_level(std::string line) {
        int delimiter_pos = line.find(":");
        return line.substr(1, delimiter_pos - 2);
    }

    std::string reformat(std::string line) {
        std::string log_formated = log_level(line);
        return message(line) + " " + + "(" + log_formated + ")"; 
    }
}
