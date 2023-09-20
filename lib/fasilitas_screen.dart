import 'package:flutter/material.dart';
import 'package:simanap_mobile/fasilitas_detail.dart';
import 'package:simanap_mobile/model/fasilitas.dart';

class FasilitasScreen extends StatefulWidget {
  const FasilitasScreen({Key? key}) : super(key: key);

  @override
  State<FasilitasScreen> createState() => _FasilitasScreenState();
}

class _FasilitasScreenState extends State<FasilitasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Fasilitas place = fasilitasList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FasilitasDetail(place: place);
              }));
            },
            child: Card(
              child: Column(
                // Use a Column to stack the image and text vertically
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(place.imageAsset),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: fasilitasList.length,
      ),
    );
  }
}
