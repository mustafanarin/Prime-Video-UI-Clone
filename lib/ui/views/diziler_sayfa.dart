import 'package:flutter/material.dart';

class DizilerSayfa extends StatefulWidget {
  const DizilerSayfa({super.key});

  @override
  State<DizilerSayfa> createState() => _DizilerSayfaState();
}

class _DizilerSayfaState extends State<DizilerSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Diziler",style: TextStyle(color: Colors.white)),
      ),
      body: const Center(

      ),
    );
  }
}
