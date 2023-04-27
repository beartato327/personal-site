import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capurro | Dev',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
              decoration: BoxDecoration(color: Colors.orange),
              child: AppBarContent()),
        ) /* AppBar(
            centerTitle: true,
            title: const Text("Roberto Capurro | Full Stack Dev"))*/
        ,
        body: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                          foregroundImage: NetworkImage(
                              "https://i.stack.imgur.com/0RUPF.jpg")))),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Hi! I am Roberto Capurro and thank you for visiting my site! I can't wait for you to learn more abou tme and my skillset as a developer.",
                        textAlign: TextAlign.right,
                      )))
            ])
          ],
        ));
  }
}

class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Roberto Capurro | Full Stack Dev',
                style: kIsWeb
                    ? TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                    : TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
              ),
              //const Spacer(),
              if (kIsWeb) ...[
                Row(children: navBarMenu)
              ] else ...[
                IconButton(
                  icon: const Icon(Icons.menu, size: 20),
                  color: Colors.white,
                  onPressed: () {},
                )
              ]
            ],
          ),
        ),
      ],
    );
  }
}

List<Widget> navBarMenu = [
  TextButton(
    child: Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 14)),
    onPressed: () {},
  ),
  TextButton(
    child:
        Text("About Me", style: TextStyle(color: Colors.white, fontSize: 14)),
    onPressed: () {},
  ),
  TextButton(
    child:
        Text("Education", style: TextStyle(color: Colors.white, fontSize: 14)),
    onPressed: () {},
  ),
  TextButton(
    child:
        Text("Experience", style: TextStyle(color: Colors.white, fontSize: 14)),
    onPressed: () {},
  ),
  TextButton(
    child:
        Text("Contact Me", style: TextStyle(color: Colors.white, fontSize: 14)),
    onPressed: () {},
  ),
];
