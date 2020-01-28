import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  //double latitude;
  //double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      ),
    ));
  }

  @override
  void deactivate() {
    super.deactivate();
  }
}

// What is Api?
// An Application Programming Interface(API) is a set of
// commands, functions, protocols, and objects
// that programmers can use to create software or interact
// with an external system.

// It provides developers with standard commands for performing
// common operations so they do not have to write the code from scratch.

//Response Type
//XML , JSON
//XML <key>value</key>
//Json javascript Object Notation
//{key:value}

//tool chrome json viewer Awsome
