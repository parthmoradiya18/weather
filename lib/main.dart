import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'Flutter Widgets Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.yellow,
            bottom: TabBar(tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Updates'),
              Tab(text: 'Calls'),
            ]),
            title: Text('Flutter Weather'),
            actions: [
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('New Group'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Linked devices'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Settings'),
                  ),
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Today\'s Weather',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(
                      Icons.wb_sunny,
                      size: 100,
                      color: Colors.orange.shade300,
                    ),
                    SizedBox(height: 20),
                    Text(
                      '25°C',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Sunny',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              //Text('Content of Tab 1')),
              Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Today\'s Weather',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.wb_sunny,
                    size: 100,
                    color: Colors.orange.shade100,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '35°C',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sunny',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),),
              Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Today\'s Weather',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.wb_sunny,
                    size: 100,
                    color: Colors.orange.shade900,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '30°C',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sunny',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.grey,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.grey.shade700),
                    accountName: Text(
                      "Parth",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    accountEmail: Text(
                      "parth2141@gmail.com",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    )),
                ListTile(
                  leading: Icon(Icons.person_search_outlined),
                  title: Text("Search"),
                  onTap: () {
                    // Handle item 1 tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  onTap: () {
                    // Handle item 2 tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.send_and_archive_outlined),
                  title: Text('Send'),
                  onTap: () {
                    // Handle item 1 tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.delete_outline_rounded),
                  title: Text('delete'),
                  onTap: () {
                    // Handle item 2 tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Contacts'),
                  onTap: () {
                    // Handle item 1 tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('Help and feedback'),
                  onTap: () {
                    // Handle item 2 tap
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ));
  }
}
