import 'package:flutter/material.dart';
import 'package:vitamindtime/Destination.dart';
import 'Services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';

class DestinationDisplay extends StatefulWidget {
  @override
  _DestinationDisplayState createState() => _DestinationDisplayState();
}

class _DestinationDisplayState extends State<DestinationDisplay> {
  String destOfficialName = "";
  String destName = "";
  String destCategory = "";
  String destAddress = "";
  String destPic = "";
  String destBlurb = "";
  static const APP_BAR_COLOR = const Color(0xFF91B2BE);
  static const PASTEL_DBLUE = const Color(0xFFF397b93);
  static const PASTEL_YELLOW = const Color(0xFFFfdfd96);

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future getDestinationData() async {
    String url =
        "https://raw.githubusercontent.com/nxdavar/DestinationData.json/main/AllDestinations.json";
    print(url);
    http.Response response = await http.get(url);
    var results = jsonDecode(response.body);

    setState(() {
      Random rand = new Random();
      int randomNumber = rand.nextInt(99);
      print(randomNumber);
      print(results[randomNumber]);
      destName = results[randomNumber]['name'];
      destCategory = results[randomNumber]['category'];
      destAddress = results[randomNumber]['address'];
      destBlurb = results[randomNumber]['blurb'];
      destPic = results[randomNumber]['pic'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getDestinationData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore a Destination'),
        backgroundColor: APP_BAR_COLOR,
      ),
      body: Container(
        color: APP_BAR_COLOR,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Container(
                height: 50,
                width: 400,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: PASTEL_DBLUE,
                    borderRadius: BorderRadius.all(const Radius.circular(40.0)),
                  ),
                  child: Center(
                    child: Text(
                      destName,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    destPic,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300.0,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: PASTEL_DBLUE,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Category: ' + destCategory,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Blurb: ' + destBlurb,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          RaisedButton(
                            child: Text(
                              'Visit Now!',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            color: PASTEL_YELLOW,
                            onPressed: () {
                              _launchInBrowser(destAddress);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
