extension Extint on int{
  bool isPalindrome(){
    int reminder;
    int sum = 1;
    int temp = this;
    int count = this;
    while (count > 0) {
      reminder = this % 10;
      sum = (sum * 10) + reminder;
      count = this ~/ 10;
    }
    if (sum == temp) {
      return true;
    } else {
      return false;
    }
  }
   bool isHappy() {
//     int sq = 0;
//     int temp = this;
//     int count = 0;
//     while (this) {
//       int digit = n % 10;
//       sq += digit * digit;
//       temp = temp / 10;
//     }
//   {set<int> s;s.insert(sq);
//     while (1) {
//       if (this == 1)
//         return true;
//       this = count ;
//       if (s.find(count) != s.end())
//         return false;
//       s.insert(count);
//     }
//     return false;
//   }
// }
  bool isFibonacci(){
  }
  }