import 'package:flutter/material.dart';
import 'package:waste_managemet_app/lib/Extras_Screns/otp_page.dart';
import '../home_page.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<StatefulWidget> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              IconButton(
                  padding: const EdgeInsets.only(right: 25),
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpVerification()));
                  },
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    size: 30,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Set Password",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Lexend",
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1d2d47)),
              ),
              const SizedBox(height: 22),
              const Text(
                "Set your account password.Nothing hard for you to forget:)",
                style: TextStyle(
                    fontFamily: "Lexend",
                    color: Color(0xff1d2d47),
                    fontSize: 14),
              ),
              const SizedBox(height: 30),
              const Text(
                "Password",
                style: TextStyle(
                    fontFamily: "Sans Serif Collection",
                    fontSize: 16,
                    color: Color(0x7f1d2d47)),
              ),
              const TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefix: Icon(
                    Icons.lock_outline,
                    size: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const Text(
                "Confirm Password",
                style: TextStyle(
                    fontFamily: "Sans Serif Collection",
                    fontSize: 16,
                    color: Color(0x7f1d2d47)),
              ),
              const TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefix: Icon(
                    Icons.lock_outline,
                    size: 18,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(93, 166, 70, 1),
                      minimumSize: const Size(360, 50)),
                  child: const Text("Proceed")),
            ],
          ),
        ),
      ),
    );
  }
}
