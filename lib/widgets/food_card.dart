import "package:flutter/material.dart";

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        width: 600,
        height: 300,
        child: Card(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 280,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/borgir.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    right: 15.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 3.0),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Food",
                        style: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                // padding: EdgeInsets.all(25.0),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(children: [
                    const Text(
                      "Agriculture is good for both humans and animals",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w900),
                    ),
                    const Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non dolor in enim volutpat laoreet. Fusce tempor urna sit amet dui feugiat iaculis. Donec sollicitudin ullamcorper varius. Integer sit amet placerat nibh. Sed imperdiet arcu vitae ornare volutpat. Cras egestas, erat et imperdiet hendrerit, ipsum massa molestie magna, id ultrices felis nisl ultricies ex. Integer condimentum nisl et arcu mattis, quis mollis justo pellentesque. Sed in blandit ligula, sit amet suscipit ex.",
                        style: TextStyle(
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis),
                        softWrap: true,
                        maxLines: 7,
                      ),
                    ),
                    const Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          width: 45.0,
                          height: 45.0,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/cat_eating_looking_up.jpg"),
                              ),
                              shape: BoxShape.circle),
                        ),
                        const Text(
                          "Kiran Acharya",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        const Text(
                          "Jan 12, 2019",
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        )
                      ],
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
