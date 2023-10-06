import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'INFORMASI',
          style: TextStyle(
            color: Color(0xFF00A777), // Warna teks hitam
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //Ubah icon back disini
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
      body: WebView(
        initialUrl: 'http://simanap.com/simanap/download/pengumuman',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
      ),
    );
  }
}
