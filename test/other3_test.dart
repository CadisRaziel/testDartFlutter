import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  //!Repare nas funções que a linguagem nos da para evitar usar sinais == ?? etc..
  test('description', (() {
    final name = 'vitor';
    //!Não use dessa forma, olha nos exemplos abaixo, como temos metodos para isso
    expect(name, 'vitor');

    //? para testar igualdade use 'equals'
    expect(name, equals('vitor'));

    //? para testar se nao ta nulo use 'isNotNull'
    expect(name, isNotNull);

    //? para testar se contem alguma letra use 'contais'
    expect(name, contains('vi'));

    //? verificando o tipo use 'isA<>()'
    expect(name, isA<String>());

    //*Olha que interessante, podemos pegar esses varios expect acima
    //*e criar apenas um usando o allOf([])
    expect(
        name,
        allOf([
          equals('vitor'),
          isNotNull,
          contains('vi'),
          isA<String>(),
        ]));
  }));

  //? quando voce quer que algo realmente de erro !
  test('Error', () {
    //vai dar um erro por conta o 'x'
    expect(() => int.parse('x'), throwsA(isA<Exception>()));
    //*Ou
    expect(() => int.parse('a'), throwsException);
  });

  //Tambem posso usar async
  test('Error', () async {
    //vai dar um erro por conta o 'x'
    expect(() => int.parse('x'), throwsA(isA<Exception>()));
    //*Ou
    expect(() => int.parse('a'), throwsException);
  });
}
