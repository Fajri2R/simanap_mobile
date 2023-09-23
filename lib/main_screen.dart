import 'package:flutter/material.dart';
import 'package:simanap_mobile/fasilitas_screen.dart';
import 'package:simanap_mobile/kontak_screen.dart';

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
        title: const Text(
          'S I M A N A P',
          style: TextStyle(
            color: Color(0xFF00A777), // Warna teks hitam
          ),
        ),
        backgroundColor: Colors.white, // Warna latar belakang putih
        centerTitle: true, // Menyusun judul ke tengah
        elevation: 0.2, // Menghilangkan shadow di bawah AppBar
        // Mengatur border bawah
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4), // Ketebalan border
          child: Container(
            color: const Color.fromARGB(255, 218, 216, 216), // Warna border
            height: 0.5, // Ketebalan border
          ),
        ),
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
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(
          //     topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 1),
          ],
        ),
        child: ClipRRect(
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(30.0),
          //   topRight: Radius.circular(30.0),
          // ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF00A777),
            unselectedItemColor: Colors.grey[350],
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
        ),
      ),
    );
  }
}

class _LayananScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                    color: Color.fromARGB(255, 243, 238, 238), width: 0.1),
              ),
              color: const Color(0xFF00A777),
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
                      const SizedBox(height: 12.0),
                      const Text(
                        "Selamat Datang Di Aplikasi",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "SIMANAP Mobile",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                    color: Color.fromARGB(255, 228, 223, 223), width: 0.1),
              ),
              color: const Color(0xFFECF7F1),
              margin: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "Layanan dan Informasi",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Silahkan Pilih Menu Dibawah Untuk Mengakses Layanan",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(7),
            crossAxisCount: 2,
            children: <Widget>[
              buildGridItem(
                  'assets/logo/tidur2.png', "Ketersediaan Tempat Tidur"),
              buildGridItem('assets/logo/jadwal2.png', "Jadwal Dokter"),
              buildGridItem('assets/logo/info.png', "Informasi"),
              // Add more items here as needed
            ],
          ),
        ],
      ),
    );
  }

  Widget buildGridItem(String imagePath, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(
              color: Color.fromARGB(255, 231, 225, 225),
              width: 0.1,
            ),
          ),
          color: const Color(0xFFF0F7FF),
          margin: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () {},
            splashColor: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: 120,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13.0,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
