import 'package:bank_app/domain/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
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
                Text(
                  'Вход',
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
                          'С возвращением!',
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
                          'Войдите в систему, чтобы продолжить',
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
                      'assets/signin.png',
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    SizedBox(height: 30),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color(0xff3629B7),
                      controller: emailController,
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
                      obscureText: !isShow,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SvgPicture.asset(
                              isShow
                                  ? 'assets/icons/eye-on.svg'
                                  : 'assets/icons/eye-off.svg',
                            ),
                          ),
                        ),
                        hintText: '************',
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
                    SizedBox(height: 13),
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            navigatorToForgotPassword(context);
                            clearControllers();
                            isShow = false;
                          },
                          child: Text(
                            'Забыли пароль?',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xffCACACA),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        minimumSize: Size(370, 50),
                        backgroundColor: hasSigIn
                            ? Color(0xff3629B7)
                            : Color(0xffF2F1F9),
                      ),
                      onPressed: () {
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          navigatorToHome(context);
                          clearControllers();
                          isShow = false;
                        } else {
                          if (mounted) {
                            setState(() {});
                          }
                        }
                      },
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Image.asset(
                      'assets/fingerprint.png',
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'Еще нет аккаунта? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff343434),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            navigatorToSignUp(context);
                            clearControllers();
                          },
                          child: Text(
                            'Зарегистрироваться',
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
