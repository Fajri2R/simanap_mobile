import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: const BorderSide(
            color: Color.fromARGB(255, 228, 223, 223),
            width: 0.1,
          ),
        ),
        color: const Color(0xFFECF7F1),
        margin: const EdgeInsets.all(5),
        child: InkWell(
          onTap: () {},
          splashColor: const Color.fromARGB(255, 255, 255, 255),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Kontak",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Hubungi Kontak Dibawah Untuk Informasi Lebih Lanjut",
                      style: TextStyle(
                        fontSize: 13.0,
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
    );
  }

  Widget _buildAlamatCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(
            color: Color.fromARGB(255, 228, 223, 223), width: 0.5),
      ),
      margin: const EdgeInsets.all(10.0),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_on_rounded,
                    size: 25.0, // Atur ukuran ikon
                    color: Color.fromARGB(255, 0, 0, 0)),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(height: 8.0), // J
            Text(
              'Alamat',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 8.0), // J
            Text(
              'Jl. Sk. Rd. Syahbuddin - Mayang Jambi City 36361L',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(
            color: Color.fromARGB(255, 156, 156, 156), width: 0.5),
      ),
      margin: const EdgeInsets.all(10.0),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email,
                    size: 25.0, // Atur ukuran ikon
                    color: Color.fromARGB(255, 0, 0, 0)),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(
                height: 8.0), // Jarak antara baris pertama dan teks "Email"
            Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 8.0), // Jarak antara teks "Email" dan alamat email
            Text(
              'rsudjambikota@gmail.com',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeleponCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(
            color: Color.fromARGB(255, 228, 223, 223), width: 0.5),
      ),
      margin: const EdgeInsets.all(10.0),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.call_end,
                    size: 25.0, // Atur ukuran ikon
                    color: Color.fromARGB(255, 0, 0, 0)),
                SizedBox(width: 8.0), // Jarak antara ikon dan teks
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              'Telepon',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '(0741) 5910190',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSosmedCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(
            color: Color.fromARGB(255, 228, 223, 223), width: 0.5),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () async {
                    const urlFB = 'https://www.facebook.com/rsudhamkotajambi';
                    if (await canLaunchUrl(Uri.parse(urlFB))) {
                      await launchUrl(Uri.parse(urlFB));
                    } else {
                      throw 'Could not launch $urlFB';
                    }
                  },
                  child: const Column(
                    children: <Widget>[
                      Icon(Icons.facebook,
                          size: 25.0, // Atur ukuran ikon
                          color: Color.fromARGB(255, 0, 0, 0)),
                      SizedBox(height: 8.0),
                      Text(
                        'Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    const urlIG = 'https://www.instagram.com/rsudkotajambi/';
                    if (await canLaunchUrl(Uri.parse(urlIG))) {
                      await launchUrl(Uri.parse(urlIG));
                    } else {
                      throw 'Could not launch $urlIG';
                    }
                  },
                  child: const Column(
                    children: <Widget>[
                      Icon(Icons.photo_camera_outlined,
                          size: 25.0, // Atur ukuran ikon
                          color: Color.fromARGB(255, 0, 0, 0)),
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
