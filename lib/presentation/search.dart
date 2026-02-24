import 'package:bank_app/domain/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 24),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: titleListSearch.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 110,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(0, 1),
                              color: Colors.black.withOpacity(.1),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  titleListSearch[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff343434),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  textListSearch[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff979797),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              imagesListSearch[index],
                              width: 100,
                              height: 78,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
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
