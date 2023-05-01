import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget con(double width, double heigth, Color color,
      {Radius radius = Radius.zero,
      Radius radius2 = Radius.zero,
      Radius radius3 = Radius.zero,
      Radius radius4 = Radius.zero}) {
    return Container(
      height: heigth,
      width: width,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: radius,
          topRight: radius2,
          bottomLeft: radius3,
          bottomRight: radius4,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      con(150, 150, Colors.blue, radius4: Radius.circular(35)),
                      con(150, 150, Colors.blue, radius3: Radius.circular(30)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: con(100, 100, Colors.blue,
                                radius: Radius.circular(35))),
                        con(100, 100, Colors.blue, radius3: Radius.circular(35))
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: con(100, 100, Colors.blue,
                              radius2: Radius.circular(35)),
                        ),
                        con(100, 100, Colors.blue,
                            radius4: Radius.circular(35)),
                      ])
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        con(
                          150,
                          150,
                          Colors.blue,
                          radius2: Radius.circular(35),
                        ),
                        con(150, 150, Colors.blue, radius: Radius.circular(35)),
                      ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
