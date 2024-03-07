import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:waste_managemet_app/Screens/maps_page.dart';
import 'package:waste_managemet_app/Screens/read_sms.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;

  signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: const Text("HomePage"),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ReadWidget()));
              }, 
              icon: const Icon(Icons.notifications,color: Colors.white,)
            )
          ],
          backgroundColor: const Color.fromARGB(255, 59, 217, 64),
          elevation: 50,
          shadowColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
            )
          ),
          
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  shadowColor: Colors.black,
                  elevation: 10,
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const MapWithMarkers()));
                      }, 
                      icon: const Icon(
                        Icons.map,
                        color: Colors.blue,
                        size: 70,
                      )
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => signout()),
        child: const Icon(Icons.login_rounded),
      ),
    );
  }
}
