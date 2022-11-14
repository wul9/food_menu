import 'package:flutter/material.dart';
import 'day.dart';
import 'dayMenu.dart';

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'NYCDOE School Food Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: ListView.builder(
              itemCount: WeeklyMenu.menu.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DayMenu(menu: WeeklyMenu.menu[index]);
                        })
                      );
                    },
                    child: dayCard(WeeklyMenu.menu[index]));
              }),
        )));
  }

  Widget dayCard(Day day) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(children: [
              day.foods[0].value,
              Text(day.day,
                  style: const TextStyle(
                      fontSize: 30, fontFamily: 'Times New Roman', height: 2))
            ])));
  }
}
