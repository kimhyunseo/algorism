class Solution {
  int findJudge(int n, List<List<int>> trust) {
    Set<int> trustPeople = {}; // 신뢰받는 사람 리스트 (판사 후보)
    Set<int> flowerPeople = {}; // 마을 사람 리스트
    List<int> trustNum = []; // 판사 후보가 신뢰 받는 횟수
    int count = 0;
    int finalNum = 0;

    for (var i = 0; i < trust.length; i++) {
      for (var j = 0; j < trust[i].length; j++) {
        if (j == 0) {
          flowerPeople.add(trust[i][0]); // 마을 사람 리스트
        } else if (j == 1) {
          trustPeople.add(trust[i][1]); // 판사 리스트
          trustNum.add(trust[i][1]); // 판사 신뢰 받는 수
        }
      }
    }

    print("판사 후보: $trustPeople");
    print("마을 사람: $flowerPeople");
    print("판사 후보가 신뢰 받은 리스트: $trustNum");

    var result = trustPeople.difference(flowerPeople);
    // result가 비어있지 않을 때
    if (result.isNotEmpty) {
      // 신뢰 받는 리스트를 돌면서 검사
      for (var t in trustNum) {
        if (t == result.first) {
          count++;
        }
      }
      if (count == n - 1) {
        finalNum = result.first;
      } else {
        finalNum = -1;
      }
    } else if (n == 1) {
      finalNum = 1;
    } else {
      finalNum = -1;
    }
    return finalNum;
  }
}

void main(List<String> args) {
  Solution s = Solution();
  print(
    s.findJudge(4, [
      [1, 3],
      [1, 4],
      [2, 3],
      [2, 4],
      [4, 3],
    ]),
  );
  print(
    s.findJudge(2, [
      [1, 2],
    ]),
  );
}
