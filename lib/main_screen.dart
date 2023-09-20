import 'package:flutter/material.dart';
import 'package:simanap_mobile/fasilitas_screen.dart';
import 'package:simanap_mobile/kontak_screen.dart';

import 'package:flutter/material.dart';

class _LayananScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        // Card luar GridView
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(
                  color: Color.fromARGB(255, 156, 156, 156), width: 0.5),
            ),
            color: Color.fromARGB(255, 102, 138, 97),
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      'assets/logo/rsud.png',
                      height: 80,
                    ),
                    SizedBox(height: 8.0), // J
                    Text(
                      "SELAMAT DATANG DI APLIKASI SIMANAP MOBILE",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // GridView.count
        GridView.count(
          shrinkWrap: true, // Tambahkan ini
          physics:
              NeverScrollableScrollPhysics(), // Tambahkan ini untuk mencegah scroll
          padding: const EdgeInsets.all(5),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                    color: Color.fromARGB(255, 156, 156, 156), width: 0.5),
              ),
              color: Color(0xFFA3EB8D),
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.bed,
                          size: 120,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        Text(
                          "KETERSEDIAAN TEMPAT TIDUR",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: const Color(0xFF123456), // Warna teks putih
                            fontWeight: FontWeight.w800, // Tebal (bold)
                          ),
                          textAlign: TextAlign.center, // Rata tengah),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                    color: Color.fromARGB(255, 156, 156, 156), width: 0.5),
              ),
              color: Color(0xFFA3EB8D),
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.watch_later,
                          size: 120,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        Text(
                          "JADWAL DOKTER",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: const Color(0xFF123456), // Warna teks putih
                            fontWeight: FontWeight.bold, // Tebal (bold)
                          ),
                          textAlign: TextAlign.center, // Rata tengah
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: const BorderSide(
                  color: Color.fromARGB(255, 156, 156, 156), width: 0.5),
            ),
            color: Color(0xFFA3EB8D),
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.info,
                        size: 120,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        "INFORMASI",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: const Color(0xFF123456), // Warna teks putih
                          fontWeight: FontWeight.bold, // Tebal (bold)
                        ),
                        textAlign: TextAlign.center, // Rata tengah)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pages = <Widget>[
      _LayananScreen(), // Sisipkan _LayananScreen di sini
      const FasilitasScreen(),
      const KontakScreen(),
    ];
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIMANAP'),
        backgroundColor: const Color(0xFF213B52),
      ),
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.vaccines),
            label: 'Pelayanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Fasilitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Kontak',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
