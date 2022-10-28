import 'package:assignment_project/second_screen.dart';
import 'package:flutter/material.dart';

class screen_one extends StatelessWidget {
  const screen_one({
    Key? key,
  }) : super(key: key);

  ///
  @override
  Widget build(BuildContext context) {
    // String name = "d";
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              itemBuilder: (context) =>
                  [PopupMenuItem(value: "mogadishu", child: Text("Mogadishu"))])
        ],
      ),
      body: Column(
        children: [
          Image(image: AssetImage("images/me.jpeg")),
          SizedBox(height: 20),
          Text(
            "Abdirahman Ali \n omar",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => second_screen(
                              name: "Abdirahman Ali omar",
                              Image: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Image(
                                      image: AssetImage("images/me.jpeg"))),
                            ))));
              },
              child: const Text("Go Second Screen"))
        ],
      ),
    );
  }
}
