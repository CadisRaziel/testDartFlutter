import 'package:test/scaffolding.dart';

void main() {
  //*Imagine que temos varios arquivos de teste...
  //*Para testar todos de uma só vez, basta ir no terminal e digitar:
  //*'dart test' e no flutter 'flutter test'

  //!Funçoes de ciclo de vida (porque? para fechar um mocky e fazer outro teste)
  //1-> setUp((){})
  //?de run e veja no terminal como eles se comportam
  setUp(() {
    print('é tipo o initState, inicia o teste');
  });

  tearDown(() {
    print('é tipo o dispose, destrui o teste');
  });

  //Por causa do setUp e tearDown ele vai executa o primeiro teste, parar e se destruir
  //e depois executar o segundo teste
  test('is Worked', (() {
    print('Executando');
  }));
  test('is Worked2', (() {
    print('Executando2');
  }));
}
