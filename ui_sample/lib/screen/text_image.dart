import 'package:flutter/material.dart';

class ImageTesing extends StatelessWidget {
  const ImageTesing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
                height: 280,
                width: MediaQuery.of(context).size.width * 0.75,
                child: const Stack(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: ImageContainer2(
                      imagesPath: "assets/images/dodge2.jpeg",
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ImageContainer2(
                      imagesPath: "assets/images/dodge2.jpeg",
                    ),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}

class ImageContainer2 extends StatelessWidget {
  const ImageContainer2({
    super.key,
    required this.imagesPath,
  });

  final String imagesPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:
            DecorationImage(image: AssetImage(imagesPath), fit: BoxFit.cover),
      ),
    );
  }
}
