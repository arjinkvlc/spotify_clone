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
      extendBody: true,
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
            child: ListView(
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
                const Padding(
                  padding: EdgeInsets.only(right: 110, top: 20),
                  child: Text("Yeni çıkanlar,senin için",
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
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh323-vOc7dQyPtWUmg5SYmK3LuUhOJ86UH9Xz7ePwmv1PX-Ge9TcvMpBsEK1wwOqtsFQdyV4nA2PTmQ8ZoXerG1f24QfH55RYqcneKEv4MlRI1dGtIbR7MzbLmVBlRv2tRUpnqVsbwnvj7xMwtO_6A9qNDB2tp_37RUxNe9WLr939b1fTgBjbfI9Cb/s640/yeni_muzik_radari-haziran-2022.jpg',
                              height: 130,
                              width: 130,
                            ),),
                            Text("Takip ettiğin sanatçıların en son müziklerinin hepsi...",style: TextStyle(
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
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://i.scdn.co/image/ab67616d0000b273dc5c2b466114a99eb4bdf13e',
                              height: 130,
                              width: 130,
                            ),),
                            Text("Single·Motive",style: TextStyle(
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
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://i.scdn.co/image/ab67616d0000b27319dcc68c1778a0199eeef51e',
                              height: 130,
                              width: 130,
                            ),),
                            Text("Single·Allame,Aspova",style: TextStyle(
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
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: Image.network('https://i.scdn.co/image/ab67616d0000b2731a8c2bafc15be30ee745eb8d',
                              height: 130,
                              width: 130,
                            ),),
                            Text("Single·Defkhan,Sagopa Kajmer",style: TextStyle(
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
                const Padding(
                  padding: EdgeInsets.only(right: 110, top: 20),
                  child: Text("Popüler Sanatçılar",
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
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: ClipRRect(borderRadius: BorderRadius.circular(130.0),
                              child:Image.network('https://i.scdn.co/image/ab67706c0000bebb6aba6232e1bbeb763d19cba7',
                                height: 130,
                                width: 130,

                              ),)),
                            Text("Motive",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
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
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: ClipRRect(borderRadius: BorderRadius.circular(150.0),
                              child:Image.network('https://i.scdn.co/image/ab6761610000e5ebc7bb8481d97599dbab344a65',
                                height: 130,
                                width: 130,

                              ),),),
                            Text("Hidra",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),Container(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: ClipRRect(borderRadius: BorderRadius.circular(150.0),
                              child:Image.network('https://i.scdn.co/image/ab6761610000e5eb7156c4ba478e41acdec935a5',
                                height: 130,
                                width: 130,

                              ),),),
                            Text("Allame",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),Container(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(onPressed: (){},label:Text("") ,icon: ClipRRect(borderRadius: BorderRadius.circular(150.0),
                              child:Image.network('https://i.scdn.co/image/ab6761610000e5eb966d3501bcd640ce98937f56',
                                height: 130,
                                width: 130,

                              ),),),
                            Text("Ceg",style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
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
          unselectedItemColor: Colors.white30.withOpacity(0.4),
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black12.withOpacity(0.6),
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
