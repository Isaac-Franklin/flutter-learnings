// ignore_for_file: unused_field, prefer_const_constructors

import 'dart:convert';
import "tabs.dart";
// import "json/bookspic.json";

import 'package:flutter/material.dart';
// import 'json/popularbooks.json'

class EbookDashboard extends StatefulWidget {
  const EbookDashboard({super.key});

  @override
  State<EbookDashboard> createState() => _EbookDashboardState();
}

class _EbookDashboardState extends State<EbookDashboard>
    with SingleTickerProviderStateMixin {
  // late List<dynamic> popularBooks;
  late List popularBooks;
  late List booksPics;
  late TabController _tabcontroller;
  late ScrollController _scrollcontroller;

  // ReadBooks() async {
  //   await DefaultAssetBundle.of(context)
  //       .loadString("json/bookspic.json")
  //       .then((s) {
  //     setState(() {
  //       booksPics = json.decode(s);
  //     });
  //   });
  // }

  ReadData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/popularbooks.json")
        .then((s) {
      setState(() {
        _tabcontroller = TabController(length: 3, vsync: this);
        _scrollcontroller = ScrollController();
        popularBooks = json.decode(s);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // ReadBooks();
    ReadData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              // height: 100,
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 20,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.dashboard,
                    size: 30.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    bottom: 10,
                  ),
                  child: const Text(
                    'Popular Books',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'assets/Poppins/Poppins-Black.ttf'),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Positioned(
                  // top: 0,
                  // left: -10,
                  child: Container(
                    height: 150,
                    child: PageView.builder(
                        controller: PageController(viewportFraction: 0.9),
                        // ignore: unnecessary_null_comparison
                        itemCount:
                            popularBooks == null ? 0 : popularBooks.length,
                        itemBuilder: (_, i) {
                          return Container(
                            height: 150,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 2, color: Colors.blue),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  popularBooks[i]["img"],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
            Expanded(
              child: NestedScrollView(
                controller: _scrollcontroller,
                headerSliverBuilder: (BuildContext context, bool isScroll) {
                  return [
                    SliverAppBar(
                      pinned: true,
                      backgroundColor: Colors.white,
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(30),
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 5,
                            left: 0,
                          ),
                          child: TabBar(
                            controller: _tabcontroller,
                            indicatorPadding: EdgeInsets.all(0),
                            indicatorSize: TabBarIndicatorSize.label,
                            labelPadding: const EdgeInsets.only(
                              right: 10,
                              bottom: 5,
                              left: 0,
                            ),
                            isScrollable: true,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 7,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            tabs: const [
                              tabs(
                                color: Colors.red,
                                text: 'NEW',
                              ),
                              tabs(
                                color: Colors.blue,
                                text: 'TRENDING',
                              ),
                              tabs(
                                color: Colors.yellow,
                                text: 'HISTORIC',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ),
                  ];
                },
                body: TabBarView(
                  controller: _tabcontroller,
                  // children: [
                  // ],
                  children: [
                    Material(
                      child: ListView.builder(
                        itemCount:
                            popularBooks == null ? 0 : popularBooks.length,
                        itemBuilder: (_, i) {
                          return Container(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 10,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(0, 2),
                                      color: Colors.grey.withOpacity(0.2),
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 98,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          popularBooks[i]["bookimg"],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        title: Text('Area'),
                      ),
                    ),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        title: Text('Area'),
                      ),
                    ),
                  ],
                  // physics: BouncingScrollPhysics(
                  //     decelerationRate: ScrollDecelerationRate.fast),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
