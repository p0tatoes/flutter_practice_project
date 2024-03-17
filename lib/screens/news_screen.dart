import 'dart:convert';

import 'package:basic_widgets_moderate/models/news.model.dart';
import 'package:basic_widgets_moderate/widgets/nav_bar.dart';
import 'package:basic_widgets_moderate/widgets/news_card.dart';
import 'package:basic_widgets_moderate/widgets/up_bar.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<NewsItem> newsList = [];

  @override
  void initState() {
    super.initState();
    setNewsList();
  }

  Future<void> setNewsList() async {
    final fetchedNews = await loadNewsData();
    setState(() {
      newsList = fetchedNews;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "News", isMobile: false),
      body: Row(
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
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 15.0,
              ),
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                String source = newsList[index].source;
                String title = newsList[index].title;
                String og = newsList[index].og; // Image
                String link = newsList[index].link; // Source Link

                return newsCard(
                    source: source, link: link, og: og, title: title);
              },
              itemCount: newsList.length,
            ),
          ),
        ],
      ),
    );
  }
}

class NewsScreenSmall extends StatefulWidget {
  const NewsScreenSmall({super.key});

  @override
  State<NewsScreenSmall> createState() => _NewsScreenSmallState();
}

class _NewsScreenSmallState extends State<NewsScreenSmall> {
  List<NewsItem> newsList = [];

  @override
  void initState() {
    super.initState();
    setNewsList();
  }

  Future<void> setNewsList() async {
    final fetchedNews = await loadNewsData();
    setState(() {
      newsList = fetchedNews;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: uppBar(title: "News"),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[200],
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: NavBar(),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 15.0,
        ),
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          String source = newsList[index].source;
          String title = newsList[index].title;
          String og = newsList[index].og; // Image
          String link = newsList[index].link; // Source Link

          return newsCard(source: source, link: link, og: og, title: title);
        },
        itemCount: newsList.length,
      ),
    );
  }
}

Future<List<NewsItem>> loadNewsData() async {
  // TODO: Implement data fetching and display

  // Fetch data from public API
  final Uri apiUrl = Uri.parse("https://ok.surf/api/v1/news-feed");
  final response = await http.get(apiUrl);

  if (response.statusCode != 200) {
    throw Exception("Failed to fetch news data");
  }

  // Convert fetch response into JSON and store only the list of "Entertainment" news
  final newsCategory = "Technology";
  final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
  final entertainmentNews = jsonData[newsCategory];

  // Iterate through the list of entertainment news and store into a temporary list
  // newsList state is set to the value of the temporary list
  List<NewsItem> tempList = [];
  for (var news in entertainmentNews) {
    NewsItem newsItem = NewsItem.fromJSON(news);
    tempList.add(newsItem);
  }

  return tempList;
}
