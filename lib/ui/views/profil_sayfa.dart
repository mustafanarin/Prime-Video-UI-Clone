import 'package:flutter/material.dart';

class ProfilSayfa extends StatefulWidget {
  const ProfilSayfa({super.key});

  @override
  State<ProfilSayfa> createState() => _ProfilSayfaState();
}

class _ProfilSayfaState extends State<ProfilSayfa> {
  @override
  Widget build(BuildContext context) {

    var ekran = MediaQuery.of(context);
    var genislik = ekran.size.width;
    var yukseklik = ekran.size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(Icons.person_pin,color: Colors.lightBlue,size: 40,),
        ),
        backgroundColor: Colors.black,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mustafa Narin",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Profilleri değiştir",style: TextStyle(color: Colors.white54,fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tv,color: Colors.white54,size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 9.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilSayfa()));
              },
              icon: const Icon(Icons.settings_outlined,color: Colors.white54,size: 30,),),
          )
        ],
      ),
      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text("İzleme Listesi",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
            ),
            const Divider(color: Colors.white38,),
            SizedBox(
              width: genislik/1.4,
              height: yukseklik/1.3,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Şimdi göz atın, daha sonra izleyin",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                  Text("Kütüphaneniz tüm cihazlarınızla paylaşılır.",style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
