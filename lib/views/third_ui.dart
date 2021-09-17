import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_sau1/views/third_page1_ui.dart';
import 'package:flutter_app_sau1/views/third_page2_ui.dart';
import 'package:flutter_app_sau1/views/third_page3_ui.dart';
import 'package:flutter_app_sau1/views/third_page4_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({Key? key}) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  List page = [
    ThirdPage1UI(),
    ThirdPage2UI(),
    ThirdPage3UI(),
    ThirdPage4UI(),
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text('Third UI'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.red,
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: 'Page1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_sharp),
            label: 'Page2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_disabled),
            label: 'Page3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            label: 'Page4',
          ),
        ],
      ),
      body: page.elementAt(selectIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.jpg',
                ),
              ),
              accountName: Text('ถิระพันธ์ จั่นวิลัย'),
              accountEmail: Text('ID: 6252410019'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bgdrawer.png'),
                      fit: BoxFit.fill)),
              otherAccountsPictures: [
                Image.asset('assets/images/saulogo.png'),
              ],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หน้าแรก',
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('ตารางสอน'),
              leading: Icon(
                Icons.table_chart,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('ตารางสอบ'),
              leading: Icon(Icons.access_alarm),
              trailing: Text(
                '9999',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ออกจากโปรแกรม',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
