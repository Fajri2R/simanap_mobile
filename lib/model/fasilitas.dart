import 'package:flutter_lorem/flutter_lorem.dart';

class Fasilitas {
  String name;
  String description;
  String openDays;
  String openTime;
  String imageAsset;
  List<String> imageUrls;

  Fasilitas({
    required this.name,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var fasilitasList = [
  Fasilitas(
    name: 'CT-SCAN 128 SLICE CARDIO',
    description: lorem(paragraphs: 2, words: 100),
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    imageAsset: 'assets/images/ct-scan.jpg',
    imageUrls: [
      'http://simanap.com/simanap/assets/img/fasilitas/CT_SCAN.jpg',
      'http://simanap.com/simanap/assets/img/fasilitas/RONTGEN_D-R_C-R.jpg',
      'http://simanap.com/simanap/assets/img/fasilitas/MAMOGRAFI.jpg'
    ],
  ),
];
