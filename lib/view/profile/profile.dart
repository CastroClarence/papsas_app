import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.red),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Container(
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Row(
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  iconColor: const Color.fromARGB(255, 255, 17, 0),
                  leading: const Icon(Icons.card_membership),
                  title: const Text(
                    "Benefits",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 255, 17, 0),
                    ),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      iconSize: 15,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: const Color.fromARGB(255, 241, 84, 73),
                    ),
                  ),
                  onTap: () {
                    // Add your onTap functionality here
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  iconColor: const Color.fromARGB(255, 255, 17, 0),
                  leading: const Icon(Icons.settings),
                  title: const Text(
                    "Settings",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 255, 17, 0),
                    ),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      iconSize: 15,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: const Color.fromARGB(255, 241, 84, 73),
                    ),
                  ),
                  onTap: () {
                    // Add your onTap functionality here
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  iconColor: const Color.fromARGB(255, 255, 17, 0),
                  leading: const Icon(Icons.description),
                  title: const Text(
                    "Terms and Conditions",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 255, 17, 0),
                    ),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      iconSize: 15,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: const Color.fromARGB(255, 241, 84, 73),
                    ),
                  ),
                  onTap: () {
                    // Add your onTap functionality here
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  iconColor: const Color.fromARGB(255, 255, 17, 0),
                  leading: const Icon(Icons.help_outline),
                  title: const Text(
                    "Help",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 255, 17, 0),
                    ),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      iconSize: 15,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: const Color.fromARGB(255, 241, 84, 73),
                    ),
                  ),
                  onTap: () {
                    // Add your onTap functionality here
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  iconColor: const Color.fromARGB(255, 255, 17, 0),
                  leading: const Icon(Icons.logout),
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 255, 17, 0),
                    ),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      iconSize: 15,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: const Color.fromARGB(255, 241, 84, 73),
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
    );
  }
}
