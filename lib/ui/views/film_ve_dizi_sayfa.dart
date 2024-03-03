import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/ui/views/detay_sayfasi.dart';
import 'package:prime_video_ui_clone/ui/views/detay_sayfasi_dizi.dart';

import '../../data/entity/diziler.dart';
import '../../data/entity/filmler.dart';

class FilmveDiziSayfa extends StatefulWidget {
  const FilmveDiziSayfa({super.key});

  @override
  State<FilmveDiziSayfa> createState() => _FilmveDiziSayfaState();
}

class _FilmveDiziSayfaState extends State<FilmveDiziSayfa> {

  Future<List<Filmler>> karisikFilmler() async{
    List<Filmler> filmler = [];

    var f1 = Filmler(film_id: 1, film_adi: "Bihter", film_resim_adi: "bihter.png");
    var f2 = Filmler(film_id: 2, film_adi: "Çizmeli Kedi", film_resim_adi: "cizmelikedi.png");
    var f3 = Filmler(film_id: 3, film_adi: "Cadı", film_resim_adi: "cadi.png");
    var f4 = Filmler(film_id: 4, film_adi: "Yarının Savaşı", film_resim_adi: "yarininsavasi.png");
    var f5 = Filmler(film_id: 5, film_adi: "Dayı", film_resim_adi: "dayi.png");

    filmler.add(f1);
    filmler.add(f2);
    filmler.add(f3);
    filmler.add(f4);
    filmler.add(f5);

    return filmler;
  }

  Future<List<Diziler>> karisikDiziler() async{
    List<Diziler> diziler = [];

    var d1 = Diziler(dizi_id: 1, dizi_ad: "Reacher", dizi_resim_adi: "reacher.png");
    var d2 = Diziler(dizi_id: 2, dizi_ad: "SOZ", dizi_resim_adi: "soz.png");
    var d3 = Diziler(dizi_id: 3, dizi_ad: "The Boys", dizi_resim_adi: "theboys.png");
    var d4 = Diziler(dizi_id: 4, dizi_ad: "Sherlock", dizi_resim_adi: "sherlock.png");
    var d5 = Diziler(dizi_id: 5, dizi_ad: "Euphoria", dizi_resim_adi: "euphoria.png");

    diziler.add(d1);
    diziler.add(d2);
    diziler.add(d3);
    diziler.add(d4);
    diziler.add(d5);

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
              height: 250,
              width: genislik,
              child: AnotherCarousel(
                images: [
                  Image.asset("images/filmler/yarininsavasi.png",fit: BoxFit.cover,),
                  Image.asset("images/filmler/lucy.png",fit: BoxFit.cover,),
                  Image.asset("images/diziler/sherlock.png",fit: BoxFit.cover,),
                  Image.asset("images/filmler/kulubeyetiklat.png",fit: BoxFit.cover,),
                  Image.asset("images/diziler/reacher.png",fit: BoxFit.cover,)
                ],
                dotSize: 8,
                dotColor: Colors.white24,
                indicatorBgPadding: 0,
                dotBgColor: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0,top: 20,left: 8,right: 8),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Prime',
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 19), // Cümlenin varsayılan rengi
                      children: <TextSpan>[
                        TextSpan(
                          text: ' - Önerilen filmler',
                          style: TextStyle(color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            FutureBuilder<List<Filmler>>(
                future: karisikFilmler(),
                builder: (context,snapshot) {
                  if(snapshot.hasData){
                    var filmler = snapshot.data;

                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                       //  shrinkWrap: true,
                         itemCount: filmler!.length,
                         itemBuilder: (context,index) {
                           var film = filmler[index];
                           return GestureDetector(
                             onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfasi(film: film,)));
                             },
                             child: Card(
                               child: SizedBox(

                                 width: 155,
                                 child: Center(
                                   child: SingleChildScrollView(
                                     scrollDirection: Axis.horizontal,
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Image.asset("images/filmler/${film.film_resim_adi}")
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


                  }else{
                    return Center();
                  }
                }),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0,top: 20,left: 8,right: 8),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Prime',
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 19), // Cümlenin varsayılan rengi
                      children: <TextSpan>[
                        TextSpan(
                          text: ' - Önerilen diziler',
                          style: TextStyle(color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FutureBuilder<List<Diziler>>(
                future: karisikDiziler(),
                builder: (context,snapshot) {
                  if(snapshot.hasData){
                    var diziler = snapshot.data;

                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: diziler!.length,
                        itemBuilder: (context,index) {
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
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("images/diziler/${dizi.dizi_resim_adi}")
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

                  }else{
                    return Center();
                  }
                })

          ],
        ),
      ),
    );
  }
}
