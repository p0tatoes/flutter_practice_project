import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// TODO: create news item card

Container newsCard(
    {required String source,
    required String link,
    required String og,
    required String title}) {
  return Container(
    width: 500.0,
    height: 300.0,
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CachedNetworkImage(
              imageUrl: og,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(source)
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
