import 'package:basic_widgets_moderate/models/meal.model.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class ApiHomeScreen extends StatefulWidget {
  const ApiHomeScreen({super.key});

  @override
  State<ApiHomeScreen> createState() => _ApiHomeScreenState();
}

class _ApiHomeScreenState extends State<ApiHomeScreen> {
  List<Meal> meals = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retrieved with API"),
      ),
    );
  }

  Future<void> loadData() async {
    // TODO: Implement data fetching
    var apiURL =
        Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?i=beef");

    var res = await http.get(apiURL);

    if (res.statusCode == 200) {
      print(res.body);
    }
  }
}
