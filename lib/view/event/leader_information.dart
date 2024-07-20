import 'package:flutter/material.dart';
import 'package:appdev/view/widget/button.member.dart';

class LeaderInformation extends StatelessWidget {
  LeaderInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/leader_summit.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Regional Leadership Summit',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Join us for the Regional Leadership Summit. Engage with peers, participate in workshops, and share your ideas to shape the future. This forum aims to empower the youth by providing a platform for discussion, innovation, and collaboration.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 20),
              const ButtonRegister(),
            ],
          ),
        ),
      ),
    );
  }
}
