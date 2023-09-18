import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class KontakScreen extends StatefulWidget {
  const KontakScreen({Key? key}) : super(key: key);

  @override
  State<KontakScreen> createState() => _KontakScreenState();
}

class _KontakScreenState extends State<KontakScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildKontakCard(),
          _buildAlamatCard(),
          _buildEmailCard(),
          _buildTeleponCard(),
          _buildSosmedCard(),
        ],
      ),
    );
  }

  Widget _buildKontakCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
            color: const Color.fromARGB(255, 156, 156, 156), width: 0.5),
      ),
      margin: EdgeInsets.all(10.0),
      color: Color.fromARGB(255, 223, 130, 10),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'KONTAK',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAlamatCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
            color: const Color.fromARGB(255, 156, 156, 156), width: 0.5),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_on_rounded,
                    size: 25.0, // Atur ukuran ikon
                    color: Color.fromARGB(255, 223, 130, 10)),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(height: 8.0), // J
            Text(
              'Alamat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 8.0), // J
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
        side: BorderSide(
            color: const Color.fromARGB(255, 156, 156, 156), width: 0.5),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email,
                    size: 25.0, // Atur ukuran ikon
                    color: Color.fromARGB(255, 223, 130, 10)),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(
                height: 8.0), // Jarak antara baris pertama dan teks "Email"
            Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
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
        side: BorderSide(
            color: const Color.fromARGB(255, 156, 156, 156), width: 0.5),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.call_end,
                    size: 25.0, // Atur ukuran ikon
                    color: Color.fromARGB(255, 223, 130, 10)),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              'Telepon',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
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
        side: BorderSide(
            color: const Color.fromARGB(255, 156, 156, 156), width: 0.5),
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
                        'https://www.facebook.com/rsudhamkotajambi/'); // Ganti dengan tautan yang diinginkan
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.facebook,
                          size: 25.0, // Atur ukuran ikon
                          color: Color.fromARGB(255, 223, 130, 10)),
                      SizedBox(height: 8.0),
                      Text(
                        'facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     launch(
                //         'https://www.youtube.com/channel/UCAPPRspvMZpp9GJHE6cPrFw'); // Ganti dengan tautan yang diinginkan
                //   },
                //   child: Column(
                //     children: <Widget>[
                //       Icon(Icons.video_collection_rounded,
                //           size: 25.0, // Atur ukuran ikon
                //           color: Color.fromARGB(255, 223, 130, 10)),
                //     ],
                //   ),
                // ),
                InkWell(
                  onTap: () {
                    launch(
                        'https://www.instagram.com/rsudhamkotajambi/'); // Ganti dengan tautan yang diinginkan
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.photo_camera_outlined,
                          size: 25.0, // Atur ukuran ikon
                          color: Color.fromARGB(255, 223, 130, 10)),
                      SizedBox(height: 8.0),
                      Text(
                        'Instagram',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0,
                        ),
                      ),
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
}
