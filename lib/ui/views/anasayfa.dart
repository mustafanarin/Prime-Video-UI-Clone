import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/ui/views/arama_sayfa.dart';
import 'package:prime_video_ui_clone/ui/views/indirilenler_sayfa.dart';
import 'package:prime_video_ui_clone/ui/views/profil_sayfa.dart';
import 'package:prime_video_ui_clone/ui/views/top_tap_bar.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: SizedBox(
            height: 35,
            child: Image.asset("images/logo/prime-video-logo.webp",fit: BoxFit.cover,),
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
                  icon: const Icon(Icons.person_pin,color: Colors.lightBlue,size: 37,),),
            )
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            TopTapBar(),
            IndirilenlerSayfa(),
            AramaSayfa()
          ],
        ),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.black,
          child: TabBar(
            controller:_tabController ,
            unselectedLabelColor: Colors.white60,
            dividerColor: Colors.black,
            indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 0.0)
            ),
            labelColor: Colors.white,
            labelStyle: const TextStyle(fontSize: 12.0),

            tabs: const [
              Tab(icon: Icon(Icons.home,size: 27,),
                iconMargin: EdgeInsets.only(top: 3),child: Text("Anasayfa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
              Tab(icon: Icon(Icons.file_download_outlined,size: 27,),
                iconMargin: EdgeInsets.only(top: 3),child: Text("İndirilenler",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
              Tab(icon: Icon(Icons.search,size: 27,),
                iconMargin: EdgeInsets.only(top: 3),child: Text("Arama",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
            ],
          ),
        ),
      ),
    );
  }
}


