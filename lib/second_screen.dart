import 'package:flutter/material.dart';

class second_screen extends StatelessWidget {
  const second_screen({Key? key, this.name, this.Image}) : super(key: key);
  final String? name;
  final Image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image,
          SizedBox(
            height: 20,
          ),
          Text(
            name ?? "",
            style: const TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Back",
            ),
          )
        ],
      ),
    );
  }
}
