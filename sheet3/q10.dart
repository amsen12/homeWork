void main() {
  double price = 45.5;
  String priceStr = price.toString();
  print('Price as string: $priceStr');
  String formattedPrice = '\$' + priceStr.padLeft(6, ' ');
  print('Formatted price: $formattedPrice');
  print('Length of formatted price: ${formattedPrice.length}');
  if (formattedPrice.length > priceStr.length) {
    print('Formatted price is longer than original price string');
  } else {
    print('No extra formatting added');
  }
}
