/*5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list).*/
void main(){
  List<int>numbers=[1,2,10,4,5,6,33,50];
  int largest=numbers[0];
  for(int i=0;i<numbers.length;i++){
    if(numbers[i]>largest){
      largest=numbers[i];
    }
  }
  print( largest);
}
