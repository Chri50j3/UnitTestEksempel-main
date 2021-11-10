
void test0(String[] liste){
  String[] check = search(liste,"v");
  if(check == null)
    udskriv(true,"v",new String[0]);
  else{
    udskriv(false,"v",new String[0]);
  }
  test1(liste);
}

void test1(String[] liste){
  String[] check =search(liste,"va");
  if(check[0] == "Vancouver" && check[1] == "Valencia" || check[1] == "Vancouver" && check[0] == "Valencia")
    udskriv(true,"va",check);
  else{
    udskriv(false,"va",check);
  }
  test2(liste);
}

void test2(String[] liste){
  String[] check =search(liste,"ape");
  if(check[0] == "Budapest")
    udskriv(true,"ape",check);
  else{
    udskriv(false,"ape",check);
  }
  test3(liste);
}

void test3(String[] liste){
  String[] check =search(liste,"*");
  if(check == liste)
    udskriv(true,"*",check);
  else{
    udskriv(false,"*",check);
  }
}

void udskriv(boolean succes, String input,String[] liste){
  println(succes + " : Search input " + input + ", return:");
  for(String e:liste){
    println(e);
  }
}
