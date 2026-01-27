/*Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.*/
void main() {
  String text = 'EGP 12.50';

  List<String> parts = text.split(' '); //  ['EGP' , '12.5' ]
                                        //  parts[0] , parts[1]
  String numberPart = parts[1];

  double value = double.parse(numberPart);
  print(value);
}
