import 'package:bank_app/domain/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3629B7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(24),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    titleListSettings[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff343434),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(
                                     size: 16,
                                      Icons.arrow_forward_ios,
                                      color: Color(0xffE0E0E0),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Divider(color: Color(0xffECECEC)),
                            ],
                          );
                        },
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: titleListSettings.length,
                      ),
                     SizedBox(height: 240,)
                    ],
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Image.asset('assets/avatar.png', width: 110, height: 110),
                      SizedBox(height: 20),
                      Text(
                        'Джон Смит',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xff3629B7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              rippleColor: Color(0xff3629B7),
              hoverColor: Color(0xff3629B7),
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color(0xff3629B7),
              color: Color(0xff898989),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Главная',
                  onPressed: () {
                    navigatorToHome(context);
                  },
                ),
                GButton(
                  icon: Icons.search_rounded,
                  text: 'Поиск',
                  onPressed: () {
                    navigatorToSearch(context);
                  },
                ),
                GButton(
                  icon: Icons.message,
                  text: 'Сообщения',
                  onPressed: () {
                    navigatorToChats(context);
                  },
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Настройки',
                  onPressed: () {
                    navigatorToSettings(context);
                  },
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
