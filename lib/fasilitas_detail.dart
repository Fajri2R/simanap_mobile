import 'package:flutter/material.dart';
import 'package:simanap_mobile/model/fasilitas.dart';

class FasilitasDetail extends StatelessWidget {
  final Fasilitas place;

  const FasilitasDetail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fasilitas'),
        backgroundColor: const Color(0xFF213B52),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(place.imageAsset),
              ],
            ),
            _buildTitle(place.name),
            _buildOpenInformation(place.openDays, place.openTime),
            _buildDescription(place.description),
            _buildImageGallery(place.imageUrls),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Staatliches',
        ),
      ),
    );
  }

  Widget _buildOpenInformation(String openDays, String openTime) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildInfoItem(Icons.calendar_today, openDays),
            _buildInfoItem(Icons.access_time, openTime),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon),
        const SizedBox(height: 8.0),
        Text(
          text,
        ),
      ],
    );
  }

  Widget _buildDescription(String description) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        description,
        style: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Oxygen',
        ),
      ),
    );
  }

  Widget _buildImageGallery(List<String> imageUrls) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: imageUrls.map((url) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(url),
            ),
          );
        }).toList(),
      ),
    );
  }
}
