import 'package:bank_app/domain/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void initState() {
    super.initState();
    emailController.addListener(updateWidget);
    passwordController.addListener(updateWidget);
  }

  void updateWidget() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.removeListener(updateWidget);
    passwordController.removeListener(updateWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3629B7),
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    navigatorToSignIn(context);
                    clearControllers();
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                SizedBox(width: 10),
                Text(
                  'Регистрация',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Добро пожаловать!',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: Color(0xff3629B7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Создайте новую учетную запись',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff343434),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Image.asset(
                      'assets/reg.png',
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    SizedBox(height: 30),
                    TextField(
                      cursorColor: Color(0xff3629B7),
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Имя',
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
                    SizedBox(height: 20),
                    TextField(
                      cursorColor: Color(0xff3629B7),
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Почта',
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
                    SizedBox(height: 20),
                    TextField(
                      cursorColor: Color(0xff3629B7),
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !isShow,
                      decoration: InputDecoration(
                        hintText: 'Пароль',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xffCBCBCB),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SvgPicture.asset(
                              'assets/icons/bottom-arrow.svg',
                            ),
                          ),
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
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xff3629B7),
                          side: BorderSide(color: Color(0xffBFBFBF)),
                          value: isRemember,
                          onChanged: (bool? value) {
                            setState(() {
                              isRemember = value ?? false;
                            });
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Создавая аккаунт, вы соглашаетесь с\nнашими',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff343434),
                            ),
                            children: [
                              TextSpan(
                                text: ' Условиями и Положениями',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff3629B7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        minimumSize: Size(370, 50),
                        backgroundColor: hasSignUp
                            ? Color(0xff3629B7)
                            : Color(0xffF2F1F9),
                      ),
                      onPressed: () {
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty &&
                            nameController.text.isNotEmpty && isRemember == true) {
                          navigatorToHome(context);
                          clearControllers();
                          isRemember = false;
                        } else {
                          if (mounted) {
                            setState(() {});
                          }
                        }
                      },
                      child: Text(
                        'Зарегистрироваться',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'Уже есть аккаунт? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff343434),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            navigatorToSignIn(context);
                          },
                          child: Text(
                            'Войти',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(0xff3629B7),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
