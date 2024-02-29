import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

import 'materialapp.dart';

// GFGapp
class TheorySession extends StatelessWidget {
  const TheorySession({super.key});

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_filled)),
                Tab(icon: Icon(Icons.music_note_sharp)),
                Tab(icon: Icon(Icons.child_friendly_outlined)),
                Tab(icon: Icon(Icons.music_note_sharp))
              ],
            ),
            title: const Text(
              "Flutter Tutorial",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 60.2,
            toolbarOpacity: 0.8,
            actions: const <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.settings),
                tooltip: 'Setings Icon',
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.notification_add),
                tooltip: 'Notification Icon',
              )
            ],
            // shape: const RoundedRectangleBorder(
            //   borderRadius: BorderRadius.only(
            //       bottomRight: Radius.circular(25),
            //       bottomLeft: Radius.circular(25)),
            // ),
            elevation: 0.00,
            backgroundColor: Colors.greenAccent[400],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const ListTile(
                  title: Text(
                    'Item One',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: const Text(
                      'Franklin Isaac',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                    accountEmail: const Text(
                      'Isaacfrank297@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                    currentAccountPictureSize: Size.square(40),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      // borderRadius: const BorderRadius.all(10),
                    ),
                    currentAccountPicture: const Image(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg',
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text(
                    ' My Profile ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  subtitle: const Text(
                    'View your user profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    displayDialog(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text(
                    ' My Course ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  subtitle: const Text(
                    'View all available courses',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    Navigator.of(context).push(_createroute());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.workspace_premium),
                  title: const Text(
                    ' Go Premium ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  subtitle: const Text(
                    'Access all premium courses',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.video_label),
                  title: const Text(
                    ' Saved Videos ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  subtitle: const Text(
                    'Access all saved videos',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text(
                    ' Edit Profile ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  subtitle: const Text(
                    'Click to edit user profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text(
                    'LogOut',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  const ListTile(
                    title: Text(
                      'Item One',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                    subtitle: Text(
                      'This is the subtitle for item one',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                    trailing: Icon(Icons.add),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // CircularProgressIndicator(
                  //   backgroundColor: Colors.red,
                  //   valueColor: AlwaysStoppedAnimation(Colors.white),
                  //   strokeWidth: 10,
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // LinearProgressIndicator(
                  //   backgroundColor: Colors.yellow,
                  //   valueColor: AlwaysStoppedAnimation(Colors.white),
                  //   minHeight: 5,
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('clock/clock1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    //   Image(
                    //     image: AssetImage('clock/clock1.jpg'),
                    child: const ListTile(
                      title: Text(
                        'This section',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'This section subtitle is here',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Image(image: AssetImage('clock/clock2.jpg')),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Image(image: AssetImage('clock/clock3.jpg')),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'clock/clock1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'clock/clock2.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'clock/clock3.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'clock/clock1.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SkeletonAnimation(
                              child: Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  // border: Border.all(
                                  //   color: Colors.green,
                                  // ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SkeletonAnimation(
                                      child: Container(
                                        height: 15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey[300],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SkeletonAnimation(
                                      child: Container(
                                        width: 60,
                                        height: 13,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey[300],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const Icon(Icons.music_note_sharp)
            ],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: 0,
          //   fixedColor: Colors.green,
          //   items: const [
          //     BottomNavigationBarItem(
          //       label: "Home",
          //       icon: Icon(Icons.home),
          //     ),
          //     BottomNavigationBarItem(
          //       label: "Search",
          //       icon: Icon(Icons.search),
          //     ),
          //     BottomNavigationBarItem(
          //       label: "Profile",
          //       icon: Icon(Icons.account_circle),
          //     ),
          //   ],
          //   onTap: (int indexOfItem) {},
          // ),
        ),
      ),
    );
  }

  displayDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog(
            title: const Text('Choose a lunch meal for today?'),
            elevation: 30,
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'Nkwobi?');
                },
                child: const Text('Nkwobi'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'Rice and Stew');
                },
                child: const Text('Rice and Stew'),
              )
            ],
          ),
        );
      },
    );
  }
}

Route _createroute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}
