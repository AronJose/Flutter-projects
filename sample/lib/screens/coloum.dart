import 'package:flutter/material.dart';

class ColoumnView extends StatelessWidget {
  const ColoumnView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.grey,
      Colors.white,
      Colors.green,
      const Color.fromARGB(255, 136, 109, 107)
    ];
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(
                child: Text("Welcom to First Container",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
              ...List.generate(
                  7,
                  (index) => Container(
                      width: double.infinity,
                      height: 100,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: colors[index],
                          border: Border.all(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ))),
            ],
          )
        ],
      ),
    ));
  }
}
