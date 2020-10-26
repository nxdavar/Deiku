//import 'package:http/http.dart' as http;
//import 'package:vitamindtime/Destination.dart';
//import 'package:vitamindtime/home_screen.dart';
//import 'dart:math';
//
//class Services {
//  static const String url =
//      "https://raw.githubusercontent.com/nxdavar/DestinationData.json/main/AllDestinations.json";
//
////  static Future<List<Destination>> getDestinations() async {
////    try {
////      final response = await http.get(url);
////      if (200 == response.statusCode) {
////        final List<Destination> destinations =
////            destinationFromJson(response.body);
////        print('doing');
////        Random rand = new Random();
////        int randomValue = rand.nextInt(100);
////        print(randomValue);
////        return destinations;
////      } else {
////        return List<Destination>();
////      }
////    } catch (e) {
////      print(e);
////      return List<Destination>();
////    }
////  }
////}
//
