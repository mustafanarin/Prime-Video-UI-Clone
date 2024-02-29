import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/ui/views/diziler_sayfa.dart';
import 'package:prime_video_ui_clone/ui/views/film_ve_dizi_sayfa.dart';
import 'package:prime_video_ui_clone/ui/views/filmler_sayfa.dart';

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          height: 35,
          child: Image.asset("images/logo/prime-video-logo.webp",fit: BoxFit.cover,),
        )
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 55,
                color: Colors.black,
                child: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.all(10),
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                  dividerColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),

                  tabs: [
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0,left: 8.0),
                            child: Text("Tümü"),
                          )
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(right: 8.0,left: 8.0),
                              child: Text("Filmler"),
                            )
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(right: 8.0,left: 8.0),
                              child: Text("TV dizileri"),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  FilmveDiziSayfa(),
                  FilmlerSayfa(),
                  DizilerSayfa()
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_outlined),
              label: "İndirilenler"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Arama"
          ),
        ],
      ),
    );
  }
}