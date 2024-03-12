import 'package:flutter/material.dart';

class IndexScreenSmall extends StatelessWidget {
  const IndexScreenSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "BORGIR",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w900, color: Colors.white),
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
            ListTile(
              leading: Icon(Icons.question_mark_rounded),
              title: Text("About"),
              onTap: () {
                Navigator.pushNamed(context, "/about");
              },
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
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("icon/logo.jpg"),
            ),
          ),
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
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
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
            child: Column(
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
                  onTap: () {
                    Navigator.pushNamed(context, "/about");
                  },
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
            child: Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("icon/logo.jpg"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
