import 'package:flutter/material.dart';

AppBar uppBar({required String title, bool isMobile = true}) {
  return AppBar(
    automaticallyImplyLeading: isMobile,
    backgroundColor: Colors.orange[800],
    iconTheme: const IconThemeData(color: Colors.white),
    title: Text(
      title,
      style: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.w900, color: Colors.white),
    ),
    centerTitle: false,
  );
}
