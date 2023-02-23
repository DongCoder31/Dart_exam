import 'package:untitled1/src/model/Human.dart';

import '../Utils/Validator.dart';

class Student extends Human{
  String _batch = "";
  double _Mark1 = 0.0;
  double _Mark2 = 0.0;

  Student() : super();

  Student.name1(String id , String name, String phone, String address, this._batch,this._Mark1,this._Mark2):super.name1(id, name,phone,address);


  @override
  String toString() {
    return '${super.toString()},  Batch: $_batch, Mark1: $_Mark1, Mark2: $_Mark2 average score: ${getAvgMark()}';
  }

  @override
  inputStudent(List<Human> documentList) {
    print("Ìnormation student: ");
    super.inputHuman(documentList);
    _batch = Validator.getString("Enter batch: ");
    _Mark1 = Validator.getdouble("Enter mark1: ");
    _Mark2 = Validator.getdouble("Enter mark2: ");


  }

   double getAvgMark(){
    return (this.Mark1+this.Mark2)/2;
  }

  String get batch => _batch;
  double get Mark2 => _Mark2;
  double get Mark1 => _Mark1;
  set batch(String value) {
    _batch = value;
  }
  set Mark1(double value) {
    _Mark1 = value;
  }
  set Mark2(double value) {
    _Mark2 = value;
  }
}