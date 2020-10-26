import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const APP_BAR_COLOR = const Color(0xFF91B2BE);
  static const PASTEL_DBLUE = const Color(0xFFF397b93);
  static const PASTEL_YELLOW = const Color(0xFFFfdfd96);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/4310981/pexels-photo-4310981.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                'Welcome, Jackson!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 30,
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'DESTINATIONS VISITED',
                  style: TextStyle(fontSize: 20.0, letterSpacing: 2),
                ),
              ),
            ]),
            elevation: 5.0,
          ),
          Divider(
            height: 10.0,
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const ListTile(
                  trailing: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://s3-media0.fl.yelpcdn.com/bphoto/p1MlfNYNRBvwKWXm2ZjG-w/348s.jpg'),
                  ),
                  title: Text(
                    'Eastwoods Neighborhood Park',
                    textScaleFactor: 0.95,
                  ),
                  subtitle: Text(
                      'Large green area with tennis courts, pinic tables, a playground & open wooded space'),
                ),
              )
            ]),
            elevation: 5.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://www.everlastingelopements.com/images/uploads/267/austin-604__large.jpg'),
                  ),
                  title:
                      Text('Butler Shores at Town Lake', textScaleFactor: 0.95),
                  subtitle: Text(
                      'Tranquil, grassy park offering an assortment of trails, exercise bars & other features.'),
                ),
              )
            ]),
            elevation: 5.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const ListTile(
                  trailing: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://images.squarespace-cdn.com/content/v1/5c2d2da955b02c84384fe844/1556125054658-8FH7AJZDRQHGTKZRLERM/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/_J3A5216.jpg'),
                  ),
                  title: Text('Pease District Park', textScaleFactor: 0.95),
                  subtitle: Text(
                      'Urban park features trails, picnic space, sports courts & an annual public party in honor of Eeyore.'),
                ),
              )
            ]),
            elevation: 5.0,
          ),
        ],
      ),
    );
  }
}
