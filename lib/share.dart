import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

WidgetHinttopScorll(String name, IconData icon, Color color, Color iconColor) =>
    (Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(name,
            style: TextStyle(
              color: color,
            )),
      ],
    ));

SeparatedButtons() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
// Search Button
        ElevatedButton.icon(
          onPressed: () {
// Handle search action
            print('Search button pressed');
          },
          icon: Icon(Icons.search, color: Colors.white),
          label: Text('Search'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            // Text and icon color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
        SizedBox(width: 20), // Space between buttons
// Refresh Button
        ElevatedButton.icon(
          onPressed: () {
// Handle refresh action
            print('Refresh button pressed');
          },
          icon: Icon(Icons.refresh, color: Colors.white),
          label: Text('Refresh'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            // Text and icon color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );

buildSearchField(BuildContext context, String hint, String text) => (Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1.0),
              ),
            ),
          ),
        ]),
      ),
    ));

gridBuilder() {
  return Container(
    width: double.infinity,
    height: 600,
    child: GridView.builder(
      physics:  NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of items per row
        crossAxisSpacing: 5, // Horizontal spacing
        mainAxisSpacing: 5, // Vertical spacing
        childAspectRatio: 1.0, // Aspect ratio of each item
      ),
      padding: EdgeInsets.all(10),
      itemCount: 8, // Total number of items
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child:Container(
            color: Colors.red,

          ),

          // Container(
          //   color: Colors.red,
          //   width: 50,
          //   height: 10,
          //   child: Center(
          //     child: Text(
          //       'Item ${index + 1}',
          //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
        );
      },
    ),
  );
}

buildDatePicker(BuildContext context) => (Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              hintText: "4/6/2025",
              prefixIcon: Icon(
                Icons.calendar_today,
                color: Colors.black,
                size: 15,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    ));

iconMenu(BuildContext context) => PopupMenuButton<String>(
      icon: Icon(Icons.menu, size: 30), // Clickable icon
      color: Colors.white, // Background color of the popup menu
      onSelected: (value) {
// Handle menu item selection
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'home',
          child: Row(
            children: [
              Icon(
                Icons.account_balance,
                color: HexColor("#44ff00"),
              ), // Icon for the menu item
              SizedBox(width: 8), // Space between icon and text
              Text(
                'الرئيسية',
                style: TextStyle(color: HexColor("#44ff00")),
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'Option2',
          child: Row(
            children: [
              Icon(
                Icons.checklist_rtl,
                color: HexColor('#6c757d'),
              ),
              // Icon for the menu item
              SizedBox(width: 8),
              Text(
                'المهام',
                style: TextStyle(color: HexColor('#6c757d')),
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'Option3',
          child: Row(
            children: [
              Icon(Icons.logout, color: Colors.red), // Icon for the menu item
              SizedBox(width: 8),
              Text('Logout'),
            ],
          ),
        ),
      ],
    );

searchIcon(Color color) {
  return InkWell(
    onTap: () {},
    child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.blue, // Border color
            width: .5, // Border width
          ),
        ),
        margin: EdgeInsets.all(10),
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 22,
        )),
  );
}
