import 'package:bank_app/domain/globals.dart';
import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
    pageController = PageController();
  }

  @override
  void dispose() {
    selectedIndex = 0;
    disposePageController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Color(0xff343434)),
          onPressed: () {
            navigatorPop(context);
          },
        ),
        leadingWidth: 50,
        title: Text(
          'Аккаунт и карты',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color(0xff343434),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            SizedBox(
              height: 44,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sectionCardsList.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        minimumSize: Size(155, 44),
                        backgroundColor: isSelected
                            ? Color(0xff3629B7)
                            : Color(0xffF2F1F9),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        animateToPage(index);
                      },
                      child: Text(
                        sectionCardsList[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: isSelected ? Colors.white : Color(0xff343434),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: PageView(
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Image.asset('assets/avatar.png', width: 100),
                          ),
                          Text(
                            'Джон Смит',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff3629B7),
                            ),
                          ),
                          SizedBox(height: 22),
                          ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: scoreList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  width: 327,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 0,
                                        blurRadius: 5,
                                        offset: Offset(0, 1),
                                        color: Colors.black.withOpacity(.1),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            scoreList[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color(0xff343434),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            scoreNumberList[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color(0xff343434),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Text(
                                            'Доступный баланс',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff979797),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '₽' + balanceList[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Color(0xff3629B7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Text(
                                            'Отделение',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff979797),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            cityList[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Color(0xff3629B7),
                                            ),
                                          ),
                                        ],
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
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              navigatorToInfoCard(context);
                            },
                            child: Image.asset('assets/card1.png'),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              navigatorToInfoCard(context);
                            },
                            child: Image.asset('assets/card2.png'),
                          ),
                          SizedBox(height: 64),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              minimumSize: Size(350, 50),
                              backgroundColor: Color(0xff3629B7),
                            ),
                            onPressed: () {
                              navigatorToHome(context);
                              selectedIndex = 0;
                            },
                            child: Text(
                              'Добавить карту',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
