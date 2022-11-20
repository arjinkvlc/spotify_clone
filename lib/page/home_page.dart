import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("İyi günler"),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.update),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ))
        ],
        bottom: PreferredSize(
          preferredSize: const Size(400, 50),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            Colors.white30),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Müzik")),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            Colors.white30),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Podcast'ler ve Programlar")),
              ),
            ],
          ),
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
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) => Colors.black.withOpacity(0.3)),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/nkvt.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: const Text(
                            "NKVT",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    TextButton.icon(
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black.withOpacity(0.3)),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/large.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: const Text(
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
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black.withOpacity(0.3)),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/release.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: const Text(
                            "Release Radar",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    TextButton.icon(
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black.withOpacity(0.3)),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/viral.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: const Text(
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
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black.withOpacity(0.3)),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/top-hits.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: const Text(
                            "Top Hits",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    TextButton.icon(
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black.withOpacity(0.3)),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/region_global_large.jpg',
                          height: 50,
                          width: 50,
                        ),
                        label: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          color: Colors.white12,
                          child: const Text(
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
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/pop-mix.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "Murat Boz,Derya Uluğ ve daha fazlası",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/eminem-mix.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "DMX,Bad Meets Evil,D12 ve daha fazlası",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/rock-mix.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "Metallica,Nirvana ve daha fazlası",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/hiphop-mix.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "Joker,Tepki,Ceza ve daha fazlası",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
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
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/radar.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "Takip ettiğin sanatçıların en son müziklerinin hepsi...",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/10mg.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "Single·Motive",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/fil-inadi.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "Single·Allame,Aspova",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: Image.asset(
                                'assets/images/sago.jpg',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            const Text(
                              "Single·Defkhan,Sagopa Kajmer",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
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
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateColor.resolveWith(
                                          (states) => Colors.grey.withOpacity(0.2)),
                                ),
                                onPressed: () {},
                                label: const Text(""),
                                icon: ClipRRect(
                                  borderRadius: BorderRadius.circular(130.0),
                                  child: Image.asset(
                                    'assets/images/moti.jpg',
                                    height: 130,
                                    width: 130,
                                  ),
                                )),
                            const Text(
                              "Motive",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: ClipRRect(
                                borderRadius: BorderRadius.circular(150.0),
                                child: Image.asset(
                                  'assets/images/hidra.jpg',
                                  height: 130,
                                  width: 130,
                                ),
                              ),
                            ),
                            const Text(
                              "Hidra",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: ClipRRect(
                                borderRadius: BorderRadius.circular(150.0),
                                child: Image.asset(
                                  'assets/images/allame.jpg',
                                  height: 130,
                                  width: 130,
                                ),
                              ),
                            ),
                            const Text(
                              "Allame",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: Column(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.grey.withOpacity(0.2)),
                              ),
                              onPressed: () {},
                              label: const Text(""),
                              icon: ClipRRect(
                                borderRadius: BorderRadius.circular(150.0),
                                child: Image.asset(
                                  'assets/images/ceg.jpg',
                                  height: 130,
                                  width: 130,
                                ),
                              ),
                            ),
                            const Text(
                              "Ceg",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
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
