import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(56),
        child: Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CircleAvatar(
                  foregroundImage: AssetImage("assets/images/me.jpg"),
                  radius: 56,
                ),
                Text(
                  "Hamid Hussainy",
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 245, 231),
                      fontSize: 38,
                      fontFamily: "pacific"),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 245, 231),
                      fontSize: 28,
                      fontFamily: "ubuntu"),
                ),
                Divider(
                  color: Color.fromARGB(255, 102, 245, 231),
                ),
                MyTile(
                  icon: Icon(Icons.link),
                  title: "Website",
                ),
                MyTile(
                  icon: Icon(Icons.email),
                  title: "Email",
                ),
                MyTile(
                  icon: Icon(Icons.flutter_dash),
                  title: "Twitter",
                ),
                MyTile(
                  icon: Icon(Icons.facebook),
                  title: "Facebook",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  const MyTile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80), color: Colors.white),
      child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.teal,
              fontSize: 16,
            ),
          )),
    );
  }
}
