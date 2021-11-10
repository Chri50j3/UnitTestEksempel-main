
void test0(String[] liste){
  String[] check = search(liste,"v");
  if(check == null)
    udskriv(true,"v",new String[0]);
  else{
    udskriv(false,"v",new String[0]);
  }
}

void test1(String[] liste){
  String[] check =search(liste,"va");
  if(check[0] == "Vancouver" && check[1] == "Valencia" || check[1] == "Vancouver" && check[0] == "Valencia")
    udskriv(true,"va",check);
  else{
    udskriv(false,"va",check);
  }
}

void test2(String[] liste){
  String[] check =search(liste,"ape");
  if(check[0] == "Budapest")
    udskriv(true,"ape",check);
  else{
    udskriv(false,"ape",check);
  }
}

void udskriv(boolean succes, String input,String[] liste){
  println(succes + " : Search input " + input + ", return:");
    for(String e:liste){
      println(e);
    }
}
