import 'package:untitled1/src/model/Human.dart';

import '../Utils/Validator.dart';

class Teacher extends Human {

   double _salary = 0.0;
   int _numberWordDay = 0;

   Teacher() : super();

   Teacher.name1(String id , String name, String phone, String address, this._salary,this._numberWordDay):super.name1(id, name,phone,address);


   @override
   String toString() {
      return '${super.toString()},  Salary: $_salary, Number word day: $_numberWordDay, Salary:${getSalarysTeacher()}';
   }

   @override
   inputTeacher(List<Human> documentList) {
      print("Ìnormation student: ");
      super.inputHuman(documentList);
      _salary = Validator.getdouble("Enter salary: ");
      _numberWordDay = Validator.getInt("Enter number word day: ");
   }


  double getSalarysTeacher(){
  return this._salary*800.000;
  }

  int get numberWordDay => _numberWordDay;
  double get salary => _salary;
  set salary(double value) {
  _salary = value;
  }
  set numberWordDay(int value) {
     _numberWordDay = value;
   }


}