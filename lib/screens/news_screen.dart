import 'package:basic_widgets_moderate/widgets/up_bar.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void loadData() async {
    // TODO: Implement data fetching and display
    // final Uri apiUrl = Uri.parse("https://ok.surf/api/v1/news-feed");
    // final response = await http.get(apiUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "News", isMobile: false),
      body: Wrap(),
    );
  }
}

class NewsScreenSmall extends StatefulWidget {
  const NewsScreenSmall({super.key});

  @override
  State<NewsScreenSmall> createState() => _NewsScreenSmallState();
}

class _NewsScreenSmallState extends State<NewsScreenSmall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "News", isMobile: false),
      body: Wrap(),
    );
  }
}
