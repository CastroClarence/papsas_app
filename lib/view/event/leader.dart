import 'package:appdev/view/event/leader_information.dart';
import 'package:flutter/material.dart';

class LeaderSummit extends StatelessWidget {
  const LeaderSummit({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LeaderInformation()));
        },
        child: Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 227, 227, 227),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  width: MediaQuery.of(context).size.width - 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Regional Leader Summit",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/calendar.png",
                            height: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "July 30, 2024",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/location.png",
                            height: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Manila",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  child: Image.asset(
                    "images/leader_summit.jpg",
                    height: 100,
                    width: 120,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ));
  }
}
