/*Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions*/
void main() {
  int a = 10;
  int b = 20;
  int c = 15;
  bool expr1 = a < b;
  bool expr2 = b > c && a < c;
  bool expr3 = a + b == c;
  print('expr1: $expr1');
  print('expr2: $expr2');
  print('expr3: $expr3');
  if (expr1) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
