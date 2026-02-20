import 'package:bank_app/domain/globals.dart';
import 'package:flutter/material.dart';

class Translations extends StatefulWidget {
  const Translations({super.key});

  @override
  State<Translations> createState() => _TranslationsState();
}

class _TranslationsState extends State<Translations> {
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
          'Translations',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color(0xff343434),
          ),
        ),
      ),
      body: SafeArea(child: Column()),
    );
  }
}
