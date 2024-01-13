import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<String> storyImages = [
      "images/p1.jpg",
      "images/p2.jpg",
      "images/p3.jpg",
      "images/p4.jpg",
      "images/p5.jpg",
      "images/p1.jpg",
      "images/p2.jpg",
      "images/p3.jpg",
      "images/p4.jpg",
      "images/p5.jpg",
    ];
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          title: Text(
            "UserName",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.navicon),
              color: Colors.white,
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/post3.jpg"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Name",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              "About Yourself",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                        ),
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Posts",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width * 0.17,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Followers",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width * 0.17,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Followering",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: size.height * 0.1,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 38, 38, 38),
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Professional dashboard",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    Text(
                      "10 accounts reached in the last 30 days",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 9,
                      ),
                      Column(
                        children: [
                          Container(
                            height: size.height * 0.05,
                            width: size.width * 0.48,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 38, 38, 38),
                              borderRadius: BorderRadius.circular(
                                  12.0), // Adjust the radius as needed
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Edit profile",
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            height: size.height * 0.05,
                            width: size.width * 0.48,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 38, 38, 38),
                              borderRadius: BorderRadius.circular(
                                  12.0), // Adjust the radius as needed
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Share profile",
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      9,
                      (index) => Container(
                            padding: const EdgeInsets.all(9),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      const Color.fromARGB(255, 45, 45, 45),
                                  child: CircleAvatar(
                                    radius: 28,
                                    backgroundImage:
                                        AssetImage(storyImages[index]),
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text("Highlights",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white))
                              ],
                            ),
                          )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.grid_on,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.clapperboard,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.user,
                        color: Colors.white,
                      )),
                ],
              ),
              Container(
                height: size.height * 0.0002,
                width: size.height * 1,
                color: Colors.grey,
              )
            ],
          ),
        ),

   bottomNavigationBar: Container(
          // color: Colors.black,
          height: size.height * 0.09,
          alignment: Alignment.center,
          child: BottomAppBar(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.home,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.search,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.clapperboard,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.user,
                      color: Colors.white,
                    )),

              ],
            ),
          ),
        ));
  }
}
