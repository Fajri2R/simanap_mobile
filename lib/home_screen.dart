import 'package:flutter/material.dart';

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
      const Icon(
        Icons.vaccines,
        size: 150,
      ),
      const Icon(
        Icons.business,
        size: 150,
      ),
      _buildKontakCard(), // Memanggil fungsi untuk menampilkan card kontak
    ];
  }

  Widget _buildKontakCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.black, width: 1.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: const Padding(
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
            SizedBox(height: 10.0),
            Text(
              'Nomor Telepon: 123-456-789',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Alamat Email: example@email.com',
              style: TextStyle(fontSize: 16.0),
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
      body: Center(
        child: _pages.elementAt(_selectedIndex),
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
