//import 'package:appdev/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:appdev/view/widget/text.form.global.dart';
import 'package:appdev/view/widget/button.backhome.dart';

class MembershipRegistration extends StatelessWidget {
  MembershipRegistration({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController FirstNameController = TextEditingController();
  final TextEditingController PhoneController = TextEditingController();
  final TextEditingController LastNameController = TextEditingController();
  final TextEditingController BirthdateController = TextEditingController();
  final TextEditingController RegionController = TextEditingController();
  final TextEditingController OccupationController = TextEditingController();
  final TextEditingController MembershipTypeController =
      TextEditingController();
  final TextEditingController AddressTypeController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context, false))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 0),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(0.0),
                  child: const Image(
                    image: AssetImage('images/papsas.png'),
                    width: 70,
                    height: 70,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'PAPSAS INC.',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          'Membership Form',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 255, 0, 0)
                                  .withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 15),
                        //email
                        Form(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: FirstNameController,
                                    text: 'First Name',
                                    obscure: false,
                                    textInputType:
                                        TextInputType.text, // nonsense naman to
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: LastNameController,
                                    text: 'Last Name',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: PhoneController,
                                    text: 'Phone Number',
                                    obscure: false,
                                    textInputType: TextInputType.number,
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: BirthdateController,
                                    text: 'Birthdate',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: RegionController,
                                    text: 'Region',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: TextFormGlobal(
                                    controller: AddressTypeController,
                                    text: 'Address',
                                    obscure: false,
                                    textInputType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            TextFormGlobal(
                              controller: emailController,
                              text: 'Email',
                              obscure: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 14),
                            TextFormGlobal(
                              controller: OccupationController,
                              text: 'Occupation',
                              obscure: false,
                              textInputType: TextInputType.text,
                            ),
                            const SizedBox(height: 14),
                            TextFormGlobal(
                              controller: MembershipTypeController,
                              text: 'Membership Type',
                              obscure: false,
                              textInputType: TextInputType.text,
                            ),
                          ],
                        )),
                        const SizedBox(height: 15),
                        const ButtonBackHome(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
