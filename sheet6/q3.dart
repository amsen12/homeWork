/*Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
set its initial values using a constructor. - Then change the age of the object and print the updated
details*/
void main(){
  Person person1=Person( 'nesma', 22);
  person1.name='nasoom';
  person1.age=23;
  print( person1.name);
  print( person1.age);
}
class Person{
  String? name;
  int? age;
  Person(String name,int age){
    this.name=name;
    this.age=age;
  }
}