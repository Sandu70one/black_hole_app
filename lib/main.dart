import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // Change to your desired color
    statusBarColor: Color.fromARGB(255, 48, 48, 48),
    // systemNavigationBarDividerColor: Color.fromARGB(255, 48, 48, 48),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Masters",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            shadowColor: Colors.white60, // not working
            backgroundColor: Colors.black,
            title: const Text(
              "Space Hole ",
              style: TextStyle(
                  color: Color.fromARGB(255, 114, 104, 116),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 35,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Dive into the vast emptiness",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.underline),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/space1.png",
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "In the inky blackness, planets spin like swirling marbles, their dance orchestrated by unseen stars. Asteroids, remnants of shattered worlds, hurtle through the void.  Here, in the vast emptiness, lies a universe waiting to be explored.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      print("explore more");
                    },
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.purple[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "Explore More",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      "assets/space2.png",
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        textAlign: TextAlign.center,
                        "...Some moons, like Saturn's Enceladus, harbor vast oceans beneath their icy surfaces, hinting at the possibility of life existing in such alien environments.",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.purple[800],
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.red[800],
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green[800],
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Image.asset(
                      "assets/space3.png",
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Moonlight ships, stardust engines, constellation maps - we explore the cosmos with imagination, not metal.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: GestureDetector(
                      onTap: () {
                        print("Launch the rocket...");
                      },
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.purple[800],
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "Launch",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 3,
                    width: double.infinity,
                    color: Colors.purple[800],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Space Hole",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Text(
                    "Powered by Starlight: Explore the Cosmos with Imagination",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.ios_share,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
