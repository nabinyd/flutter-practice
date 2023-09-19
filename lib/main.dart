import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practicewidget/home_page.dart';
import 'package:practicewidget/setting_page.dart';
import 'package:practicewidget/simple_appbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/home_page': (context) => HomePage(),
        '/setting': (context) => SettingPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          // leading: Icon(Icons.menu),
          // leadingWidth: 80,
          // leading: BackButton(),
          centerTitle: true,
          title: Text('Portfolio'),
          titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
          actions: [
            IconButton(
                onPressed: () {
                  print('hello');
                },
                icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
          ],
          actionsIconTheme: IconThemeData(size: 25),
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [Colors.purple, Colors.red],
          //         begin: Alignment.bottomLeft,
          //         end: Alignment.topRight),
          //   ),
          // ),
          bottom: TabBar(
              isScrollable: false,
              automaticIndicatorColorAdjustment: false,
              dividerColor: Color(0xffc40b0b),
              labelColor: Colors.white,
              indicatorWeight: 3,

              // padding: EdgeInsets.only(top: 5, bottom: 10),
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.face),
                  text: 'Profile',
                ),
                Tab(
                  icon: Icon(Icons.contact_mail),
                  text: 'Mail',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'setting',
                ),
              ]),
          elevation: 0,
          toolbarHeight: 70,
          toolbarOpacity: 1,
          surfaceTintColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        drawer: NavigationDrawer(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 25,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    iconSize: 40,
                    color: Colors.black,
                  ),
                  title: const Text('Nabin Yadav'),
                  subtitle:
                      TextButton(onPressed: () {}, child: Text('Profile')),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chat_bubble_rounded)),
                        title: Text('Chats'),
                      ),
                      ListTile(
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.shop)),
                        title: Text('Marketplace'),
                      ),
                      ListTile(
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                        title: Text('Message requests'),
                      ),
                      ListTile(
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.archive)),
                        title: Text('Archive'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Communities'),
                      TextButton(onPressed: () {}, child: Text('Edit')),
                    ],
                  ),
                ),
                Container(
                    height: 500,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.red)),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          leading: CircleAvatar(
                            radius: 25,
                          ),
                          title: Text('Home'),
                          titleTextStyle:
                              TextStyle(fontSize: 15, color: Colors.black),
                          subtitle: Text('2.25k active'),
                        );
                      },
                      itemCount: 10,
                    )),
              ],
            ),
          )
        ]),
        bottomNavigationBar: const GNav(tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.search),
          GButton(icon: Icons.menu)
        ]),
        extendBodyBehindAppBar: true,
        body: TabBarView(children: [
          Container(
            color: Colors.red,
          )
        ]),
      ));
}
