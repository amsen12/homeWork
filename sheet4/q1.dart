/*Create a program that removes duplicate numbers from the list [5, 3, 5, 7, 3, 9] and prints how
many unique numbers remain.*/
void main(){
  List<int> list =[5,3,5,7,3,9];
  Set<int>uniqueNumber=list.toSet();
  print(uniqueNumber);
  print( uniqueNumber.length);

}