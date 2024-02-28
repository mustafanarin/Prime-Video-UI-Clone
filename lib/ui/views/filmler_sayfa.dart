import 'package:flutter/material.dart';

class FilmlerSayfa extends StatefulWidget {
  const FilmlerSayfa({super.key});

  @override
  State<FilmlerSayfa> createState() => _FilmlerSayfaState();
}

class _FilmlerSayfaState extends State<FilmlerSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Filmler",style: TextStyle(color: Colors.white)),
      ),
      body: const Center(

      ),
    );
  }
}
