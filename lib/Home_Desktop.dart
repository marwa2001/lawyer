import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:web/share.dart';
import 'package:badges/badges.dart' as badges;

class DesktopHome extends StatefulWidget {
  @override
  State<DesktopHome> createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<DesktopHome> {
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
        ),
        actions: [
          Row(
            children: [
              Row(
                children: [
                  badges.Badge(
                    badgeContent: Text('3'),
                    child: Icon(Icons.mail),
                  ),
                  SizedBox(width: 20),
                  badges.Badge(
                    badgeContent: Text(''),
                    child: Icon(
                      Icons.notifications,
                    ),
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
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Container(
            color: HexColor('#0e6da0'),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            focusColor: HexColor('#44ff00'),
                            iconEnabledColor: HexColor('#44ff00'),
                            items: [],
                            onChanged: (value) {},
                            hint: WidgetHinttopScorll(
                                'الرئيسيه',
                                Icons.account_balance,
                                HexColor("#44ff00"),
                                HexColor("#44ff00")),
                          ),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              items: [
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'legal',
                                    child: Text('خدمات قانونية')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                  value: 'finance',
                                  child: Text('المحاسبة'),
                                ),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                              ],
                              onChanged: (value) {},
                              hint: WidgetHinttopScorll(
                                  'المهام',
                                  Icons.checklist_rtl,
                                  HexColor('#dee2e6'),
                                  HexColor('#dee2e6'))),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'legal', child: Text('خدمات قانونية')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                value: 'finance',
                                child: Text('المحاسبة'),
                              ),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                            ],
                            onChanged: (value) {},
                            hint: WidgetHinttopScorll('الموكلين', Icons.groups,
                                HexColor('#dee2e6'), HexColor('#dee2e6')),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              items: [
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'legal',
                                    child: Text('خدمات قانونية')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                  value: 'finance',
                                  child: Text('المحاسبة'),
                                ),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                              ],
                              onChanged: (value) {},
                              hint: WidgetHinttopScorll(
                                  'فرز القضايا',
                                  Icons.layers_rounded,
                                  HexColor('#dee2e6'),
                                  HexColor('#dee2e6'))),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              items: [
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'legal',
                                    child: Text('خدمات قانونية')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                  value: 'finance',
                                  child: Text('المحاسبة'),
                                ),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                              ],
                              onChanged: (value) {},
                              hint: WidgetHinttopScorll(
                                  'خدمات قانونية',
                                  Icons.calculate_rounded,
                                  HexColor('#dee2e6'),
                                  HexColor('#dee2e6'))),
                        ),
                        SizedBox(width: 10),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'legal', child: Text('خدمات قانونية')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                value: 'finance',
                                child: Text('المحاسبة'),
                              ),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                            ],
                            onChanged: (value) {},
                            hint: WidgetHinttopScorll('القضايا', Icons.hardware,
                                HexColor('#dee2e6'), HexColor('#dee2e6')),
                          ),
                        ),
                        SizedBox(width: 10),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'legal', child: Text('خدمات قانونية')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                value: 'finance',
                                child: Text('المحاسبة'),
                              ),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                            ],
                            onChanged: (value) {},
                            hint: WidgetHinttopScorll(
                                'المحاسبة',
                                Icons.calculate,
                                HexColor('#dee2e6'),
                                HexColor('#dee2e6')),
                          ),
                        ),
                        SizedBox(width: 10),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'legal', child: Text('خدمات قانونية')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                value: 'finance',
                                child: Text('المحاسبة'),
                              ),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                            ],
                            onChanged: (value) {},
                            hint: WidgetHinttopScorll(
                                'التقارير',
                                Icons.bar_chart_sharp,
                                HexColor('#dee2e6'),
                                HexColor('#dee2e6')),
                          ),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              items: [
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'legal',
                                    child: Text('خدمات قانونية')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                  value: 'finance',
                                  child: Text('المحاسبة'),
                                ),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                                DropdownMenuItem(
                                    value: 'finance', child: Text('المحاسبة')),
                              ],
                              onChanged: (value) {},
                              hint: WidgetHinttopScorll(
                                  'الموارد البشرية',
                                  Icons.score_sharp,
                                  HexColor('#dee2e6'),
                                  HexColor('#dee2e6'))),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'legal', child: Text('خدمات قانونية')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                value: 'finance',
                                child: Text('المحاسبة'),
                              ),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                              DropdownMenuItem(
                                  value: 'finance', child: Text('المحاسبة')),
                            ],
                            onChanged: (value) {},
                            hint: WidgetHinttopScorll(
                                'المكتبه',
                                Icons.library_books,
                                HexColor('#dee2e6'),
                                HexColor('#dee2e6')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      items: [
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                        DropdownMenuItem(
                            value: 'legal', child: Text('خدمات قانونية')),
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                        DropdownMenuItem(
                          value: 'finance',
                          child: Text('المحاسبة'),
                        ),
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                        DropdownMenuItem(
                            value: 'finance', child: Text('المحاسبة')),
                      ],
                      onChanged: (value) {},
                      hint: WidgetHinttopScorll('الاعدادات', Icons.settings,
                          HexColor('#dee2e6'), HexColor('#dee2e6')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      buildSearchField(context, "بحث عن موكل", 'بحث عن موكل'),
                      MouseRegion(
                        onEnter: (_) =>
                            setState(() => buttonColor1 = Colors.orange),
                        onExit: (_) =>
                            setState(() => buttonColor1 = HexColor("#00fff7")),
                        child: searchIcon(buttonColor1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      buildSearchField(context, "بحث عن قضية", "بحث عن قضيه"),
                      MouseRegion(
                        onEnter: (_) =>
                            setState(() => buttonColor2 = Colors.orange),
                        onExit: (_) =>
                            setState(() => buttonColor2 = HexColor("#00fff7")),
                        child: searchIcon(buttonColor2),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      buildSearchField(
                          context, "بحث عن استشارة", "بحث عن استشارة"),
                      MouseRegion(
                        onEnter: (_) =>
                            setState(() => buttonColor3 = Colors.orange),
                        onExit: (_) =>
                            setState(() => buttonColor3 = HexColor("#00fff7")),
                        child: searchIcon(buttonColor3),
                      ),
                    ]),
              ),
            ),

            // Date Picker Section
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildDatePicker(context),
                      buildDatePicker(context),
                      SeparatedButtons()
                    ],
                  ),
                ],
              ),
            ),
           // gridBuilder(),
            Container(),

            // Saudi Flag Image
          ],
        ),
      ),
    );
  }
}
