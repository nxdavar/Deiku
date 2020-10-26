import 'package:flutter/material.dart';
import 'package:vitamindtime/activity_check.dart';

class LeaderBoard extends StatelessWidget {
  static const APP_BAR_COLOR = const Color(0xFF91B2BE);
  static const PASTEL_DBLUE = const Color(0xFFF397b93);
  static const PASTEL_YELLOW = const Color(0xFFFfdfd96);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xFFF9F1F1),
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: RadialProgress(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Leaderboard',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Week of: 10/18 - 10/25',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: ListTile(
                    tileColor: APP_BAR_COLOR,
                    leading: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        width: 55,
                        height: 55,
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/4890733/pexels-photo-4890733.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        ),
                      ),
                    ),
                    title: Text(
                      'Joseph Alexander Smith',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("85 Vitamin D Mins"),
                    trailing: Text(
                      "1st",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFD700)),
                    ),
                    dense: false,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: ListTile(
                  tileColor: PASTEL_DBLUE,
                  leading: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {},
                    child: Container(
                      width: 55,
                      height: 55,
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/4310981/pexels-photo-4310981.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ),
                    ),
                  ),
                  title: Text(
                    'You',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("77 Vitamin D Mins"),
                  trailing: Text(
                    "2nd",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFC0C0C0)),
                  ),
                  dense: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: ListTile(
                  tileColor: APP_BAR_COLOR,
                  leading: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {},
                    child: Container(
                      width: 55,
                      height: 55,
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/4983110/pexels-photo-4983110.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      ),
                    ),
                  ),
                  title: Text(
                    'Felicia Tyler',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("68 Vitamin D Mins"),
                  trailing: Text(
                    "3rd",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFcd7f32)),
                  ),
                  dense: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: ListTile(
                  tileColor: APP_BAR_COLOR,
                  leading: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {},
                    child: Container(
                      width: 55,
                      height: 55,
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/5242017/pexels-photo-5242017.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                      ),
                    ),
                  ),
                  title: Text(
                    'Finley Harris',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("60 Vitamin D Mins"),
                  trailing: Text(
                    "4th",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueGrey),
                  ),
                  dense: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  child: ListTile(
                    tileColor: APP_BAR_COLOR,
                    leading: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        width: 55,
                        height: 55,
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/1730628/pexels-photo-1730628.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        ),
                      ),
                    ),
                    title: Text(
                      'Joshua Garvin',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("52 Vitamin D Mins"),
                    trailing: Text(
                      "5th",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                    dense: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
