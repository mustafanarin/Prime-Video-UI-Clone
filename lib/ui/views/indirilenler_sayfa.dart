import 'package:flutter/material.dart';

class IndirilenlerSayfa extends StatefulWidget {
  const IndirilenlerSayfa({super.key});

  @override
  State<IndirilenlerSayfa> createState() => _IndirilenlerSayfaState();
}

class _IndirilenlerSayfaState extends State<IndirilenlerSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("İndirilenler",style: TextStyle(color: Colors.white)),
      ),
      body: const Center(

      ),
    );
  }
}
