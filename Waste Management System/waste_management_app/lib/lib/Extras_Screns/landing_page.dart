import 'package:flutter/material.dart';
import 'package:waste_managemet_app/lib/Extras_Screns/sign_in.dart';
import '../sign_up.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 2;
    double screenHeight = MediaQuery.of(context).size.height;
    double buttonWidth = screenWidth * 0.8;
    double buttonHeight = screenHeight * 0.07;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                const Text("The most",
                    style: TextStyle(
                        fontFamily: "Lexend",
                        fontSize: 24,
                        height: 1.25,
                        color: Color(0x7f1d2d47))),
                const Text("comprehensive",
                    style: TextStyle(
                        fontFamily: "Lexend",
                        fontSize: 24,
                        height: 1.25,
                        color: Color(0x7f1d2d47))),
                const Text(
                  "EcoHarbor: Urban Waste Symphony",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 22,
                      height: 1.7708333333,
                      color: Color(0xff1d2d47)),
                ),
                const SizedBox(height: 50),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/lading_page/waste 1.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 3),
                      Image.asset(
                        "assets/lading_page/waste 2.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 3),
                      Image.asset(
                        "assets/lading_page/waste 3.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 3),
                      Image.asset(
                        "assets/lading_page/waste 4.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 3),
                      Image.asset(
                        "assets/lading_page/waste 5.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 3),
                      Image.asset(
                        "assets/lading_page/waste 6.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 3),
                      Image.asset(
                        "assets/lading_page/waste 7.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 3),
                      Image.asset(
                        "assets/lading_page/waste 8.jpeg",
                        height: 150,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(93, 166, 70, 1),
                      minimumSize: Size(buttonWidth, buttonHeight)),
                  child: const Text(
                      textAlign: TextAlign.left,
                      "Create Account : SignUp",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(93, 166, 70, 1),
                      minimumSize: Size(buttonWidth, buttonHeight)),
                  child: const Text(
                      textAlign: TextAlign.left,
                      "SignIn",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//this is optimized code
/*class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(18.0),
        children: [
          const SizedBox(height: 60),
          const Text(
            "The most",
            style: TextStyle(
              fontFamily: "Lexend",
              fontSize: 24,
              height: 1.25,
              color: Color(0x7f1d2d47),
            ),
          ),
          const Text(
            "comprehensive",
            style: TextStyle(
              fontFamily: "Lexend",
              fontSize: 24,
              height: 1.25,
              color: Color(0x7f1d2d47),
            ),
          ),
          const Text(
            "EcoHarbor: Urban Waste Symphony",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 22,
              height: 1.7708333333,
              color: Color(0xff1d2d47),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8, // Assuming there are 8 images
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: index != 7 ? 3 : 0),
                  child: Image.asset(
                    "assets/lading_page/waste ${index + 1}.jpeg",
                    height: 150,
                    width: widthScreen,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(93, 166, 70, 1),
              minimumSize: const Size(360, 50),
            ),
            child: const Text(
              "Create Account : SignUp",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(93, 166, 70, 1),
              minimumSize: const Size(360, 50),
            ),
            child: const Text(
              "SignIn",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
