import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rosi_aplikasi_flutter/model/tourism_place.dart';
import 'package:rosi_aplikasi_flutter/data/list_item.dart';
import 'package:rosi_aplikasi_flutter/provider/done_tourism_provider.dart';

class DoneTourismList extends StatelessWidget{
  const DoneTourismList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wisata telah dikunjungi'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index){
            final TourismPlace place = doneTourismPlaceList[index];
            return Card(
              color: Colors.white60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    place.imageAsset,
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        Text(place.location, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16.0),),
                        SizedBox(
                          height: 10,
                        ),
                        Text(place.description, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16.0),),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.done_outline),
                ],
              ),
            );
          },
          itemCount: doneTourismPlaceList.length,
        )
    );
  }
}
