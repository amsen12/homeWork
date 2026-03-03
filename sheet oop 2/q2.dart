/*2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.*/
void main() {
  OrderManager order1=OrderManager();
  order1.addItems(FoodItem(name: 'Orange', price: 50, category: 'drink'));
  order1.addItems(FoodItem(name: 'mango', price: 60, category: 'drink'));
  order1.addItems(FoodItem(name: 'piza', price: 100, category: 'food'));
  order1.showOrder();
  var drinks= order1.itemsByCatogry( 'drink');
  for(var item in drinks){
    print( item.name);
  }
  print(order1.calculateTotalPrice());





}
class FoodItem{
  String name;
  double price;
  String category;
  FoodItem({required this.name, required this.price, required this.category});

}
class OrderManager{
  List<FoodItem>_orderItems=[];
  //add
void addItems(FoodItem item){
  _orderItems.add(item);
}
// show order
  void showOrder(){
  for(var item in _orderItems){
    if(_orderItems.isEmpty){
      print('order is empty');
    }
    else{
      print( '${item.name}/ ${item.category}/${item.price}');
    }
  }
  }



//calculate the total price of the order.
double calculateTotalPrice(){
  double total=0;
  for(var item in _orderItems){
    total=total+item.price;
  }

  return total;
}
   List<FoodItem> itemsByCatogry(String category)   {
    List<FoodItem>result=[];
    for(var item in _orderItems) {
      if(item.category.toLowerCase()==category.toLowerCase()){
        result.add( item);
      }
    }
    return result;
  }



}