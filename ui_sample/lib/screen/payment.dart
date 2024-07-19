import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
        ),
        title: const Text(
          "Payments",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 194, 193, 193),width:.5),borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Transaction Limit",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,color: Colors.grey[800]),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
