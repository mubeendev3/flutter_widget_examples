import 'package:flutter/material.dart';

class UserAccountsDrawer extends StatelessWidget {
  const UserAccountsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        drawer: const Drawer(
          child: Column(
            children: [
              // ListTile(
              //   title: Text("Home"),
              //   subtitle: Text("My Beautifull Home"),
              //   leading: CircleAvatar(
              //     backgroundImage: AssetImage("assets/images/dp.jpg"),
              //   ),
              //   trailing: Icon(Icons.home),
              //   shape: Border(
              //     bottom: BorderSide(
              //       color: Colors.black26,
              //       width: 0.7,
              //     ),
              //   ),
              //   splashColor: Colors.deepPurple,
              //   hoverColor: Colors.red,
              //   textColor: Colors.deepPurple,
              //   tileColor: Colors.black26,
              //   selected: false,
              //   selectedColor: Colors.white,
              //   selectedTileColor: Colors.deepPurple,
              //   isThreeLine: true,
              //   iconColor: Colors.white,
              //   horizontalTitleGap: 10,
              //   contentPadding: EdgeInsets.all(30),
              //   enabled: true,
              // ),
              // ListTile(
              //   title: Text("Home"),
              //   subtitle: Text("My Beautifull Home"),
              //   leading: CircleAvatar(
              //     backgroundImage: AssetImage("assets/images/dp.jpg"),
              //   ),
              //   trailing: Icon(Icons.home),
              //   shape: Border(
              //     bottom: BorderSide(
              //       color: Colors.black26,
              //       width: 0.7,
              //     ),
              //   ),
              //   splashColor: Colors.deepPurple,
              //   hoverColor: Colors.red,
              //   textColor: Colors.deepPurple,
              //   tileColor: Colors.black54,
              //   subtitleTextStyle: TextStyle(
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),

              // DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.deepPurple,
              //   ),
              //   child: Column(
              //     children: [
              //       CircleAvatar(
              //         backgroundImage: AssetImage("assets/images/dp.jpg"),
              //         radius: 60,
              //       ),
              //     ],
              //   ),
              // ),

              // UserAccountsDrawerHeader(
              //   accountName: Text("Mubeen Mehmood"),
              //   accountEmail: Text("mubeendev3@gmail.com"),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundImage: AssetImage("assets/images/dp.jpg"),
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.deepPurple,
              //   ),
              //   otherAccountsPictures: [
              //     CircleAvatar(
              //       backgroundImage: AssetImage("assets/images/dp.jpg"),
              //     ),
              //     CircleAvatar(
              //       backgroundImage: AssetImage("assets/images/dp.jpg"),
              //     ),
              //     CircleAvatar(
              //       backgroundImage: AssetImage("assets/images/dp.jpg"),
              //     ),
              //   ],
              //   otherAccountsPicturesSize: Size.square(30),
              // ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Drawer Practice"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.deepPurple,
          child: const Center(
              child: Text(
            "UserAccountsDrawerHeader",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
        ),
      ),
    );
  }
}
