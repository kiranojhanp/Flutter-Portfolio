import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Carddata.dart';

class Projects extends StatelessWidget {
  final List<Carddata> tripsList = [
    Carddata("Katmandu", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Carddata("Dharan", DateTime.now(), DateTime.now(), 50.00, "Bus"),
    Carddata("Dolakha", DateTime.now(), DateTime.now(), 500.00, "Plane"),
    Carddata("Dhading", DateTime.now(), DateTime.now(), 50.00, "Walk"),
    Carddata("Manakamana", DateTime.now(), DateTime.now(), 400.00, "Cablecar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Center(
          child: new ListView.builder(
            itemCount: tripsList.length,
            itemBuilder: (BuildContext context, int index) =>
                buildTripCard(context, index),
          ),
        ),
      ),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];

    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      trip.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0, bottom: 50.0),
                child: Row(
                  children: <Widget>[
                    Text(
                        "${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}"),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "\$${trip.budget.toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 35.0),
                    ),
                    Spacer(),
                    Icon(Icons.directions_car_outlined),
                    // Text(trip.travelType)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
