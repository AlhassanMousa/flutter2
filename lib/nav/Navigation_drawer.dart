import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/news.dart';
import 'package:flutter_application_3/screens/login_page.dart';
import 'package:flutter_application_3/nav/drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 30, 96, 103),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                name: 'Signin',
                icon: Icons.login_rounded,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              DrawerItem(
                name: 'News',
                icon: Icons.newspaper,
                onPressed: () => onItemPressed(context, index: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
        break;
      case 1:
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return NewsScreen();
        }));
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        CircleAvatar(
            radius: 25.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("assets/avatar.png"),
            )),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Alhassan Mousa',
                style: TextStyle(fontSize: 15, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('AlhassanMousa@gmail.com',
                style: TextStyle(fontSize: 12, color: Colors.white))
          ],
        ),
      ],
    );
  }
}
