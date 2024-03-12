import 'package:basic_widgets_moderate/data/sample.data.dart';
import 'package:basic_widgets_moderate/models/product.model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Products> pdata = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    List<Map<String, Object>> data = SampleProducts().products;

    for (var i = 0; i < data.length; i++) {
      Products tempData = Products(
          id: data[i]["id"].toString(),
          name: data[i]["name"].toString(),
          price: double.parse(data[i]["price"].toString()),
          country: data[i]["country"].toString(),
          picture: data[i]["picture"].toString(),
          ip: data[i]["ip"].toString());
      pdata.add(tempData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: pdata.length,
          itemBuilder: (context, index) => ListTile(
            leading: Container(
              width: 30.0,
              height: 30.0,
              child: CachedNetworkImage(
                imageUrl: pdata[index].picture,
                placeholder: (context, url) => CircularProgressIndicator(),
              ),
            ),
            trailing: Icon(Icons.arrow_drop_down),
            title: Text(pdata[index].name),
            subtitle: Text(pdata[index].toPeso()),
          ),
        ),
      ),
    );
  }
}
