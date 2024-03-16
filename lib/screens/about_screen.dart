import 'package:flutter/material.dart';

class AboutScreenSmall extends StatelessWidget {
  const AboutScreenSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          children: [
            Text(
              "BORGIR",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Expanded(
              child: SizedBox(),
            ),
            InkWell(
              child: Icon(Icons.arrow_back),
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName("/home"));
              },
            ),
          ],
        ),
        centerTitle: false,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.home_rounded),
              title: Text("Home"),
            ),
            const ListTile(
              leading: Icon(Icons.newspaper_rounded),
              title: Text("News"),
            ),
            const ListTile(
              leading: Icon(Icons.question_mark_rounded),
              title: Text("About"),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      leading: Icon(Icons.settings_rounded),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.popUntil(context, ModalRoute.withName("/"));
                      },
                      leading: Icon(Icons.logout_rounded),
                      title: Text("Logout"),
                    ),
                  ],
                ),
              ),
            )
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
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "BORGIR",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: false,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300.0,
            color: Colors.grey[200],
            child: const Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home_rounded),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.newspaper_rounded),
                  title: Text("News"),
                ),
                ListTile(
                  leading: Icon(Icons.question_mark_rounded),
                  title: Text("About"),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ListTile(
                      leading: Icon(Icons.settings_rounded),
                      title: Text("Settings"),
                    ),
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
