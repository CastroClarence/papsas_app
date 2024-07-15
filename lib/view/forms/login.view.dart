import 'package:appdev/view/widget/text.login.dart';
import 'package:appdev/view/widget/button.login.dart';
import 'package:appdev/view/forms/register.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
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
                          'Welcome to PAPSAS INC.',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 255, 0, 0)
                                  .withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 15),
                        //email
                        TextFormLogin(
                          prefixIcon: Icons.account_circle_rounded,
                          controller: emailController,
                          text: 'Email',
                          obscure: false,
                          textInputType: TextInputType.emailAddress,
                        ), // importing the text form global

                        const SizedBox(height: 10),

                        TextFormLogin(
                          prefixIcon: Icons.lock,
                          controller: passwordController,
                          text: 'Password',
                          obscure: true,
                          textInputType: TextInputType.text,
                        ), // importing the text form global
                        const SizedBox(height: 15),

                        ButtonGlobal(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: const Color.fromARGB(250, 254, 247, 255),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Register())); //for next widget
              },
              child: const Text(' Sign Up',
                  style: TextStyle(
                    color: Colors.red,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
