import 'package:flutter/material.dart';
import './home_page.dart';
import './recharge_page.dart';
import './my_vouchers_page.dart';
import './coupons_page.dart';
import './engage_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  Widget callPage(int currentIndex){
    switch(currentIndex){
      case 0 : return HomePage();
      case 1 : return RechargePage();
      case 2 : return MyVouchersPage();
      case 3 : return CouponsPage();
      case 4 : return EngagePage();
      break;
      default : return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyJio - Clone", style: TextStyle(fontWeight: FontWeight.w400),),
        backgroundColor: Color(0xff2a3890),
        centerTitle: true, elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mic, color: Colors.white, size: 28,),
            tooltip: 'Apps',
            onPressed: null,
          ),
          IconButton(
          icon: Icon(Icons.apps, color: Colors.white, size: 28,),
          tooltip: 'Apps',
          onPressed: null,
        )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
             Container(
                margin: EdgeInsets.only(left: 20, top: 20,right: 0, bottom: 0 ),
                child : Text("JITHIN JUDE", style: TextStyle(fontSize: 22 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),)
            ),
             Container(
                margin: EdgeInsets.only(left: 20, top: 5,right: 0, bottom: 20 ),
                child : Text("Profile & other settings", style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w500, color:  Color(0xff2a3890)),)
            ),
            Divider( color: Color(0xff7B7B7B),),
             ListTile(
              title:  Text("Recharge", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.refresh, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("My vouchers", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.card_giftcard, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("JioInteract", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.refresh, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("My plans", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.format_list_bulleted, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("JioPay", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.refresh, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("My coupons", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.refresh, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("My statement", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.refresh, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("Jio care", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.phone, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("Locate us", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.location_on, color: Color(0xff2a3890),),
            ),
            ListTile(
              title: Text("Settings", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400, color:  Color(0xff000000)),),
              leading: Icon(Icons.settings, color: Color(0xff2a3890),),
            )
          ],
        ),
      ),
      body: callPage(_currentIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: (value){
            _currentIndex = value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home, color: Color(0xff2a3890)),
                icon: Icon(Icons.home, color: Colors.grey),
                title: Text("Home", style: TextStyle(color:  Colors.black))),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.refresh, color: Color(0xff2a3890)),
                icon: Icon(Icons.refresh, color: Colors.grey),
                title: Text("Recharge", style: TextStyle(color:  Colors.black))),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.card_giftcard, color: Color(0xff2a3890)),
                icon: Icon(Icons.card_giftcard, color: Colors.grey),
                title: Text("My vouchers", style: TextStyle(color:  Colors.black))),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.card_travel, color: Color(0xff2a3890)),
                icon: Icon(Icons.card_travel, color: Colors.grey),
                title: Text("Coupons", style: TextStyle(color:  Colors.black))),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.games, color: Color(0xff2a3890)),
                icon: Icon(Icons.games, color: Colors.grey),
                title: Text("Engage", style: TextStyle(color:  Colors.black)))
          ]),
      ),
    );
  }
}
