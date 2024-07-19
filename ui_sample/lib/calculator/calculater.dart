import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ui_sample/calculator/button_value.dart';

class Calculater extends StatefulWidget {
  const Calculater({super.key});

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  String number1 = ""; // numbers like 0 to 9
  String operand = ""; // operations like +,-,%
  String number2 = ""; //numbers like 0 to 9

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Calculator",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "$number1$operand$number2".isEmpty
                        ? "0"
                        : "$number1$operand$number2",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 45),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: Btn.buttonValues
                        .map(
                          (value) => buildButton(value),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildButton(value) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
          color: setColors(value),
          clipBehavior: Clip.hardEdge,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white)),
          child: InkWell(
              onTap: () {
                onBtnTap(value);
              },
              child: Center(
                  child: Text(
                value,
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              )))),
    );
  }

  Color setColors(value) {
    return [Btn.del, Btn.clr].contains(value)
        ? const Color.fromARGB(255, 151, 187, 206)
        : [Btn.per, Btn.add, Btn.divide, Btn.multiply, Btn.subtract]
                .contains(value)
            ? const Color.fromARGB(255, 190, 190, 226)
            : [Btn.calculate].contains(value)
                ? const Color.fromARGB(255, 255, 153, 0)
                : const Color.fromARGB(255, 173, 173, 173);
  }

  void onBtnTap(String value) {
    if (value == Btn.del) {
      delete();
      return;
    }

    if (value == Btn.clr) {
      clearAll();
      return;
    }

    if (value == Btn.per) {
      convertToPercentage();
      return;
    }

    if (value == Btn.calculate) {
      calculate();
      return;
    }

    appendValue(value);
  }

// -------------------Clear-----------------------------------------------
  void clearAll() {
    setState(() {
      number1 = "";
      operand = "";
      number2 = "";
    });
  }

// ------------Delele ----------------------------------------------------
  void delete() {
    if (number2.isNotEmpty) {
      number2 = number2.substring(0, number2.length - 1);
    } else if (operand.isNotEmpty) {
      operand = "";
    } else if (number1.isNotEmpty) {
      number1 = number1.substring(0, number1.length - 1);
    }

    setState(() {});
  }

// ------------Calculation -------------------------------------
  void calculate() {
    if (number1.isEmpty) return;
    if (operand.isEmpty) return;
    if (number2.isEmpty) return;

    final double num1 = double.parse(number1);
    final double num2 = double.parse(number2);

    var result = 0.0;
    switch (operand) {
      case Btn.add:
        result = num1 + num2;
        break;
      case Btn.subtract:
        result = num1 - num2;
        break;
      case Btn.multiply:
        result = num1 * num2;
        break;
      case Btn.divide:
        result = num1 / num2;
        break;
      default:
    }

    setState(() {
      number1 = result.toString();

      if (number1.endsWith(".0")) {
        number1 = number1.substring(0, number1.length - 2);
      }

      operand = "";
      number2 = "";
    });
  }

//  -------------------------------Percentage -------------------------------
  void convertToPercentage() {
    if (number1.isNotEmpty && operand.isNotEmpty && number2.isNotEmpty) {
      calculate();
    }

    if (operand.isNotEmpty) {
      return;
    }

    final number = double.parse(number1);
    setState(() {
      number1 = "${(number / 100)}";
      operand = "";
      number2 = "";
    });
  }

// -------------Value Appending -----------------------------------------
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
// Update the state to reflect changes
    setState(() {});
  }
}
