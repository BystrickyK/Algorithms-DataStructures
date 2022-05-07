#include <algorithm>
#include <iostream>
#include <climits>
#include <vector>
#include <list>

using std::vector;
using std::list;

struct Segment {
  int start, end;
};

bool is_in_segment(int num, const Segment& segment)
{
  return (num >= segment.start && num <= segment.end);
}

vector<int> optimal_points(list<Segment> &segments) {
    vector<int> points;

    // Sort the segments by their end value (right bound) in an ascending order
    auto compare_lambda = [](const Segment& seg1, const Segment& seg2)
        { return seg1.end < seg2.end;};
    segments.sort(compare_lambda);

    while (segments.size() > 0) {
        // Take the end point of the first segment from the container sorted by the end value
        int point = segments.front().end;
        points.emplace_back(point);
        // Remove all segments that contain the 'point'
        for (auto it = segments.begin(); it != segments.end(); )
        {
            if (is_in_segment(point, *it))
                //advance the iterator forward and delete the immediately previous element
                segments.erase(it++);
            else
                ++it;
        }
    }
    return points;
}

int main() {
  int n;
  std::cin >> n;
  list<Segment> segments = {};
  int start, end;
  for (size_t i = 0; i < n; ++i) {
    std::cin >> start >> end;
    segments.push_back({start, end});
  }

  vector<int> points = optimal_points(segments);
  std::cout << points.size() << "\n";
  for (size_t i = 0; i < points.size(); ++i) {
    std::cout << points[i] << " ";
  }
}
