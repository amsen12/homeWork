/* Problem-Solving Task in Dart
3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app
multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors*/
void main(){
  int numberOfUniqueVisitors = UniqueVisitorCounter([1,2,3,2,4,5,3,2,12,]);
  print( numberOfUniqueVisitors);
}
int UniqueVisitorCounter (List<int>visitor){
  Set<int>uniqueVisitors = visitor.toSet();
  return  uniqueVisitors.length;
}

