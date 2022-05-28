//* 1 unidade
import 'lib/person.dart';

void main() {
  final person = Person(name: 'Vitor', age: 29, height: 1.67, weight: 63);
  print('Imc deve vir 22.59 ${person.imc == 22.59}');
  print(person.imc);
}

//* 1 unidade
// class Person {
//   final String name;
//   final int age;
//   final double height;
//   final double weight;

//   Person({
//     required this.name,
//     required this.age,
//     required this.height,
//     required this.weight,
//   });
// }

//! o certo é separar essas unidades (com isso criei o arquivo para a classe person)