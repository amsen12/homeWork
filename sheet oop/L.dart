
int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
}

void main() {
  List<int> nums1 = [2, 2, 1];
  List<int> nums2 = [4, 1, 2, 1, 2];
  List<int> nums3 = [1];
  print(singleNumber(nums1));
  print(singleNumber(nums2));
  print(singleNumber(nums3));
}
