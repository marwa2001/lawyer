import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:web/share.dart';
import 'package:badges/badges.dart' as badges;

class MobileHome extends StatefulWidget {
  @override
  State<MobileHome> createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<MobileHome> {
  @override
  Color buttonColor1 = HexColor("#00fff7");
  Color buttonColor2 = HexColor("#00fff7");
  Color buttonColor3 = HexColor("#00fff7");

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f1efea'),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: badges.Badge(
          badgeContent: Text('3'),
          child: Icon(Icons.settings),
        ) ,
        actions: [Row(
          children: [
            Row(
              children: [
                iconMenu(context),
                SizedBox(width: 20),
                badges.Badge(
                  badgeContent: Text('3'),
                  child: Icon(Icons.mail),
                ),
                SizedBox(width: 20),
                badges.Badge(
                  badgeContent: Text(''),
                  child: Icon(Icons.notifications,),
                  badgeAnimation: badges.BadgeAnimation.scale(
                    animationDuration: Duration(milliseconds: 800),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: true,
                    curve: Curves.fastOutSlowIn,
                    colorChangeAnimationCurve: Curves.easeInCubic,
                  ),
                ),
                SizedBox(width: 20),
                Text('Arabic'),
                SizedBox(width: 20),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 15,
                  child: Text(
                    "A",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),

          ],
        )],

      ),
      body: SingleChildScrollView(


        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
            // Search Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all( 30),
                child: Column(children: [
                  Row(children: [
                    buildSearchField(context, "بحث عن موكل","بحث عن موكل"),
                    MouseRegion(
                      onEnter: (_) => setState(() => buttonColor1 = Colors.orange),
                      onExit: (_) => setState(() => buttonColor1 = HexColor("#00fff7")),
                      child: searchIcon(buttonColor1),
                    ),

                  ],),
                  SizedBox(height: 10,),
  Row(
    children: [
      buildSearchField(context, "بحث عن قضية","بحث عن قضية"),
      MouseRegion(
        onEnter: (_) => setState(() => buttonColor2 = Colors.orange),
        onExit: (_) => setState(() => buttonColor2 = HexColor("#00fff7")),
        child: searchIcon(buttonColor2),
      ),
    ],
  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      buildSearchField(context, "بحث عن استشارة","بحث عن استشارة"),
                      MouseRegion(
                        onEnter: (_) => setState(() => buttonColor3 = Colors.orange),
                        onExit: (_) => setState(() => buttonColor3 = HexColor("#00fff7")),
                        child: searchIcon(buttonColor3),
                      ),
                    ],
                  ),









                ]),
              ),
            ),

            // Date Picker Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
                child: Column(
                  children: [
                    Text(
                      "اختر تاريخ البداية وتاريخ النهاية لتظهر لك الإشعارات",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "التاريخ التلقائي من اليوم وحتى 10 أيام قادمة",
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 30,
                        child: buildDatePicker(context)),
                
                    SizedBox(height: 10),
                    Container(
                      height: 30,
                        child: buildDatePicker(context)),
                    SizedBox(height: 10),
                    SeparatedButtons(),
                  ],
                ),
              ),
            ),

            // Saudi Flag Image
          ],
        ),
      ),
    );
  }


}

