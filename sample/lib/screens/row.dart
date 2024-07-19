import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    //colors oru array save chayth vech
    List<Color> colors = [Colors.red, Colors.blue, Colors.yellow, Colors.green];
    List<Color> colors2 = [
      Colors.purple,
      Colors.black,
      Colors.grey,
      const Color.fromARGB(255, 123, 171, 209)
    ];
    List<Color> colors3 = [
      Colors.green,
      const Color.fromARGB(255, 108, 119, 128),
      const Color.fromARGB(255, 95, 86, 1),
      Colors.green
    ];
    List<Color> colors4 = [
      const Color.fromARGB(255, 46, 5, 2),
      Colors.blue,
      Colors.yellow,
      Colors.green
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 197, 197),
        body: SingleChildScrollView(
          child: Column(children: [
            const Text(
              "Welcome to the Second Container",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ColorRow(colors: colors),
            ColorRow(colors: colors2),
            ColorRow(colors: colors3),
            ColorRow(colors: colors4),
          ]),
        ),
      ),
    );
  }
}

class ColorRow extends StatelessWidget {
  const ColorRow({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 1500,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              4,
              (index) => Container(
                width: 300,
                height: 400,
                //
                color: colors[index],
                margin: const EdgeInsets.all(5),
              ),
            )),
      ),
    );
  }
}
