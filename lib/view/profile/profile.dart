import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://scontent.fmnl13-2.fna.fbcdn.net/v/t39.30808-6/310437918_8028638060542134_425834659732678182_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=ldvh4EJe-l4Q7kNvgH1BzQZ&_nc_ht=scontent.fmnl13-2.fna&oh=00_AYBABzv6V7jZmsPfXRU3rZLAG4tubpN83Ean1NdWf4WMfw&oe=66A45654"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '0993-423-1971',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Verified',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.card_membership),
                    title: const Text("Benefits"),
                    trailing: IconButton(
                        iconSize: 15,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                    onTap: null, // Add your onTap functionality here
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    trailing: IconButton(
                        iconSize: 15,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                    onTap: null, // Add your onTap functionality here
                  ),
                  ListTile(
                    leading: const Icon(Icons.description),
                    title: const Text("Terms and Conditions"),
                    trailing: IconButton(
                        iconSize: 15,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                    onTap: null, // Add your onTap functionality here
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline),
                    title: const Text("Help"),
                    trailing: IconButton(
                        iconSize: 15,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                    onTap: null, // Add your onTap functionality here
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Logout"),
                    trailing: IconButton(
                        iconSize: 15,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                    onTap: null, // Add your onTap functionality here
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
