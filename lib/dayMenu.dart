import 'package:flutter/material.dart';
import 'day.dart';

class DayMenu extends StatefulWidget {
  final Day menu;
  const DayMenu({Key? key, required this.menu}) : super(key: key);
  
  @override
  State<DayMenu> createState() => _DayMenuState();
}

class _DayMenuState extends State<DayMenu>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.menu.day} Menu'),
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 77, 62, 62),
          child: ListView.builder(
            itemCount: widget.menu.foods.length,
            itemBuilder: (context, index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      widget.menu.foods[index].value,
                      Text(widget.menu.foods[index].key, style: const TextStyle(fontSize: 30, fontFamily: 'Times New Roman', height: 2))
                    ]
                  )
                )
              );
            }
          ),
        )
      )
    );
  }
}