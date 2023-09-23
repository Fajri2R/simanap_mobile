import 'package:flutter/material.dart';
import 'package:simanap_mobile/fasilitas_detail.dart';
import 'package:simanap_mobile/model/fasilitas.dart';

class FasilitasScreen extends StatelessWidget {
  const FasilitasScreen({Key? key}) : super(key: key);

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
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 156, 156, 156), width: 0.5),
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
                margin: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(place.imageAsset),
                        const SizedBox(height: 8.0), // J
                        Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 17.0,
                            color: Color.fromARGB(255, 0, 0, 0),
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
          );
        },
        itemCount: fasilitasList.length,
      ),
    );
  }
}
