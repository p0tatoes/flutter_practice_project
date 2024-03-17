class NewsItem {
  String source;
  String link;
  String og;
  String title;

  NewsItem(
      {required this.source,
      required this.link,
      required this.og,
      required this.title});

  factory NewsItem.fromJSON(Map<String, dynamic> jsonData) =>
      switch (jsonData) {
        {
          'source': String source,
          'link': String link,
          'og': String og,
          'title': String title,
        } =>
          NewsItem(source: source, link: link, og: og, title: title),
        _ => throw Exception("Failed to load news item")
      };
}
