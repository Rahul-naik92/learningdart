import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 7.0,
      color: Colors.transparent,
      elevation: 10.0,
      child: Container(
        height: 40.0,
        decoration: const BoxDecoration(
          color: Colors.limeAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.account_balance_wallet,
                    color: Color(0xFFEF7532),
                  )
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.account_circle,
                    color: Color(0xFFEF7532),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
