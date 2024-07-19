import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

// Mock Btn class with static members
class Btn {
  static const String dot = '.';
  static const String n0 = '0';
}

//Mock variables
String number1 = '';
String number2 = '';
String operand = '';

void appendValue(String value) {
  // Check if the input is not an operator or dot
  if (value != Btn.dot && int.tryParse(value) == null) {
    // If both operand and number2 are not empty, perform calculation
    if (operand.isNotEmpty && number2.isNotEmpty) {
      //then only work calculation
      calculate();
    }
    // Update the operand with the new value
    operand = value;
  }
  // If number1 or operand is empty
  else if (number1.isEmpty || operand.isEmpty) {
    // Handle the dot input for number1
    if (value == Btn.dot && number1.contains(Btn.dot)) return;
    if (value == Btn.dot && (number1.isEmpty || number1 == Btn.n0)) {
      value = "0.";
    }
    number1 += value; // number1 = number1 + value
  }
  // If number2 is empty or operand is not empty
  else if (number2.isEmpty || operand.isNotEmpty) {
    // Handle the dot input for number2
    if (value == Btn.dot && number2.contains(Btn.dot)) return;
    if (value == Btn.dot && (number2.isEmpty || number2 == Btn.n0)) {
      value = "0.";
    }
    number2 += value; //number2 = number2 + value
  }
}

void calculate() {
  final result = (double.parse(number1) + double.parse(number2)).toString();
  number1 = result;
  number2 = '';
  operand = '';
}

void main() {
  setUp(() {
    number1 = '';
    number2 = '';
    operand = '';
  });

  group("AppendValue", () {
    test('appendigit to be 1', () {
      appendValue('1');
      appendValue('3');
      expect(number1, '13');
    });
    test('appended digite with number 2', () {
      appendValue('1');
      appendValue('-');
      appendValue('2');
      appendValue('7');
      expect(number2, '27');
    });
    test('operator get value', () {
      appendValue('2');
      appendValue('-');
      expect(operand, '-');
    });
    test("multiple values addition", () {
      appendValue('3');
      appendValue('+');
      appendValue('5');
      appendValue('+');
      expect(number1, '8.0');
      expect(operand, '+');
      expect(number2, "");
    });
    test("multiple dotes identify", () {
      appendValue('1');
      appendValue('.');
      appendValue('.');
      appendValue('2');
      expect(number1, '1.2');
    });
  });
}

//--------------------------------Percentage Unite Test ---------------------------------
void percentage() {
  if (number1.isNotEmpty && operand.isNotEmpty && number2.isNotEmpty) {
    calculate2();
  }

  if (operand.isNotEmpty) {
    return;
  }

  final number = double.parse(number1);
  number1 = "${(number / 100)}";
  operand = "";
  number2 = "";
}

void calculate2() {
  final result = (double.parse(number1) % double.parse(number2)).toString();
  number1 = result;
  number2 = "";
  operand = "";
}

void main2() {
  setUp(() {
    number1 = '';
    number2 = '';
    operand = '';
  });

  group("Percenage Calculation", () {
    test("", () {});
  });
}
