import 'package:flutter/material.dart';
import 'package:waste_managemet_app/lib/home_page.dart';
import 'landing_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          IconButton(
              padding: const EdgeInsets.only(right: 25),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LandingPage()));
              },
              icon: const Icon(
                Icons.arrow_back_sharp,
                size: 30,
                color: Colors.black,
              )),
          const SizedBox(height: 20),
          const Text(
            "Login",
            style: TextStyle(
                fontFamily: "Lato",
                color: Color(0xff1d2d47),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          const SizedBox(height: 10),
          const Text(
            "Please sign in to continue",
            style: TextStyle(
                fontFamily: "Lato",
                color: Color(0x7f1d2d47),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            "Email",
            style: TextStyle(
                fontFamily: "Sans Serif Collection",
                fontSize: 16,
                color: Color(0x7f1d2d47)),
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Email", prefixIcon: Icon(Icons.email_outlined)),
          ),
          const SizedBox(height: 20),
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
                hintText: "Password", prefixIcon: Icon(Icons.lock_outline)),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(93, 166, 70, 1),
                  minimumSize: const Size(360, 50)),
              child: const Text("Login")),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/Login/Login Style.jpg",
            height: 200,
            width: widthScreen * 20,
          )
        ]),
      ),
    ));
  }
}
