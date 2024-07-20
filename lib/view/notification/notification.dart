import 'package:appdev/view/notification/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.notifications_outlined),
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {}, child: const Icon(Icons.filter_alt_outlined))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          NotificationCard(
              heading: "Upcoming Events",
              icon: Icons.event,
              items: [
                CardContent(
                    icon: Icons.event_available_outlined,
                    title: "Annual Gala Dinner",
                    date: "July 15, 2023",
                    description:
                        "Join us for our annual gala dinner, where we celebrate our achievements and honor our supporters.")
              ]),
          NotificationCard(
              heading: "Recent Achievements",
              icon: Icons.emoji_events_outlined,
              items: [
                CardContent(
                    icon: FontAwesomeIcons.award,
                    title: "Organization Impact Award",
                    date: "July 4, 2022",
                    description:
                        "Join us for our annual gala dinner, where we celebrate our achievements and honor our supporters.")
              ]),
          NotificationCard(
              heading: "Payment Notifications",
              icon: Icons.payment,
              items: [
                CardContent(
                    icon: Icons.attach_money,
                    title: "Membership Renewal",
                    date: "December 19, 2023",
                    description: "Lorem Lorem Sinta, Buko ng Papaya"),
                CardContent(
                    icon: Icons.attach_money,
                    title: "Event Registration",
                    date: "January 27, 2023",
                    description:
                        "Your payment is due soon. Please ensure that you make the payment to avoid any conflicts.")
              ]),
        ],
      ),
    );
  }
}
