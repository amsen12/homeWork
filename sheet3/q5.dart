/*Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.*/
void main(){
  int mark= 75;
  String grade;
  if (mark>=85){
    grade='A';
    print( grade);

  }
  else if(mark>=75){
    grade = 'B';
    print( grade);

  }
  else if (mark>=65){
    grade='C';
    print( grade);

  }
  else {
    grade='D';
    print( grade);

  }
  switch(grade){
    case 'A':
      print ('excellent');
      break;
    case 'B'  :
      print( 'Good');
    case 'C' :
      print( 'Needs Improvement');
      break;
    case 'D' :
      print( 'Needs Improvement');
      break;
    default:
      print('Invalid grade');
  }


}