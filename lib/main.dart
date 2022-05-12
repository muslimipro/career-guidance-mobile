import 'package:flutter/material.dart';

import 'klimov/klimov_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF06224b),
        // primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // shrinkWrap: true,
                    // padding: const EdgeInsets.all(20.0),
                    children: [
                      const SizedBox(height: 15),
                      const Center(
                          child: Text(
                        'Мамандық таңдау',
                        // 'Выбор профессии',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFe53935)), //Color(0xFF06224b)),
                      )),
                      Image.asset('assets/image1.jpeg'),
                      const Text(
                        'Жекелеп диагностикалау әдістемесі',
                        // 'Пройди короткий тест в два этапа \nи получи результат',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),
                      TextButton(
                        child: const Text('Тестілеуді бастау',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF06224b)), //Color(0xFFe53935)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 48)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          )),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KlimovTestPage()),
                          );
                        },
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color(0xFFe0e0e0),
                height: 100,
                padding: const EdgeInsets.all(20),
                child: Row(children: [
                  Image.asset('assets/nurmakov_tr.png'),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          'Нығмет Нұрмаков \nатындағы мамандандырылған мектеп-интернаты',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
