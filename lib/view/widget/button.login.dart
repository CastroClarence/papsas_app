import 'package:flutter/material.dart';
import 'package:appdev/view/navigation/navigation_menu.dart';

class ButtonGlobal extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ButtonGlobal({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        // new code
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            debugPrint("Working");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NavigationMenu()));
          } else {
            debugPrint("Not working");
          }
        },

        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),

        //code ni Kris
        // child: Container(
        //   alignment: Alignment.center,
        //   height: 55,
        //   decoration: BoxDecoration(
        //     color: const Color.fromARGB(255, 255, 17, 0),
        //     borderRadius: BorderRadius.circular(6),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black.withOpacity(0.2),
        //         blurRadius: 10,
        //       )
        //     ],
        //   ),
        //   child: const Text(
        //     'Login',
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontWeight: FontWeight.w600,
        //       fontSize: 16,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
