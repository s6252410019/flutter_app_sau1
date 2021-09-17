import 'package:flutter/material.dart';

class SecondUI extends StatefulWidget {
  const SecondUI({Key? key}) : super(key: key);

  @override
  _SecondUIState createState() => _SecondUIState();
}

class _SecondUIState extends State<SecondUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* backgroundColor: Colors.yellow, */
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Second UI'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey[900],
              )),
        ],
      ),
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
    );
  }
}
