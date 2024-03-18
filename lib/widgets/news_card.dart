import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Container newsCard(
    {required String source,
    required String link,
    required String og,
    required String title}) {
  Future<void> _redirectToBrowser(String url) async {
    Uri uri = Uri.parse(url);
    try {
      launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (e) {
      throw Exception("Failed to redirect");
    }
  }

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
                  Text(source),
                  InkWell(
                    child: Text(
                      link,
                      style: TextStyle(
                          color: Colors.grey[300], fontStyle: FontStyle.italic),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () => _redirectToBrowser(link),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
