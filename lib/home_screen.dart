import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late List<Widget> _pages; // Deklarasikan _pages sebagai late variable

  @override
  void initState() {
    super.initState();
    _pages = <Widget>[
      Icon(
        Icons.vaccines,
        size: 150,
      ),
      Icon(
        Icons.business,
        size: 150,
      ),
      _buildKontakCard(),
      _buildAlamatCard(),
      SizedBox(height: 10),

      // Memanggil fungsi untuk menampilkan card kontak
    ];
  }

  Widget _buildKontakCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.black, width: 1.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              'Informasi Kontak',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 2.0,
              width: Get.width,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlamatCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.black, width: 1.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_on_rounded),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            Text(
              'Alamat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 2.0,
              width: Get.width,
            ),
            Text(
              'Jl. Sk. Rd. Syahbuddin - Mayang Jambi City 36361L',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.black, width: 1.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(
                height: 8.0), // Jarak antara baris pertama dan teks "Email"
            Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0), // Jarak antara teks "Email" dan alamat email
            Text(
              'rsudjambikota@gmail.com',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeleponCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.black, width: 1.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.call_end),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              'Telepon',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '(0741) 5910190',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSosmedCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.black, width: 1.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    launch(
                        'https://www.google.com'); // Ganti dengan tautan yang diinginkan
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.facebook),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch(
                        'https://www.google.com'); // Ganti dengan tautan yang diinginkan
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.video_collection_rounded),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch(
                        'https://www.google.com'); // Ganti dengan tautan yang diinginkan
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.camera_alt_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIMANAP'),
      ),
      body: _selectedIndex == 2
          ? ListView(
              children: [
                _buildKontakCard(),
                _buildAlamatCard(),
                _buildEmailCard(),
                _buildTeleponCard(),
                _buildSosmedCard()
              ],
            )
          : Center(child: _pages.elementAt(_selectedIndex)),
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
