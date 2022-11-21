import 'package:flutter/material.dart';
import 'package:news/HedlineDetailScreen.dart';

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
        fontFamily: "Roboto Slab",
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
            style: TextStyle(fontSize: 29),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: const Color.fromRGBO(70, 70, 70, 1),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeadlineDetailScreen(
                                imageUrl:
                                    "https://images.mktw.net/im-663608/social",
                                date: "2022-11-21T17:56:04Z",
                                description:
                                    "Newly minted Twitter CEO Elon Musk says he wont reinstate the account of conspiracy theorist and the InfoWars commentator Alex Jones.Musk says that Joness account, which has been offline since the so… [+2383 chars]",
                                headline:
                                    "Elon Musk has ‘no mercy’ for Alex Jones and won’t reinstate his Twitter account",
                                site: "Biztoc.com",
                              )));
                },
                child: Container(
                  height: 200,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.mktw.net/im-663608/social",
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Text(
                            "Elon Musk has ‘no mercy’ for Alex Jones and won’t reinstate his Twitter account",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Biztoc.com",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                DateTime.parse("2022-11-21T17:56:04Z")
                                        .year
                                        .toString() +
                                    "-" +
                                    DateTime.parse("2022-11-21T17:56:04Z")
                                        .month
                                        .toString() +
                                    "-" +
                                    DateTime.parse("2022-11-21T17:56:04Z")
                                        .day
                                        .toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
