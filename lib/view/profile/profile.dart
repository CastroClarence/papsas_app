import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Half Background Color
          Positioned.fill(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: Colors.red, // Change to your desired color
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 4,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/kris.jpg"),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kris Nathaniel Dimaapi',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          '0993-423-1971',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.verified,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Fully Verified',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        iconColor: const Color.fromARGB(255, 255, 17, 0),
                        leading: const Icon(Icons.card_membership),
                        title: Text(
                          "Benefits",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 255, 17, 0),
                          ),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: IconButton(
                            iconSize: 15,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                            color: Color.fromARGB(255, 241, 84, 73),
                          ),
                        ),
                        onTap: () {
                          // Add your onTap functionality here
                        },
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        iconColor: const Color.fromARGB(255, 255, 17, 0),
                        leading: const Icon(Icons.settings),
                        title: Text(
                          "Settings",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 255, 17, 0),
                          ),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: IconButton(
                            iconSize: 15,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                            color: Color.fromARGB(255, 241, 84, 73),
                          ),
                        ),
                        onTap: () {
                          // Add your onTap functionality here
                        },
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        iconColor: const Color.fromARGB(255, 255, 17, 0),
                        leading: const Icon(Icons.description),
                        title: Text(
                          "Terms and Conditions",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 255, 17, 0),
                          ),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: IconButton(
                            iconSize: 15,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                            color: Color.fromARGB(255, 241, 84, 73),
                          ),
                        ),
                        onTap: () {
                          // Add your onTap functionality here
                        },
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        iconColor: const Color.fromARGB(255, 255, 17, 0),
                        leading: const Icon(Icons.help_outline),
                        title: Text(
                          "Help",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 255, 17, 0),
                          ),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: IconButton(
                            iconSize: 15,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                            color: Color.fromARGB(255, 241, 84, 73),
                          ),
                        ),
                        onTap: () {
                          // Add your onTap functionality here
                        },
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        iconColor: const Color.fromARGB(255, 255, 17, 0),
                        leading: const Icon(Icons.logout),
                        title: Text(
                          "Logout",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 255, 17, 0),
                          ),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: IconButton(
                            iconSize: 15,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios),
                            color: Color.fromARGB(255, 241, 84, 73),
                          ),
                        ),
                        onTap: () {
                          // Add your onTap functionality here
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
