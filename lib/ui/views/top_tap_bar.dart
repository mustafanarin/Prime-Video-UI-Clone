
import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/ui/views/diziler_sayfa.dart';
import 'package:prime_video_ui_clone/ui/views/film_ve_dizi_sayfa.dart';
import 'package:prime_video_ui_clone/ui/views/filmler_sayfa.dart';

class TopTapBar extends StatefulWidget {
  const TopTapBar({super.key});

  @override
  State<TopTapBar> createState() => _TopTapBarState();
}

class _TopTapBarState extends State<TopTapBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Column(
          children: [
            Material(
              child: Container(
                height: 56,
                color: Colors.black,
                child: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                  dividerColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  tabs: [
                    Tab(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0,right: 8),
                              child: Text("Tümü",),
                            ),
                          ),
                        )
                    ),
                    Tab(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0,right: 8),
                              child: Text("Filmler"),
                            ),
                          ),
                        )
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0,right: 8),
                            child: Text("TV dizileri"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          FilmveDiziSayfa(),
          FilmlerSayfa(),
          DizilerSayfa()
        ],
      ),
    );
  }
}
