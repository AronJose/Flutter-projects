// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sample/screens/coloum.dart';
import 'package:sample/screens/row.dart';

class ContainerOne extends StatelessWidget {
  const ContainerOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return ListView(
      children: [
        const Text(
          "Hello Aron",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ColoumnView(),
            ));
          },
          child: Container(
            width: size.width,
            height: 100,
            margin: EdgeInsets.all(10),
            child: Center(
                child: const Text(
              "This is First Container",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, offset: Offset(5, 5), blurRadius: 5)
                ]),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RowView(),
            ));
          },
          child: Container(
              width: size.width,
              height: 100,
              margin: EdgeInsets.all(10),
              child: Center(
                child: const Text(
                  "This is Second Container",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.grey, width: 3),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 5)
                  ])),
        )
      ],
    );
  }
}
