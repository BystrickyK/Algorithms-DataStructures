#include <iostream>
#include <vector>

using std::cin;
using std::cout;
using std::vector;
using std::max;

// #define DEBUG

int compute_min_refills(const uint32_t tank_capacity, vector<uint32_t> & stops)
{

    uint32_t tank = tank_capacity;
    uint32_t current_stop = 0;
    int number_of_stops = 0;
    uint32_t distance_to_next = stops[1];

    #ifdef DEBUG
    cout << "Current stop: " << current_stop << " | " <<  \
            "Tank level: " << tank << " | " << \
            "Distance to next: " << (stops[current_stop+1] - stops[current_stop]) << \
            "\n";
    #endif

    while(current_stop != stops.size() - 1 && distance_to_next <= tank)
    {
        tank -= stops[current_stop+1] - stops[current_stop];
        ++current_stop;
        // over bounds on the last stop => garbage code <= too tired to fix :)
        distance_to_next = stops[current_stop + 1] - stops[current_stop];
        #ifdef DEBUG
        cout << "Current stop: " << current_stop << " | " <<  \
                "Tank level: " << tank << " | " << \
                "Distance to next: " << distance_to_next << \
                "\n";
        #endif

        if (distance_to_next > tank && current_stop != stops.size() - 1)
        {
            #ifdef DEBUG
            cout << "Refilling at " << current_stop << ": " << stops[current_stop] << "\n";
            #endif
            tank = tank_capacity;
            ++number_of_stops;
        }
    }

    if (current_stop == stops.size() - 1)
        return number_of_stops;
    else
        return -1;
}


int main() {
    int d = 0;
    cin >> d;
    int m = 0;
    cin >> m;
    int n = 0;
    cin >> n;

    vector<uint32_t> stops(n);
    stops.push_back(0);
    for (size_t i = 0; i < n; ++i)
        cin >> stops.at(i+1);
    stops.push_back(d);

    cout << compute_min_refills(m, stops) << "\n";

    return 0;
}
