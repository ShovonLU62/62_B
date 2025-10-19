import 'dart:io';

void main() {
  print("Enter first number:");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /):");
  String op = stdin.readLineSync()!;

  print("Enter second number:");
  double b = double.parse(stdin.readLineSync()!);

  double result = 0;

  switch (op) {
    case '+':
      result = a + b;
      print("Result: $a $op $b = $result");
      break;
    case '-':
      result = a - b;
      print("Result: $a $op $b = $result");
      break;
    case '*':
      result = a * b;
      print("Result: $a $op $b = $result");
      break;
    case '/':
      if(b != 0){
        result = a / b;
        print("Result: $a $op $b = $result");
      }else{
        print("$a is not divided by 0");
        break;
      }
      break;
    default:
      print("$op is not a valid operator of my Calculator");
      return;
  }

}
