import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/data/entity/filmler.dart';

class DetaySayfasi extends StatefulWidget {
  final Filmler film;
  DetaySayfasi({required this.film});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {


  @override
  Widget build(BuildContext context) {

    var ekran = MediaQuery.of(context);
    var genislik = ekran.size.width;
    var yukseklik = ekran.size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.tv,color: Colors.white54,size: 30,),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.person_pin,color: Colors.lightBlue,size: 35,),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: genislik,
                height: yukseklik/3,
                child: Image.asset(
                  "images/filmler/${widget.film.film_resim_adi}",fit: BoxFit.cover,),
              ),

              Positioned.fill(
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.transparent, Colors.black],
                      stops: [0, 0.3],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.dstOut, // Karartma efekti
                  child: Container(
                    color: Colors.black, // İlave bir renk filtresi
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text("${widget.film.film_adi}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
          ),

          Padding(
             padding: EdgeInsets.only(right: 10.0,left: 10.0),
             child: Column(
               children: [
                 Row(
                   children: [
                     Icon(Icons.check_circle,color: Colors.blue,size: 16,),
                     Center(
                       child: Padding(
                         padding: EdgeInsets.all(8.0),
                         child: SizedBox(
                           width: 340,
                           child: Text(
                               "30 günlük ücretsiz Prime deneme sürümüyle izleyin,"
                                   " ₺39,00/ay karşılığında otomatik yenilenir",
                               style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                         ),
                       ),
                     ),
                   ],
                 ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                      onPressed: (){
                        print("İzleme listesine tıkla");
                      },
                      child: Text("Bunu nasıl izlerim?",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white24,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                        )
                      ),),
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     SizedBox(
                       height: 120,
                       width: 60,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(CupertinoIcons.plus,color: Colors.white,size: 30,),
                           Text("İzleme Listesi",style: TextStyle(color: Colors.white,fontSize: 17),)
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 60,
                       height: 120,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(CupertinoIcons.hand_thumbsup,color: Colors.white,size: 30,),
                           Text("Beğen",style: TextStyle(color: Colors.white,fontSize: 17),)
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 75,
                       height: 120,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(CupertinoIcons.hand_thumbsdown,color: Colors.white,size: 30,),
                           Text("Beğenme",style: TextStyle(color: Colors.white,fontSize: 17),)
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 60,
                       height: 120,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(Icons.share_outlined,color: Colors.white,size: 30,),
                           Text("İzleme Listesi",style: TextStyle(color: Colors.white,fontSize: 17),)
                         ],
                       ),
                     )
                   ],
                 ),
                 TextButton(
                     onPressed: () {

                     },
                     child: Text(
                       "Açıklama",
                       style: TextStyle(color: Colors.white,fontSize: 20,decoration: TextDecoration.underline,decorationColor: Colors.white),) ),

                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("IMBD 7,2",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 18),)
                   ],
                 ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("2023",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 18),)
                   ],
                 ),
                 Row(
                   children: [
                     RichText(
                       text: TextSpan(
                         text: 'Diller',
                         style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 19), // Cümlenin varsayılan rengi
                         children: <TextSpan>[
                           TextSpan(
                             text: ' Ses (16),Alt Yazılar (28)',
                             style: TextStyle(color: Colors.white54,), // 'belirli' kelimesinin rengi
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),

               ],
             ),
           ),


        ],
      ),
    );
  }
}
