/*Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.*/
void main(){
List <int> scores= [ 20,21,24,70];
if(scores==null || scores.isEmpty){
  print( 'No scores');
}
else {
  int sum = scores.first+scores.last;
  print( sum);
  if(sum>=40){
    print( 'sum is equal or greater than 40');

  }
  else{
    print('sum not equal or not greater than 40');
  }
}











}