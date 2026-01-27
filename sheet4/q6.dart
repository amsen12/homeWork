/*Create a program that calculates the factorial of 6 and prints the result*/
void main(){
  //fact of 6 is >> 6*5*4*3*2*1
  int number=6;
  int factorial=1;
  for(int i=0 ; i<6 ;i++){
    factorial=factorial*number;
    number=number-1;

  }
  print( factorial);
}