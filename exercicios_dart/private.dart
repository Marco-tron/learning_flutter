import './person2.dart';

class Person {
  String name;
  String _cpf;
}
main() {
  var p1 = Person();
  var p2 = Person2();
  p1.name =  'Marco';
  p1._cpf = '123.456.789-00';
  p2.name =  'Martha';
  // if you try to uncomment next line the code wil give an error because _cpf is private
  //p2._cpf = '123.456.789-00';
  p2.cpf = '123.456.789-00';


  // the private  var is visible on the file as you can see in the print() BUT IT IS NO VISIBLE OUTSIDE OF IT
  print('${p1.name} tem CPF ${p1._cpf}');

  print('${p2.name} tem CPF ${p2.cpf}');
}