
import '../Utils/Validator.dart';

class Human {
   String _id = "";
   String _name = "";
   String _phone = "";
   String _address = "";

   Human();

   Human.name1(this._id,this._name,this._phone,this._address);

   @override
   String toString() {
     return 'Id: $_id,  Name: $_name,  Phone: $_phone, Address: $_address';
   }

   inputHuman(List<Human> documentList) {
     bool status;
     do {
       status = true;
       _id = Validator.getString("Id");
       for (Human d in documentList) {
         if (d._id.toLowerCase() == _id.toLowerCase()) {
           print("The code is available. Enter again.");
           status = false;
           break;
         }
       }
     } while(!status);
     _name = Validator.getString("Name: ");
     _phone = Validator.getString("Phone: ");
     _address = Validator.getString("Adsress: ");

   }


  String get id => _id;
  String get phone => _phone;
  String get address => _address;
  String get name => _name;
  set phone(String value) {
  _phone = value;
  }
  set name(String value) {
  _name = value;
  }
  set id(String value) {
  _id = value;
  }
  set address(String value) {
  _address = value;
  }

}