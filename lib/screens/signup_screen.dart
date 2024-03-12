import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Container(
          width: 1000,
          height: 700,
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
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Sign up to Travelguru",
                          style: TextStyle(
                              fontSize: 23.0, fontWeight: FontWeight.w900),
                        ),
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
                            hintText: "First Name"),
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
                            hintText: "Surname"),
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
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.blueGrey[100],
                            hintText: "Confirm Password"),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
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
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
