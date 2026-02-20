import 'package:bank_app/presentation/auth/createPassword.dart';
import 'package:bank_app/presentation/auth/forgotPassword.dart';
import 'package:bank_app/presentation/auth/signIn.dart';
import 'package:bank_app/presentation/auth/signUp.dart';
import 'package:bank_app/presentation/cards/aboutCard.dart';
import 'package:bank_app/presentation/home.dart';
import 'package:bank_app/presentation/sections/beneficiary.dart';
import 'package:bank_app/presentation/sections/cards.dart';
import 'package:bank_app/presentation/sections/cash.dart';
import 'package:bank_app/presentation/sections/communication.dart';
import 'package:bank_app/presentation/sections/credit.dart';
import 'package:bank_app/presentation/sections/savings.dart';
import 'package:bank_app/presentation/sections/score.dart';
import 'package:bank_app/presentation/sections/transaction.dart';
import 'package:bank_app/presentation/sections/translations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController passwordConfirmController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController numberPhoneController = TextEditingController();
TextEditingController bankController = TextEditingController();
TextEditingController cityController = TextEditingController();
TextEditingController nameScoreController = TextEditingController();
TextEditingController cardNumberController = TextEditingController();
PageController pageController = PageController();
PageController categoryPageController = PageController();

void disposeCategoryPageController() {
  categoryPageController.dispose();
}

void disposePageController() {
  pageController.dispose();
}


bool isRemember = false;
bool isShow = false;
int selectedIndex = 0;

void animateToPage(index) {
  pageController.animateToPage(
    index,
    duration: Duration(milliseconds: 700),
    curve: Curves.easeOut,
  );
}

void animateToCategory(index) {
  categoryPageController.animateToPage(
    index,
    duration: Duration(milliseconds: 700),
    curve: Curves.easeOut,
  );
}

get hasSigIn =>
    emailController.text.isNotEmpty && passwordController.text.isNotEmpty;

get hasSignUp =>
    emailController.text.isNotEmpty &&
    passwordController.text.isNotEmpty &&
    nameController.text.isNotEmpty &&
    isRemember == true;

List<String> scoreList = ['Счет 1', 'Счет 2', 'Счет 3'];
List<String> scoreNumberList = [
  '1900 8988 1234',
  '8988 1234',
  '1900 1234 2222',
];
List<String> balanceList = ['20,000', '12,000', '230,000'];
List<String> cityList = ['Сургут', 'Сургут', 'Сургут'];
List<String> sectionCardsList = ['Аккаунт', 'Карты'];
List<String> categoryList = ['Электричество', 'Вода', 'Связь', 'Интернет'];

List<String> monthList = ['Октябрь', 'Сентябрь', 'Август', 'Июль', 'Июнь'];
List<String> dataList = [
  '30/10/2026',
  '03/09/2025',
  '23/08/2025',
  '28/07/2025',
  '15/06/2025',
];
List<String> statusList = [
  'Отклонено',
  'Успешно',
  'Успешно',
  'Успешно',
  'Успешно',
];
List<String> companyList = [
  'Capi Telecom',
  'Capi Telecom',
  'Capi Telecom',
  'Capi Telecom',
  'Capi Telecom',
];
List<String> countList = ['52', '100', '40', '29', '11'];

List<String> iconsListHome = [
  'assets/icons/wallet.svg',
  'assets/icons/sync-devices.svg',
  'assets/icons/card.svg',
  'assets/icons/mobile-banking.svg',
  'assets/icons/receipt-list.svg',
  'assets/icons/pig.svg',
  'assets/icons/credit-card.svg',
  'assets/icons/file.svg',
  'assets/icons/contacts.svg',
];

List<String> titleListHome = [
  'Карты',
  'Переводы',
  'Наличные',
  'Оплата связи',
  'Оплата счета',
  'Сбережения',
  'Кредит',
  'Транзакции',
  'Бенефициар',
];

List<VoidCallback> actionsHome(BuildContext context) {
  return [
    () => Navigator.push(context, MaterialPageRoute(builder: (_) => Cards())),
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Translations()),
    ),
    () => Navigator.push(context, MaterialPageRoute(builder: (_) => Cash())),
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Communication()),
    ),
    () => Navigator.push(context, MaterialPageRoute(builder: (_) => Score())),
    () => Navigator.push(context, MaterialPageRoute(builder: (_) => Savings())),
    () => Navigator.push(context, MaterialPageRoute(builder: (_) => Credit())),
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Transaction()),
    ),
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => Beneficiary()),
    ),
  ];
}

void clearControllers() {
  emailController.clear();
  passwordController.clear();
  nameController.clear();
}

void navigatorToInfoCard(context) {
  Navigator.of(
    context,
  ).push(MaterialPageRoute(builder: (context) => AboutCard()));
}

void navigatorToSignIn(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()));
}

void navigatorToSignUp(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
}

void navigatorToHome(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
}

void navigatorToForgotPassword(context) {
  Navigator.of(
    context,
  ).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
}

void navigatorToCreatePassword(context) {
  Navigator.of(
    context,
  ).push(MaterialPageRoute(builder: (context) => CreatePassword()));
}

void navigatorPop(context) {
  Navigator.of(context).pop();
}
