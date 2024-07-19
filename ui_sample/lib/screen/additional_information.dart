import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_sample/myfluttericons/whatsapp.dart';
import 'package:ui_sample/screen/managestore.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  ToggleState createState() => ToggleState();
}

class ToggleState extends State<AdditionalInformation> {
  bool isToogleEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Additional Information",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Managestore()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.share, color: Colors.grey, size: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Share Dukaan App",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.chat_bubble_outline_outlined,
                          color: Colors.grey, size: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Change Language",
                          style: TextStyle(color: Colors.grey, fontSize: 17)),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isToogleEnabled = !isToogleEnabled; // Toggle state
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(MyFlutterApp.whatsapp, color: Colors.grey, size: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Text("WhatsApp Chat Support",
                          style: TextStyle(color: Colors.grey, fontSize: 17)),
                    ],
                  ),
                  Icon(
                    isToogleEnabled
                        ? Icons.toggle_on
                        : Icons.toggle_off_outlined,
                    color: isToogleEnabled ? Colors.blue : Colors.grey,
                    size: 40,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(Icons.lock_outline_rounded,
                      color: Colors.grey, size: 35),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Privacy Policy",
                      style: TextStyle(color: Colors.grey, fontSize: 17)),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.grey,
                    size: 40,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Rate Us",
                      style: TextStyle(color: Colors.grey, fontSize: 17)),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Sign Out",
                      style: TextStyle(color: Colors.grey, fontSize: 17)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
