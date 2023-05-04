import 'package:flutter/material.dart';
import 'package:rosi_aplikasi_flutter/model/tourism_place.dart';

class ListItem extends StatelessWidget{
  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  // ignore: use_key_in_widget_constructors
  const ListItem({
    Key? key,
    required this.place,
    required this.isDone,
    required this.onCheckboxClick
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(place.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    place.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(place.location),
                  SizedBox(
                    height: 10,
                  ),
                  Text(place.description),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Hari Buka: ${place.openDays}"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Jam Buka: ${place.openTime}"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Harga Tiket: ${place.ticketPrice}"),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: Colors.blueAccent,
            value: isDone,
            onChanged: onCheckboxClick,
          ),
        ],
      ),
    );
  }
}