import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/data/entity/filmler.dart';

class DetaySayfasi extends StatefulWidget {
  Filmler film;
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

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.check_circle,color: Colors.blue,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        "30 günlük ücretsiz Prime deneme sürümüyle izleyin,"
                            " ₺39,00/ay karşılığında otomatik yenilenir",
                        style: TextStyle(color: Colors.white,fontSize: 20,),overflow: TextOverflow.fade,maxLines: 1,softWrap: false,),
                    )
                  ],
                ),
              )

            ],
          ),

        ],
      ),
    );
  }
}
