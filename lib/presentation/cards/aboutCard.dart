import 'package:flutter/material.dart';

class AboutCard extends StatefulWidget {
  const AboutCard({super.key});

  @override
  State<AboutCard> createState() => _AboutCardState();
}

class _AboutCardState extends State<AboutCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Карта',
          style: TextStyle(
            color: Color(0xff343434),
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    'Владелец',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff898989),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Джон Смит',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff3629B7),
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xffECECEC)),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Номер карты',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff898989),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '**** **** 9018',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff3629B7),
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xffECECEC)),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Действительна с',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff898989),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '10/15',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff3629B7),
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xffECECEC)),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Действительна до',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff898989),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '10/20',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff3629B7),
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xffECECEC)),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Доступный баланс',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff898989),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '₽10,000',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff3629B7),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Row(children: [
                  Spacer(),
                  Text('Удалить', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xffFF4267),
                  ) ),
                  Spacer()
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
