import 'package:flutter/material.dart';

import '../Widgets/Drawer/navigation_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        centerTitle: true,
        title: Text(
          "Radio Punjab Today",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: Colors.purpleAccent,
            child: Image.asset(
              'assets/images/radio _logo.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: ListTile(
                tileColor: Colors.white,
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/radio _logo.jpg',
                      width: 50,
                      height: 60,
                      fit: BoxFit.cover,
                    )),
                title: Text(
                  "Radio Punjab Today",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red[300]),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "LIVE",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.pause,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Video",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Call Studio",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.red[600],
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red[600],
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red[600],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 100,
                        width: 110,
                        color: Colors.purple,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Image.asset(
                                "assets/images/radio _logo.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Text(
                                      "New",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.red[600],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Video",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Audio",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red[600],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 100,
                          width: 110,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Stack(children: [
                            Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Image.asset(
                                    'assets/images/radio _logo.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Text(
                                          "New",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.red[600],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "25 AUG SH",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.play_arrow,
                                size: 60,
                                color: Colors.red[600],
                              ),
                            )
                          ]),
                        ),
                      ),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "News",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red[600],
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 250,
                width: double.maxFinite,
                child: Stack(children: [
                  Container(
                      height: 250,
                      width: double.maxFinite,
                      child: Image.asset(
                        'assets/images/radio _logo.jpg',
                        fit: BoxFit.cover,
                      )),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 80,
                        width: double.maxFinite,
                        decoration:
                            BoxDecoration(color: Colors.red.withOpacity(0.3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "News",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "12:41 am , 25 Aug 2022",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ))
                ]),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 120,
                      width: double.maxFinite,
                      child: Stack(children: [
                        Container(
                            height: 120,
                            width: double.maxFinite,
                            child: Image.asset(
                              'assets/images/radio _logo.jpg',
                              fit: BoxFit.cover,
                            )),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 40,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.3)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "News",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "12:41 am , 25 Aug 2022",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ]),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 120,
                      width: double.maxFinite,
                      child: Stack(children: [
                        Container(
                            height: 120,
                            width: double.maxFinite,
                            child: Image.asset(
                              'assets/images/radio _logo.jpg',
                              fit: BoxFit.cover,
                            )),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 40,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.3)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "News",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "12:41 am , 25 Aug 2022",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Social",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red[600],
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/images.jfif",
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Website",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Facebook-Icon-Large.png",
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FaceBook",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/YouTube.png",
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "YouTube",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/email_logo.png",
                      height: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Email Us",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 110,
          )
        ],
      ),
      drawer: Drawer(
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 105,
              width: double.maxFinite,
              color: Colors.red[600],
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Radio Punjab Today",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Column(
              children: [
                NavigationContainer(
                  titleText: "Home",
                  icon: Icons.home_filled,
                ),
                NavigationContainer(
                  titleText: "Call Studio",
                  icon: Icons.call_rounded,
                ),
                NavigationContainer(
                  titleText: "Download Audio",
                  icon: Icons.download,
                ),
                NavigationContainer(
                  titleText: "Our Team",
                  icon: Icons.supervised_user_circle_rounded,
                ),
                NavigationContainer(
                  titleText: "Privacy Policy",
                  icon: Icons.privacy_tip,
                ),
                NavigationContainer(
                  titleText: "Terms & Conditions",
                  icon: Icons.file_copy_outlined,
                ),
                NavigationContainer(
                  titleText: "Rate This App!",
                  icon: Icons.star_rate_outlined,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.red[600],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Version",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "0.1",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100,
        color: Colors.white,
        child: Card(
          child: ListTile(
            tileColor: Colors.white,
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/radio _logo.jpg',
                  width: 50,
                  height: 60,
                  fit: BoxFit.cover,
                )),
            title: Text(
              "Radio Punjab Today",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            trailing: Icon(
              Icons.pause,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
