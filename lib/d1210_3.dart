class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Set<int> idexList = {};
    for (var i = 0; i < nums.length; i++) {
      for (var j = 0; j < nums.length; j++) {
        if (i != j && nums[i] + nums[j] == target) {
          idexList.addAll([i, j]);
        }
      }
    }
    return idexList.toList();
  }
}

void main() {
  Solution s = Solution();
  print(s.twoSum([-1, -2, -3, -4, -5], -8));
}
