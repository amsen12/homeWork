/*Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.*/
void main(){
  bool isStudent=true;
  bool hasCoupon=true;
  double price=1500;
  if(isStudent){
    price=price*0.8;
    print( price);
  }
  else{
    if(hasCoupon){
      price=price*0.9;
      print( price);
    }
    else{
      if(price>1500){
        price=price*0.95;
        print( price);

      }
    }
  }
}
