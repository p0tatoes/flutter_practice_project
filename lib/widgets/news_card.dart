import 'package:flutter/material.dart';

// TODO: create news item card
class NewsCard extends StatelessWidget {
  const NewsCard(
      {super.key,
      required this.source,
      required this.source_url,
      required this.image_url,
      required this.title});
  final String source;
  final String source_url;
  final String image_url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
