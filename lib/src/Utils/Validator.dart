
import 'dart:io';

class Validator{

  static String getString(String pormt){
    String value = "";
    bool isValue = false;
    do{
      try{
        print(pormt);
        value = stdin.readLineSync().toString().trim();
        isValue = true;
      }catch (e){
        print("Erro!! $e");
      }
    }while(!isValue);
    return value;
  }


  static int getInt(String pormt){
    int value = 0;
    bool isValue = false;
    do{
      try{
        print(pormt);
        value = int.parse(stdin.readLineSync().toString().trim());
        isValue = true;
      }catch (e){
        print("Erro!! $e");
      }
    }while(!isValue);
    return value;
  }


  static double getdouble(String pormt){
    double value= 0.0;

    bool isValue = false;
    do{
      try{
        print(pormt);
        value = double.parse(stdin.readLineSync().toString().trim());
        isValue = true;
      }catch (e){
        print("Erro!! $e");
      }
    }while(!isValue);
    return value;
  }


}