import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'dart:math';
import 'package:vitamindtime/destination_display.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const PASTEL_YELLOW = const Color(0xFFFfdfd96);
  TimeOfDay now = TimeOfDay.now();
  var currently;

  String locationMessage = "";
  String userLat = "";
  String userLong = "";
  String skyCondition = "";

  double lat;
  double long;

  void getCurrentLocation(String callingFunction) async {
    print(callingFunction);
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    lat = position.latitude;
    long = position.longitude;
    print(lat);
    print(long);
    getWeather();
  }

  // creating a list of images that will be indexed
  // and will display a particular image later depending on the weather
  // conditions
  List<Widget> weatherImages = <Widget>[
    Image.asset('assets/night_transparent.png'),
    Image.asset('assets/sun_transparent.png'),
    Image.asset('assets/cloud_transparent.png')
  ];

  int index = 0;

  // function that uses the Open Weather Map API to get the currently
  // characteristic of the data for a particular city

  // http://api.openweathermap.org/data/2.5/weather?lat=$position.latitude&lon=$position.longitude&appid=90e9ceeb9208de8b0a28172e99456a56
  // "http://api.openweathermap.org/data/2.5/weather?lat=$userLat&lon=$userLong&appid=90e9ceeb9208de8b0a28172e99456a56"
  // City Weather Map API Grab Data:
  // api.openweathermap.org/data/2.5/weather?q=Austin&appid=90e9ceeb9208de8b0a28172e99456a56

  // new use of lat and long from open weather map
  //api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=90e9ceeb9208de8b0a28172e99456a56

  Future getWeather() async {
    String url =
        "http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=90e9ceeb9208de8b0a28172e99456a56";
    print(url);
    http.Response response = await http.get(url);
    var results = jsonDecode(response.body);
    print(response.body);
    setState(() {
      this.currently = results['weather'][0]['main'];
    });
    if (this.currently == "Clear" && now.hour > 7 && now.hour < 20) {
      index = 1;
    } else if (this.currently == "Clouds" && now.hour > 7 && now.hour < 20) {
      index = 2;
    }
  }

  // need to be run on so use the initState function
  @override
  void initState() {
    super.initState();
    this.getCurrentLocation('init');
  }

  String weatherPrint(currently) {
    if (currently == "Clouds" && now.hour > 7 && now.hour < 20) {
      skyCondition =
          "It seems like the sky is cloudy. You can still go out to get some air!";
    } else if (currently == "Clear" && now.hour > 7 && now.hour < 20) {
      skyCondition =
          "It seems like the sky is clear. Go out and get your Vitamin D!";
    } else {
      skyCondition =
          "It seems like the sky is dark because it's nighttime. Get some rest!";
    }
    return skyCondition;
  }

  // prints the image of the condition as well as accompanying text for
  // the user
  @override
  Widget build(BuildContext context) {
    // call getLocation method here if we can get it to work
    return Container(
      color: Color(0xFFF9F1F1),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                  height: 200, width: 300, child: weatherImages[index])),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                currently != null ? weatherPrint(currently) : "Loading...",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 100.0),
            child: RaisedButton(
              color: PASTEL_YELLOW,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DestinationDisplay()));
              },
              child: Text(
                'Find a destination!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
