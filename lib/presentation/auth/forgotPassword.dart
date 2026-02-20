import 'package:bank_app/domain/globals.dart';
import 'package:flutter/material.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigatorPop(context);
                        clearControllers();
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Забыли пароль?',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color(0xff343434),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 1),
                        color: Colors.black.withOpacity(.1)
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Введите Ваш номер телефона',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xff979797),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      TextField(
                        cursorColor: Color(0xff3629B7),
                        controller: passwordController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '(+7) xxx xxx-xx-xx',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xffCBCBCB),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffCBCBCB)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffCBCBCB)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff3629B7)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              navigatorToForgotPassword(context);
                              clearControllers();
                            },
                            child: Text(
                              'Мы отправили код на номер телефона\nдля изменения пароля',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff343434),
                              ),
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                      SizedBox(height: 24),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          minimumSize: Size(370, 50),
                          backgroundColor: Color(0xff3629B7),
                        ),
                        onPressed: () {
                      navigatorToCreatePassword(context);
                          clearControllers();
                        },
                        child: Text(
                          'Отправить',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
