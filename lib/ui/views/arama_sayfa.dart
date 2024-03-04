import 'package:flutter/material.dart';

class AramaSayfa extends StatefulWidget {
  const AramaSayfa({super.key});

  @override
  State<AramaSayfa> createState() => _AramaSayfaState();
}

class _AramaSayfaState extends State<AramaSayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20.0),
          child: Column(

            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Aktöre,başlığa... göre arama",
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Icon(Icons.search_rounded,color: Colors.black,size: 28,),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.mic_none,color: Colors.black,size: 28,)
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
                child: Row(
                  children: [
                    Text("Türler",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Aksiyon ve macera",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                          ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                        child: const Text("Komedi",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5),                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Belgesel",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Dram",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Fantastik",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Korku",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Çocuk",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Gizem ve gerilimler",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Romantik",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Bilim kurgu",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Text("Seçme koleksiyonlar",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const Divider(color: Colors.white38,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Avrupa'da üretilmiştir",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
