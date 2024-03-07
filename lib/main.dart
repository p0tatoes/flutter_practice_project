import 'package:basic_widgets_moderate/screens/home_api_screen.dart';
import 'package:basic_widgets_moderate/screens/home_screen.dart';
import 'package:basic_widgets_moderate/screens/index_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const LoginScreen(),
        "/home": (context) => LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 1024) {
                  return const IndexScreen();
                } else {
                  return const IndexScreenSmall();
                }
              },
            ),
        "/apihome": (context) => ApiHomeScreen(),
        "/products": (context) => const HomeScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Container(
          width: 1000,
          height: 600,
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      image: const DecorationImage(
                          image: AssetImage("assets/nature-bg.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Travelguru",
                              style: TextStyle(
                                  color: Colors.orange[800],
                                  fontWeight: FontWeight.w900),
                            ),
                            Switch(
                              value: false,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Sign in to Eloja",
                          style: TextStyle(
                              fontSize: 23.0, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.orange[800],
                                  fontWeight: FontWeight.w900),
                            ),
                          )
                        ],
                      ),
                      const Divider(),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.blueGrey[100],
                            hintText: "Username"),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.blueGrey[100],
                            hintText: "Email"),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.blueGrey[100],
                            hintText: "Password"),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // Navigator.pushNamed(context, "/home");
                                Navigator.pushNamed(context, "/products");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 13.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.orange[800]),
                                child: const Text(
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Divider(),
                      Text(
                        "- OR -",
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.google,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 20.0),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/apihome");
                                    },
                                    child: Text(
                                      "Sign in with Google",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[300],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[300],
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: const FaIcon(
                              FontAwesomeIcons.apple,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
