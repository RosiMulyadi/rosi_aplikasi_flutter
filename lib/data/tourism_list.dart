import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rosi_aplikasi_flutter/data/detail_screen.dart';
import 'package:rosi_aplikasi_flutter/model/tourism_place.dart';
import 'package:rosi_aplikasi_flutter/data/list_item.dart';
import 'package:rosi_aplikasi_flutter/provider/done_tourism_provider.dart';


class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl. Pemuda',
      description: 'Museum Kapal Selam',
      openDays: 'Monday - Sunday',
      openTime: '09:00 - 16:00',
      ticketPrice: 'Rp 20.000',
      imageAsset: 'assets/images/submarine.jpg',
    ),
    TourismPlace(
      name: 'Keleteng Sanggar Agung',
      location: 'Kenjeran',
      description: 'Sebuah Klenteng di Kota Surabaya',
      openDays: 'Monday - Sunday',
      openTime: '09:00 - 16:00',
      ticketPrice: 'Rp 10.000',
      imageAsset: 'assets/images/klenteng.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      description: 'Museum Tembakau dan Markas Besar Sampoerna',
      openDays: 'Monday - Sunday',
      openTime: '09:00 - 16:00',
      ticketPrice: 'Rp 20.000',
      imageAsset: 'assets/images/sampoerna.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun Contong',
      description: 'Monumen yang menjadi markah tanah Kota Surabaya',
      openDays: 'Monday - Sunday',
      openTime: '09:00 - 16:00',
      ticketPrice: 'Rp 30.000',
      imageAsset: 'assets/images/pahlawan.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      description: 'Sebuah patung yang merupakan lambang kota Surabaya',
      openDays: 'Monday - Sunday',
      openTime: '09:00 - 16:00',
      ticketPrice: 'Rp 25.000',
      imageAsset: 'assets/images/sby.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if(value!=null){
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
