import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../bin/lib/person.dart';

void main() {
  // final person = Person(name: 'Vitor', age: 29, height: 1.67, weight: 63);
  // print('Imc deve vir 22.59 ${person.imc == 22.59}');
  // print(person.imc);

  //test(descrição/função de teste)
  //expect(variavel/o que eu espero que ele seja)
  //isA<double>() -> para tipar (usar no expect caso precise)
  test('Imc deve vir 22.5', () {
    final person = Person(name: 'Vitor', age: 29, height: 1.67, weight: 63);
    expect(person.imc, 22.59);
  });

  //*Quando existe mais de um test com o mesmo contexto como abaixo
  //*Podemos criar grupos
  // test('idade deve ser maior que 18 para isOlder ser true', (() {
  //   final person = Person(name: 'Vitor', age: 29, height: 1.67, weight: 63);
  //   expect(person.isOlder, true);
  // }));
  // test('idade for igual que 18 para isOlder ser true', (() {
  //   final person = Person(name: 'Vitor', age: 18, height: 1.67, weight: 63);
  //   expect(person.isOlder, true);
  // }));

  //*Pronto agora posso testar os dois de uma vez só
  group('Idade deve ser maior ou igual que 18', (() {
    test('idade deve ser maior que 18 para isOlder ser true', (() {
      final person = Person(name: 'Vitor', age: 29, height: 1.67, weight: 63);
      expect(person.isOlder, true);
    }));
    test('idade for igual que 18 para isOlder ser true', (() {
      final person = Person(name: 'Vitor', age: 18, height: 1.67, weight: 63);
      expect(person.isOlder, true);
    }));
  }));
}
