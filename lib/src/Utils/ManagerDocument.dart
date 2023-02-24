
import 'dart:ffi';

import 'package:untitled1/src/model/Human.dart';
import 'package:untitled1/src/model/Student.dart';
import 'package:untitled1/src/model/Teacher.dart';
import 'Validator.dart';

class managerHuman{
  List<Human> list1 = [];

  managerHuman();
  managerHuman.name1(this.list1);

  void inputData() {
    list1.add(new Student.name1("1", "Đông", "0905287491", "139 Lê Độ", "A7", 2.5, 10));
    list1.add(new Student.name1("2", "Cảnh", "0905287492", "139 Lê Lai", "A7", 2.5, 10));
    list1.add(new Student.name1("3", "Quy", "0905287493", "139 Lê Lợi", "A7", 2.5, 10));
    list1.add(new Teacher.name1("4", "Phương", "0905287494", "139 Lê Bá Quát", 20000, 7));
    list1.add(new Teacher.name1("5", "Sinh", "0905287495", "139 Lê La", 10000, 8));
    list1.add(new Teacher.name1("6", "Sinh", "0905287495", "139 Lê La", 10000, 8));
    list1.add(new Teacher.name1("7", "Là", "0905287496", "139 Lê Đào", 3000000, 17));
    list1.add(new Teacher.name1("8", "Sủ", "0905287494", "139 Lê Bá Quát", 20000, 7));
    list1.add(new Student.name1("9", "Hào", "0905287491", "139 Lê Độ", "B7", 2.5, 10));
    list1.add(new Student.name1("10", "Dung", "0905287492", "139 Lê Lai", "B7", 2.5, 10));
  }
  get inputHuman{
    print("1. Input Student");
    print("2. Input Teacher");

    int i = 0;
    do{
      i = Validator.getInt("Enter input type");
    }
    while(i<1 || i>2);

    String type = "";
    switch(i){
      case 1:
        type = "student";
        break;
      case 2:
        type = "teacher";
        break;
    }

    String st = "How many $type do you want to input";
    int n = 0;

    do{
      n = Validator.getInt(st);
    }while(n <= 0);

    for(var j = 0; j < n; j++){
      switch(i){
        case 1:
          var   s = Student();
          s.inputStudent(list1);
          list1.add(s);
          break;
        case 2:
          var t = Teacher();
          t.inputTeacher(list1);
          list1.add(t);
          break;
      }
    }
  }
  get showHuman{
    list1.forEach((Human) {
      if(Human is Student){
        Student s =  Human;
        print(s.toString());
      }else if(Human is Teacher){
        Teacher t = Human;
        print(t.toString());
      }
    });
  }
  get showStudent{
    list1.forEach((Human) {
      if(Human is Student){
        Student s =  Human;
        print(s.toString());
      }
    });
  }
  get showTeacher{
    list1.forEach((Human) {
      if(Human is Teacher){
        Teacher t = Human;
        print(t.toString());
      }
    });
  }
  get sortStudentByAlphabetically{
    list1.sort((a, b) {
      if(a.name.compareTo(b.name) > 0){
        return 1;
      }else  if(a.name.compareTo(b.name) < 0){
        return -1;

      }else{
        return 0;
      }

    });
    print("Sort student by Alphabetically.");
    showStudent;
  }
  get sortTeachByAlphabetically{
    list1.sort((a, b) {
      if(a.name.compareTo(b.name) > 0){
        return 1;
      }else  if(a.name.compareTo(b.name) < 0){
        return -1;

      }else{
        return 0;
      }
    });
    print("Sort Teacher by Alphabetically.");
    showTeacher;
  }
  void seachNameAndId(String index)  {
    Lisr<Human> arrTmp = [];
    for (Human d in list1) {
      if (d.name.toLowerCase().contains(index.toLowerCase()) || d.id == index )
      {
       arrTmp.add(d);
      }
    }
    arrTmp.forEach(print);
    arrTmp.clear();
  }
  void getSumSalary(){
    double salary = 0;
    for (var c in list1) {
      if (c is Teacher) {
        Teacher t = c;
        salary += t.getSalarysTeacher();
        print("${c.name}  ${t.getSalarysTeacher()} ");
      }
    }
    print("Sum Salary: $salary");
  }

}
