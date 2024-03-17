import 'package:basic_widgets_moderate/widgets/nav_bar.dart';
import 'package:basic_widgets_moderate/widgets/up_bar.dart';
import 'package:flutter/material.dart';

class AboutScreenSmall extends StatelessWidget {
  const AboutScreenSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "About"),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[200],
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          children: [
            Expanded(
              child: NavBar(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/logo.jpg",
              width: 300.0,
              height: 300.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
                "Flutter is convenient for making apps across different platforms. However, I find the syntax to be very 'weird' due to the nesting of widgets\n-ELOJA")
          ],
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "About", isMobile: false),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300.0,
            color: Colors.blueGrey[200],
            child: Column(
              children: [
                Expanded(
                  child: NavBar(
                    isMobile: false,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/icon/logo.jpg",
                    width: 300.0,
                    height: 300.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                      "Flutter is convenient for making apps across different platforms. However, I find the syntax to be very 'weird' due to the nesting of widgets\n- ELOJA"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
