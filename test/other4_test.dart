import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

//!Podemos colocar um timeout no suit todo, para isso fazemos o exemplo abaixo
@Timeout(Duration(seconds: 60))

//!Podemos utilizar skip na suit toda
@Skip('Skipando toda suit (suit nao esta completa)')

//!Podemos utilizar a tag em toda suit (podemos ter mais de uma tag aqui)
@Tags(['web'])
void main() {
  //!O timeout de um 'suit' é de geralmente 30 segundos
  //!mais podemos aumentar esse tempo

  //?Colocando um timeout de 60segundos de duração para esse teste
  //?Podemos tambem coloca-lo em um gruop
  test('Error', () {
    //vai dar um erro por conta o 'x'
    expect(() => int.parse('a'), throwsException);
  }, timeout: Timeout(Duration(seconds: 60)));

  //!Nao pode existir test comentado!!
  //Imagina que esta dando um erro, porém esse erro nao causa impacto
  //no primeiro momento
  //para isso ao invés de comentarmos o teste pra poder fazer depois(nao pode comentar)
  //utilizamos o skip
  test('Error', () {
    //vai dar um erro por conta o 'x'
    expect(() => int.parse('a'), throwsException);
  }, skip: 'Se colocarmos uma string aqui esse test sera skipado!');
  //Podemos utilizar 'falta terminar, em processo no lugar da string acima

  //?Utilizando tags
  //?Porque tags? para especificarmos aquele test, web, mobile, destkop ou outra coisa
  //?é tipo como se fosse um filtro
  //!no terminal podemos digitar 'dart test -p chrome' (vai fazer o test no chrome)
  //! o 'p' é a plataforma
  //*Para executar somente as tags com 'web' no terminal digite 'dart test -t web'
  //* o 't' é a tag
  //*com isso ele só testa as tags com 'web'
  //Para excluir uma tag digite no terminal 'dart test -x web'
  //o 'x' é para excluir
  //ou seja vai executa tudo menos a tag 'web'
  test('Error', () {
    //vai dar um erro por conta o 'x'
    expect(() => int.parse('a'), throwsException);
  }, tags: 'web');
}
