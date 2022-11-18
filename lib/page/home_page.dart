import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("İyi günler"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.update),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
        bottom: PreferredSize(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Müzik"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white30),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )))),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Podcast'ler ve Programlar"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white30),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )))),
              ),
            ],
          ),
          preferredSize: Size(400, 50),
        ),
      ),
      body: Container(
          height: 695,
          width: 500,
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          'https://pbs.twimg.com/media/EvtwC5fWYAEjamW.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: Text(
                            "NKVT",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          'https://dailymix-images.scdn.co/v2/img/ab6761610000e5eba00b11c129b27a88fc72f36b/3/en/large',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: Text(
                            "Daily Mix",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          'https://newjams-images.scdn.co/image/ab6764780000c480/dt/v3/release-radar/ab6761610000e5ebed9ed4f6ed4b2fe64a67efa7/en',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: Text(
                            "Release Radar",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          'https://i.scdn.co/image/ab67706f00000003d971c6c23114fc7636dc23eb',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: Text(
                            "Viral Hits",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          'https://i.scdn.co/image/ab67706c0000bebbdcb3302d19235448f0cbfbfb',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: Text(
                            "Top Hits",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.network(
                          'https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_large.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: Text(
                            "Top 50 Global",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 110, top: 20),
                  child: Text("En çok dinlediğin mix'ler",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://seed-mix-image.spotifycdn.com/v6/img/pop/6KImCVD70vtIoJWnq6nGn3/en/large',
                              height: 130,
                              width: 130,
                            ),),
                            Text("Murat Boz,Derya Uluğ ve daha fazlası",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white30,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://seed-mix-image.spotifycdn.com/v6/img/artist/7dGJo4pcD2V6oG8kP0tJRR/en/large',
                              height: 130,
                              width: 130,
                            ),),
                            Text("DMX,Bad Meets Evil,D12 ve daha fazlası",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white30,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),Container(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://i.scdn.co/image/ab67616d0000b27363dcefae395de2e18cf2b932',
                              height: 130,
                              width: 130,
                            ),),
                            Text("Metallica,Nirvana ve daha fazlası",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white30,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),Container(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://seed-mix-image.spotifycdn.com/v6/img/hip_hop/2Dor6diK1zw9BEluKBOdoA/en/large',
                              height: 130,
                              width: 130,
                            ),),
                            Text("Joker,Tepki,Ceza ve daha fazlası",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white30,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          )


          ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white30,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black87.withOpacity(0.8),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Anasayfa",
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Arama",
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks_sharp),
                label: "Kitaplığın",
                activeIcon: Icon(Icons.home))
          ]),
    );
  }
}
