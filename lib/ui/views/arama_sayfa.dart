import 'package:flutter/material.dart';

class AramaSayfa extends StatefulWidget {
  const AramaSayfa({super.key});

  @override
  State<AramaSayfa> createState() => _AramaSayfaState();
}

class _AramaSayfaState extends State<AramaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Arama",style: TextStyle(color: Colors.white)),
      ),
      body: const Center(

      ),
    );
  }
}
