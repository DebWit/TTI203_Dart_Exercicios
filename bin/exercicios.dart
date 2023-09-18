import 'dart:ffi';

import 'package:exercicios/exercicios.dart' as exercicios;
import 'dart:io';
import 'dart:math';
void exercicio1(List<String> arguments) {
  // Calcule a área de um círculo com um raio de 5. (Use a fórmula da área do círculo: πr²).
  double? raio;

  while (true){
  try {
    stdout.write("Digite um valor numérico: ");
    String input = stdin.readLineSync()!;
    raio = double.parse(input);
    break;
    
  } catch (e) {
    print('Entrada inválida. Tente novamente');
  }
  }

  num area = raio * raio * pi;
  print(area);
}

// ____________________________________________________________________________________________ //

void exercicio2(List<String> arguments) {
  // Encontre as raízes de uma equação quadrática com a = 1, b = -3 e c = 2. (Use a fórmula do
// discriminante: x = [-b ± sqrt(b² - 4ac)] / 2a). Nota: pesquise sobre a biblioteca math na
// documentação oficial e descubra como importá-la.
  dynamic delta;
  var x1;
  var x2;
  dynamic a;
  dynamic b;
  dynamic c;
  var multiplicandos = [a, b, c];
  var multiplicandosInt = [];

  for (var i in multiplicandos){
      while (true){
        try {
          stdout.write("Digite os indíces da equação, respectivamente a, b e c: ");
          String input = stdin.readLineSync()!;
          i = double.parse(input);
          multiplicandosInt.add(i);
          break;
    
        } catch (e) {
        print('Entrada inválida. Tente novamente');
        }
  }
    
  }
  a = multiplicandosInt[0];
  b = multiplicandosInt[1];
  c = multiplicandosInt[2];

  delta = b * b - 4 * a * c;
  x1 = ((-b + sqrt(delta)))/ 2 * a;
  x2 = ((-b - sqrt(delta)))/ 2 * a;

  if (x1 != x2){
    print('O valor da priemira raiz é $x1 e o da segunda raiz é $x2.');
  }
  else {
    print('O valor de ambas as raízes é $x1.');
  }
  

}

void exercicio2denovo(List <String> arguments) {
  // quero que ele receba o input com a, b e c juntos, separados por virgula.
  // separe os tres dados, em ordem
  //teste se podem virar inteiros 
  //e armazene numa lista

  var input;
  List<double> valores = [];
  bool verdade;
  dynamic indices;
  dynamic a;
  dynamic b;
  dynamic c;

  verdade = true;

  // receber o input do usuario
  print('Bem-Vindo à calculadora de equações de segundo grau.\nDigite aqui os valores de a, b e c, separando-os por vírgula: ');
  while(verdade){
    input = stdin.readLineSync();
    valores = input.split(',');

    try{
      for (dynamic i in valores){
        i = double.parse(i);
        indices.add(i);
      }
    break;
    } catch(e){
      print('Caracteres inválidos. Por favor digite apenas números.');
    }

  }

  print(indices);


}

// _____________________________________________________________________________________________ //

void exercicio3(List <String> arguments){
  // calcular o volume de uma esfera (4/3 pi r**3)
  
  // first, the program needs to receive the radius
  // so, im doing the input of the data, with a error treatment
  // for avoid a runtime error

  // for doind that, im going to do a loop while that will request the input, and,
  // while the user do not put the caracters correctly, the program will continue requesting
  // the input
  bool radiusOk = true;
  num radiusNum = 0; //it's important to inicialize the variable
  while(radiusOk){
    try{
      print('Please, enter here the radius of the sphere: ');
      dynamic radius = stdin.readLineSync();
      radiusNum = num.parse(radius);
      radiusOk = false;


    } catch(e){
      print('Invalid characters. Please, enter only numbers.');
    }
  }

        // after this, a new variable is created: the sphere volume
      num volume = (4 / 3) * pi * pow(radiusNum, 3);
      print('The volume of the sphere is: $volume.');

}

// _____________________________________________________________________________________________ //

void exercicio4(List <String> arguments){
  // 4. Determine o valor final obtido pela seguinte expressão numérica: 2 + 3 * 4 - (2 * 3) + 2^3.
  num expressao = 2 + 3 * 4 - (2*3) + pow(2, 3);
  print(expressao);
}

// ______________________________________________________________________________________________ //

void exercicio5(List <String> arguments){
  // Converta uma temperatura de 100 graus Fahrenheit para Celsius. (Use a fórmula: C = (F -32) * 5/9).
  print('Welcome to the temperature converter!');

  // doing the input with a while, that will make the inputs's error treatment
  bool inputOk = true;
  dynamic Fahren = 0; // it's important to inicialize the variable

  while(inputOk){
    try{
      print('Please, enter here the temperature in Fahrenheit: ');
      dynamic input = stdin.readLineSync();
      Fahren = num.parse(input);
      inputOk = false;

    }catch(e){
      print('Please, enter only numbers.');
    }
  }

  num Cel = (Fahren - 32) * 5 / 9;
  print('The temperature ${Fahren}F in Celcius is: $Cel.');

}

// ______________________________________________________________________________________________ //

void exercicio6(List <String> arguments){
  
}
// ______________________________________________________________________________________________ //
// ______________________________________________________________________________________________ //
// ______________________________________________________________________________________________ //
// ______________________________________________________________________________________________ //
// ______________________________________________________________________________________________ //



void main (List<String> arguments){
  exercicio2(arguments);
}
