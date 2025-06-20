import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather/data/network.dart';
import 'package:weather/data/my_location.dart';
import 'package:weather/screen/weather_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const String apiKey = '6b6cbe90813fa856f684d8a78a8afd7e';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double? myLongitude2;
  double? myLatitude2;

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    myLatitude2 = myLocation.myLatitude;
    myLongitude2 = myLocation.myLongitude;
    Network network = Network('https://api.openweathermap.org/data/2.5/weather?lat=$myLatitude2&lon=$myLongitude2&appid=$apiKey&units=metric');
    var weatherData = await network.getJsonData();
    print(weatherData);
    if(!mounted) return;
    Navigator.push(context, MaterialPageRoute(builder: (context) => 
    WeatherScreen(parseWeatherData: weatherData,),));

  }

  @override
  void initState() {
    print("test1");
    super.initState();
    getLocation();
    print("test2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 80,
        ),
      ),
    );
  }
}