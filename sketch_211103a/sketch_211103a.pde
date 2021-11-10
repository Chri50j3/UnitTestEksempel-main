String[] liste = {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"}; 

void setup(){
   test0(liste);
}

String[] search(String[] list, String input){
 
  if(input == "*"){
    return liste;
  }
  
  if(input.length()<2){
    //String[] result = new String[0];
    return null;
  }
  ArrayList<String> tempList = new ArrayList<String>();
  for(String e:list){
    if(e.contains(input)||e.toLowerCase().contains(input)){
       tempList.add(e);
    }
  }
  String[] result = tempList.toArray(new String[0]);
  return result; 
}
