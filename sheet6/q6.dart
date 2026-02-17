/*Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. -
Then print the shortest word and the longest word from the sentence*/

void main(){
  String sentence='very happy so cute';
  List<String>words=sentence.split(' ');
  print(words);
  print( words.length);
  String shortest=words[0];
  String longest =words[0];
  for(int i=0;i<words.length;i++){
    if(shortest.length > words[i].length){
      shortest=words[i];
    }
    if(longest.length<words[i].length){
      longest=words[i];
    }
  }
  print( 'the longest word is $longest');
  print( 'the shortest word is $shortest');




}