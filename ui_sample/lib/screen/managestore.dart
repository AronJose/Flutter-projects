import 'package:flutter/material.dart';
import 'package:ui_sample/screen/additional_information.dart';
import 'package:ui_sample/screen/payment.dart';

final List<DataModel> _manageData = [
  DataModel(
      title: "Marketing \nDesign",
      color: Colors.orange,
      icon: Icons.campaign_outlined,
      data: const Text('')),
  DataModel(
      title: "Online \nPayments",
      color: Colors.green,
      icon: Icons.currency_rupee_rounded,
      data: const Payments()),
  DataModel(
      title: "Discount \nCoupons",
      color: const Color.fromARGB(255, 216, 151, 52),
      icon: Icons.discount,
      data: const Text('')),
  DataModel(
      title: "My \nCustomers",
      color: const Color.fromARGB(255, 30, 196, 202),
      icon: Icons.group,
      data: const Text('')),
  DataModel(
      title: "Store QR \nCode",
      color: Colors.grey,
      icon: Icons.qr_code_scanner_sharp,
      data: const Text('')),
  DataModel(
      title: "Extra \nCharges",
      color: const Color.fromARGB(255, 122, 29, 209),
      icon: Icons.payments_outlined,
      data: const Text('')),
  DataModel(
      title: "Order \nForm",
      color: const Color.fromARGB(255, 230, 92, 172),
      icon: Icons.format_align_center_sharp,
      data: const Text('')),
];

class Managestore extends StatefulWidget {
  const Managestore({super.key});

  @override
  State<Managestore> createState() => _ManagestoreState();
}

class _ManagestoreState extends State<Managestore> {
  int index = 0;

  final List<Widget> _page = [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 130,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => _manageData[index].data));
            },
            child: Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: _manageData[index].color,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      _manageData[index].icon,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      _manageData[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _manageData.length,
      ),
    ),
    const AdditionalInformation(),
    const AdditionalInformation(),
    const AdditionalInformation(),
    const AdditionalInformation(),
  ];

  final List<String> _titles = [
    "Manage Store",
    "Orders",
    "Products",
    "Account",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const Drawer(),
      appBar: index == 0
          ? AppBar(
              backgroundColor: Colors.blue,
              title: Text(
                _titles[index],
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          : null,
      body: _page[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.switch_account_sharp),
            label: "Manage",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    ));
  }
}

class DataModel {
  final String title;
  final Color color;
  final IconData icon;
  final Widget data;

  DataModel(
      {required this.title,
      required this.color,
      required this.icon,
      required this.data});
}
