import 'package:flutter/material.dart';

class KontakScreen extends StatefulWidget {
  const KontakScreen({Key? key}) : super(key: key);

  @override
  State<KontakScreen> createState() => _KontakScreenState();
}

class _KontakScreenState extends State<KontakScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
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
      ),
    );
  }
}
