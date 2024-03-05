import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

import '../../data/entity/filmler.dart';
import 'detay_sayfasi.dart';

class FilmlerSayfa extends StatefulWidget {
  const FilmlerSayfa({super.key});

  @override
  State<FilmlerSayfa> createState() => _FilmlerSayfaState();
}

class _FilmlerSayfaState extends State<FilmlerSayfa> {

  Future<List<Filmler>> bilimKurguFilmler() async{
    List<Filmler> filmler = [];

    var f1 = Filmler(film_adi: "Gökdelen", film_resim_adi: "gokdelen.png");
    var f2 = Filmler(film_adi: "Lucy", film_resim_adi: "lucy.png");
    var f3 = Filmler(film_adi: "Mumya", film_resim_adi: "mumya.png");
    var f4 = Filmler(film_adi: "Yarının Savaşı", film_resim_adi: "yarininsavasi.png");
    var f5 = Filmler(film_adi: "Renfield", film_resim_adi: "renfield.png");

    filmler.add(f1);
    filmler.add(f2);
    filmler.add(f3);
    filmler.add(f4);
    filmler.add(f5);

    return filmler;
  }Future<List<Filmler>> gerilimFilmler() async{
    List<Filmler> filmler = [];

    var f1 = Filmler(film_adi: "Kulübeye Tıklat", film_resim_adi: "kulubeyetiklat.png");
    var f2 = Filmler(film_adi: "Dayı", film_resim_adi: "dayi.png");
    var f3 = Filmler(film_adi: "Bihter", film_resim_adi: "bihter.png");


    filmler.add(f1);
    filmler.add(f2);
    filmler.add(f3);

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
              height: 240,
              width: genislik,
              child: AnotherCarousel(
                images: [
                  Image.asset("images/filmler/dayi.png",fit: BoxFit.cover,),
                  Image.asset("images/filmler/cadi.png",fit: BoxFit.cover,),
                  Image.asset("images/filmler/gokdelen.png",fit: BoxFit.cover,),
                  Image.asset("images/filmler/lucy.png",fit: BoxFit.cover,),
                  Image.asset("images/filmler/cizmelikedi.png",fit: BoxFit.cover,)
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
                    text: const TextSpan(
                      text: 'Prime',
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 19),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' - Bilimkurgu filmleri',
                          style: TextStyle(color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            FutureBuilder<List<Filmler>>(
                future: bilimKurguFilmler(),
                builder: (context,snapshot) {
                  if(snapshot.hasData){
                    var filmler = snapshot.data;

                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
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
                    return const Center();
                  }
                }),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0,top: 20,left: 8,right: 8),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Prime',
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 19),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' - Gerilim filmleri',
                          style: TextStyle(color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            FutureBuilder<List<Filmler>>(
                future: gerilimFilmler(),
                builder: (context,snapshot) {
                  if(snapshot.hasData){
                    var filmler = snapshot.data;

                    return SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
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
                    return const Center();
                  }
                }),

          ],
        ),
      ),
    );
  }
}
