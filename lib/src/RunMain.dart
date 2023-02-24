import 'package:untitled1/src/Utils/ManagerDocument.dart';
import 'package:untitled1/src/Utils/MenuUtils.dart';
import 'package:untitled1/src/model/Human.dart';

import 'Utils/Validator.dart';

void main(){
  final List<Human> listdoc = [];
  final managerHuman mn = managerHuman.name1(listdoc);

  int i = 0;
  String index = "";

  mn.inputData();

  while(true) {
    MenuUtil.printMenu;
    do {
      i = Validator.getInt("Choice: ");
      if ((i < 1) || (i > 8))
        print("Enter a number from 1 to 8");
    } while ((i < 1) || (i > 8));
    switch (i) {
      case 1:
        print("List all Human:");
        mn.showHuman;
        break;
      case 2:
        print("List all Student:");
        mn.showStudent;
        break;
      case 3:
        print("List all Teacher:");
        mn.showTeacher;
        break;
      case 4:
        print("Seach infomation Human:");
         index = Validator.getString("Enter dd and name: ");
        mn.seachNameAndId(index);
        break;
      case 5:
        mn.sortStudentByAlphabetically;
        break;
      case 6:
        mn.sortTeachByAlphabetically;
        break;
      case 7:
        print("Teacher salary statistics");
        mn.getSumSalary();
        break;
      default :
        print("exit");
    }
    if(i > 7){
      break;
    }
  }


}
