#include <iostream>
#include <stack>
#include <string>

struct Bracket {
    Bracket(char type, int position) :
        type(type),
        position(position)
    {}

    bool Matchc(char c) {
        if (type == '[' && c == ']')
            return true;
        if (type == '{' && c == '}')
            return true;
        if (type == '(' && c == ')')
            return true;
        return false;
    }

    char type;
    int position;
};

int main() {
    std::string text;
    getline(std::cin, text);

    std::stack <Bracket> opening_brackets_stack;
    for (int position = 0; position < text.length(); ++position) {
        char next = text[position];

        if (next == '(' || next == '[' || next == '{') {
            // Process opening bracket, write your code here
            opening_brackets_stack.push(Bracket(next, position+1));
            continue;
        }

        if (next == ')' || next == ']' || next == '}') {
            // Process closing bracket, write your code here
            if (opening_brackets_stack.empty()) {
                std::cout << position + 1 << std::endl;
                return 0;
            }
            if (opening_brackets_stack.top().Matchc(next)) {    // if 'next' is a closing bracket to the bracket on the top of the stack
                opening_brackets_stack.pop();
            }  // if end
            else {
                std::cout << position+1 << std::endl;
                return 0;
            }  // else end
        }  // if end
    } // for end

    // Printing answer, write your code here
    if (opening_brackets_stack.empty()) std::cout << "Success" << std::endl;
    else {
        while (opening_brackets_stack.size() > 1) opening_brackets_stack.pop(); // pop elements until only one remains
        std::cout << opening_brackets_stack.top().position << std::endl;
    }

    return 0;
}
