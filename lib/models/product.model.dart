import 'package:intl/intl.dart';

class Products {
  String id = "";
  String name = "";
  double price = 0.0;
  String picture = "";
  String country = "";
  String ip = "";

  Products(
      {this.id = "",
      this.price = 0.0,
      this.name = "",
      this.country = "",
      this.ip = "",
      this.picture = ""});

  String toPeso() {
    final pesoFormatter = NumberFormat.simpleCurrency(name: "PHP");

    return pesoFormatter.format(price);
  }
}
