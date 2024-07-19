import 'package:flutter/material.dart';
import 'package:ui_sample/calculator/calculater.dart';
import 'package:ui_sample/screen/managestore.dart';
import 'package:ui_sample/screen/text_image.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: const Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ImageContainer(
                          imgPath: 'assets/images/dodge1.jpeg',
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ImageContainer(
                          imgPath: 'assets/images/dodge2.jpeg',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "IT'S A ",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    height: 1,
                  ),
                ),
                const Text(
                  "MATCH",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  width: 350,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Let's ask about her hobbies and something \n interesting or just say Hello!",
                          style: TextStyle(
                            color: Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonContainer(
                  buttons: "SAY HELLO!",
                  buttonColor: Colors.pink,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Managestore(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonContainer(
                  buttons: "KEEP SWIPING",
                  buttonColor: const Color.fromARGB(255, 66, 66, 66),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Calculater(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20,)
              ],
            ),
         ] ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imgPath,
          ),
        ),
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    super.key,
    required this.buttons,
    required this.buttonColor,
    required this.onPressed,
  });

  final String buttons;
  final Color buttonColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(310, 60)),
        backgroundColor: WidgetStateProperty.all(buttonColor),
      ),
      child: Text(
        buttons,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
