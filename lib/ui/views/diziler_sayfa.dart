import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/ui/views/detay_sayfasi_dizi.dart';

import '../../data/entity/diziler.dart';

class DizilerSayfa extends StatefulWidget {
  const DizilerSayfa({super.key});

  @override
  State<DizilerSayfa> createState() => _DizilerSayfaState();
}

class _DizilerSayfaState extends State<DizilerSayfa> {

  Future<List<Diziler>> bilimkurguDiziler() async {
    List<Diziler> diziler = [];

    var d1 = Diziler(dizi_ad: "The Boys", dizi_resim_adi: "theboys.png");
    var d2 = Diziler(dizi_ad: "Gen V", dizi_resim_adi: "genv.png");
    var d3 = Diziler(dizi_ad: "Jack Ryan", dizi_resim_adi: "jackryan.png");


    diziler.add(d1);
    diziler.add(d2);
    diziler.add(d3);

    return diziler;
  }

  Future<List<Diziler>> gerilimDiziler() async {
    List<Diziler> diziler = [];

    var d1 = Diziler(dizi_ad: "SOZ", dizi_resim_adi: "soz.png");
    var d2 = Diziler(dizi_ad: "Death's Game", dizi_resim_adi: "deahtsgame.png");
    var d3 = Diziler(dizi_ad: "Çernobil", dizi_resim_adi: "cernobil.png");
    var d4 = Diziler(dizi_ad: "Sherlock", dizi_resim_adi: "sherlock.png");

    diziler.add(d1);
    diziler.add(d2);
    diziler.add(d3);
    diziler.add(d4);

    return diziler;
  }

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    var genislik = ekran.size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 240,
              width: genislik,
              child: AnotherCarousel(
                images: [
                  Image.asset("images/diziler/euphoria.png", fit: BoxFit.cover,),
                  Image.asset("images/diziler/genv.png", fit: BoxFit.cover,),
                  Image.asset("images/diziler/sherlock.png", fit: BoxFit.cover,),
                  Image.asset("images/diziler/theboys.png", fit: BoxFit.cover,),
                  Image.asset("images/diziler/infazlistesi.png", fit: BoxFit.cover,)
                ],
                dotSize: 8,
                dotColor: Colors.white24,
                indicatorBgPadding: 0,
                dotBgColor: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 8.0, top: 20, left: 8, right: 8),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Prime',
                      style: TextStyle(color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 19), // Cümlenin varsayılan rengi
                      children: <TextSpan>[
                        TextSpan(
                          text: ' - Bilimkurgu dizileri',
                          style: TextStyle(color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            FutureBuilder<List<Diziler>>(
                future: bilimkurguDiziler(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var diziler = snapshot.data;

                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: diziler!.length,
                        itemBuilder: (context, index) {
                          var dizi = diziler[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfasiDizi(dizi: dizi,)));
                            },
                            child: Card(
                              child: SizedBox(

                                width: 155,
                                child: Center(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Image.asset("images/diziler/${dizi
                                            .dizi_resim_adi}")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return const Center();
                  }
                }),

            Padding(
              padding: const EdgeInsets.only(
                  bottom: 8.0, top: 20, left: 8, right: 8),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Prime',
                      style: TextStyle(color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 19), // Cümlenin varsayılan rengi
                      children: <TextSpan>[
                        TextSpan(
                          text: ' - Gerilim dizileri',
                          style: TextStyle(color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            FutureBuilder<List<Diziler>>(
                future: gerilimDiziler(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var diziler = snapshot.data;

                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: diziler!.length,
                        itemBuilder: (context, index) {
                          var dizi = diziler[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>
                                      DetaySayfasiDizi(dizi: dizi,)));
                            },
                            child: Card(
                              child: SizedBox(

                                width: 155,
                                child: Center(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Image.asset("images/diziler/${dizi
                                            .dizi_resim_adi}")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return const Center();
                  }
                }),

          ],
        ),
      ),
    );
  }
}
