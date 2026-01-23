/*Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.*/
void main (){
  List<int>originalList=[2,5,2,2,4,6,7,4];
  Set<int>uniqueCount=originalList.toSet();
  print( uniqueCount);
  if(originalList.length > uniqueCount.length){
    print(' duplicates were removed');
  }
  else{
    print( 'no duplicates found ');
  }

}