import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HEADINGS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "HEADLINES",
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: const Color.fromRGBO(70, 70, 70, 1),
        child: ListView.builder(itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://images.mktw.net/im-663608/social",
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: GridTile(
              child: Column(
                children: [
                  Text("heading"),
                  Row(
                    children: [
                      Text("site"),
                      Text("data"),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
