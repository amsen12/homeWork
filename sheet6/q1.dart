/*Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
the method*/
void main(){
  Calculator calculator1 =Calculator(10, 20);
  print( calculator1.num1);
  calculator1.addNumbers( 60, 10);
}
class Calculator{
  double? num1;
  double? num2;
  void addNumbers(double number1 , number2){
    double sum=number1+number2;
    print('sum equal $sum');
  }
  Calculator(double num1,double num2){
    this.num1=num1;
    this.num2=num2;
  }
}
