import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/ui/views/detay_sayfasi.dart';

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
/*
    var d1 = Diziler(dizi_id: 5, dizi_ad: "Reacher", film_resim_adi: "reacher.png");
    var d2 = Diziler(dizi_id: 6, dizi_ad: "SOZ", film_resim_adi: "soz.png");
    var d3 = Diziler(dizi_id: 7, dizi_ad: "The Boys", film_resim_adi: "theboys.png");
    var d4 = Diziler(dizi_id: 8, dizi_ad: "Sherlock", film_resim_adi: "sherlock.png");
*/

    filmler.add(f1);
    filmler.add(f2);
    filmler.add(f3);
    filmler.add(f4);
    filmler.add(f5);

    return filmler;
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
                          style: TextStyle(color: Colors.white,), // 'belirli' kelimesinin rengi
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

                                 width: 160,
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
                })

          ],
        ),
      ),
    );
  }
}
