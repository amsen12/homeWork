/*Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.*/

void main(){
  Map<String ,String>person={
    'name':'nesma',
    'phone':'null'
  };
  if(person['phone']=='null'){
    print( 'phone not valid');
  }
  person['phone']='010987654';
  print( person['phone']!.length);
}