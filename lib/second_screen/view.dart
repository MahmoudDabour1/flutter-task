import 'package:flutter/material.dart';
import 'package:task/core/compontes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController myController;

  @override
  void initState() {
    myController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        title: const Center(
          child: Text(
            "Profile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/clipart43881.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Johb Edwards",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            TabBar(
              unselectedLabelColor: Colors.grey[600],
              controller: myController,
              isScrollable: true,
              indicator: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              tabs: [
                SizedBox(
                  width: 80,
                  height: 60,
                  child: Column(
                    children: const [
                      Text(
                        "32",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "posts",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 60,
                  child: Column(
                    children: const [
                      Text(
                        "26354",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 60,
                  child: Column(
                    children: const [
                      Text(
                        "256",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Subscrib",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(controller: myController, children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Posts",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          defaultTextButton(
                            function: () {},
                            text: "Sorting",
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[600],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(30)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/clipart43881.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text("Johb Edwards\n5 min ago",style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10,left: 20),
                                child: Text("Bought 300 of Apple",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(Icons.heart_broken_rounded,color: Colors.white,),
                                  Text("31",style: TextStyle(color: Colors.white),),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.messenger,color: Colors.white,),
                                  Text("12",style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.screen_share_rounded,color: Colors.white,)
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[600],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(30)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          'assets/images/clipart43881.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text("Anna Shumaher\n12 hours ago",style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10,left: 20),
                                  child: Text("Study says buying a winning stock is easy",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Icon(Icons.heart_broken_rounded,color: Colors.white,),
                                    Text("31",style: TextStyle(color: Colors.white),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.messenger,color: Colors.white,),
                                    Text("12",style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.screen_share_rounded,color: Colors.white,)
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[600],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(30)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/images/clipart43881.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text("Johb Edwards\n5 min ago",style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10,left: 20),
                                child: Text("Bought 300 of Apple",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(Icons.heart_broken_rounded,color: Colors.white,),
                                  Text("31",style: TextStyle(color: Colors.white),),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.messenger,color: Colors.white,),
                                  Text("12",style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.screen_share_rounded,color: Colors.white,)
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                const Center(
                  child: Text(
                    "Followers",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
                const Center(
                  child: Text(
                    "Subscrib",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
