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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Henüz video indirilmedi",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Otomatik İndirmeler:Açık  • ',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Yönet',
                              style: TextStyle(color: Colors.blue,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
