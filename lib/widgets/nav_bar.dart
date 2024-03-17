import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key, this.isMobile = true});
  final bool isMobile;

  final List<Map<String, dynamic>> routes = [
    {"icon": Icons.home_rounded, "name": "home", "path": "/home"},
    {"icon": Icons.newspaper_rounded, "name": "news", "path": "/news"},
    {"icon": Icons.question_mark_rounded, "name": "about", "path": "/about"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
            itemBuilder: (context, index) {
              final currentRoute = ModalRoute.of(context)!.settings.name;
              if (currentRoute != routes[index]["path"]) {
                return ListTile(
                  leading: Icon(routes[index]["icon"]),
                  title: Text(routes[index]["name"]),
                  onTap: () {
                    if (isMobile) {
                      Navigator.pop(context);
                    }
                    // Navigator.pushNamed(context, routes[index]["path"]);
                    Navigator.popAndPushNamed(context, routes[index]["path"]);
                  },
                );
              } else {
                return ListTile(
                  leading: Icon(routes[index]["icon"]),
                  title: Text(routes[index]["name"]),
                );
              }
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: routes.length,
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings_rounded),
          title: Text("Settings"),
        ),
        ListTile(
          leading: Icon(Icons.logout_rounded),
          title: Text("Logout"),
          onTap: () {
            Navigator.popUntil(
              context,
              ModalRoute.withName("/"),
            );
          },
        ),
      ],
    );
  }
}
