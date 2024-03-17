import 'package:basic_widgets_moderate/widgets/nav_bar.dart';
import 'package:basic_widgets_moderate/widgets/up_bar.dart';
import 'package:flutter/material.dart';

class IndexScreenSmall extends StatelessWidget {
  const IndexScreenSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "Home"),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[200],
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: NavBar(),
      ),
      body: Center(
        child: Image.asset(
          "assets/icon/logo.jpg",
          width: 300.0,
          height: 300.0,
        ),
      ),
    );
  }
}

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "Home", isMobile: false),
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
                )
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/icon/logo.jpg",
                width: 300.0,
                height: 300.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
