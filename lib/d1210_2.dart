// class Solution {
//   int countStudents(List<int> students, List<int> sandwiches) {
//     while (true) {
//       for (var i = 0; i < students.length; i++) {
//         if (students[i] == sandwiches[i]) {
//           students.removeAt(i);
//           sandwiches.removeAt(i);
//         } else {
//           int del = students.removeAt(0);
//           print("삭제 값: $del");
//           students.add(del);
//         }
//       }
//       if ((students.contains(sandwiches[0])) == false) {
//         return students.length;
//       } else {
//         return 0;
//       }
//     }
//   }
// }

class Solution {
  int countStudents(List<int> students, List<int> sandwiches) {
    int turn = 0;

    while (students.isNotEmpty) {
      if (students.first == sandwiches.first) {
        students.removeAt(0);
        sandwiches.removeAt(0);
        turn = 0;
      } else {
        students.add(students.removeAt(0));
        turn++;
      }
      if (turn == students.length) {
        return students.length;
      }
    }
    return 0;
  }
}

void main() {
  Solution s = Solution();
  print(s.countStudents([1, 1, 1, 0, 0, 1], [1, 0, 0, 0, 1, 1]));
}
