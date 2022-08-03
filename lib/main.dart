import 'package:flutter/material.dart';
import 'package:learningdart/bootom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen.shade400,
          title: const Text('List'),
          actions: <Widget>[
            IconButton(
              onPressed: () => debugPrint("Item present"),
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () => debugPrint("Member Added present"),
              icon: const Icon(Icons.add_box),
            ),
            IconButton(
              onPressed: () => debugPrint("Select Add Call"),
              icon: const Icon(Icons.add_call),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                child: Text("List Settings"),
              ),
              ListTile(
                title: const Text("Active Member"),
                onTap: () => debugPrint("Active Member Selected"),
              ),
              ListTile(
                title: const Text("Lazy Member"),
                onTap: () => debugPrint("Lazy Member Selected"),
              )
            ],
          ),
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.account_balance_wallet),
        //       label: "Wallet",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.add_shopping_cart),
        //       label: "Cart",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.account_circle),
        //       label: "Profile",
        //     ),
        //   ],
        // ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Hey Developers"),
              InkWell(
                child: const Text("Proceed payment"),
                onLongPress: () => debugPrint("Payment Done"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("Tapped"),
          backgroundColor: Colors.lightGreenAccent,
          tooltip: 'Cart',
          child: const Icon(Icons.shopping_cart),
        ),
        bottomNavigationBar: const Bottombar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
