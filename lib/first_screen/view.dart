import 'package:flutter/material.dart';
import 'package:task/core/compontes.dart';
import 'package:task/first_screen/model.dart';

class ItemsModel {
  final String image, title;
  final Color color;

  ItemsModel({
    required this.color,
    required this.image,
    required this.title,
  });
}

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   var modelController = ScrollController();

  List<ItemsModel> Model=[
    ItemsModel(color: Colors.orange, image: "assets/images/clipart153053.png", title: "1 week streak"),
    ItemsModel(color: Colors.greenAccent, image: "assets/images/clipart611965.png", title: "3 week streak"),
    ItemsModel(color: Colors.blueAccent, image: "assets/images/clipart1039424.png", title: "7 week streak"),
    ItemsModel(color: Colors.purpleAccent, image: "assets/images/clipart1586085.png", title: "9 week streak"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, John",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[700],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        "assets/images/clipart43881.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: const [
                          Text(
                            "YOUR BALANCE",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "23,050.82",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15),
              child: Row(
                children: [
                  const Text(
                    "Achievements",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  defaultTextButton(function: () {}, text: "See all")
                ],
              ),
            ),
           SizedBox(
             width: double.infinity,
             height:120,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               clipBehavior: Clip.antiAlias,
               itemBuilder: (context,index)=>
                 buildItems(Model[index]),
               itemCount: Model.length,
               controller:modelController,
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15,),
              child: Row(
                children: [
                  const Text(
                    "Investment portfolio",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize:18
                    ),
                  ),
                  const Spacer(),
                  defaultTextButton(function: () {}, text: "See all")
                ],
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 150,
                ),
                children: const [
                  LastItems(
                    image: "assets/images/apple-logo-png-12902.png",
                    name: "Apple",
                  ),
                  LastItems(
                      name: "Activision Blizzard",
                      image:
                          "assets/images/—Pngtree—letter a logo png design_6742615.png"),
                  LastItems(name: "AMD", image: "assets/images/amd-logo.png"),
                  LastItems(
                      name: "value",
                      image:
                          "assets/images/Letter-s-logo-design-template-on-transparent-background-PNG.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildItems(ItemsModel model) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 3),
  child:   Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: model.color,

        ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 50,
                  child: Image.asset(
                    model.image,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  model.title,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
      ),
);

