import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: isOn ? 1 : 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: AnimatedContainer(
                width: 100,
                height: isOn ? 100 : 50,
                duration: const Duration(seconds: 1),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: AnimatedAlign(
                  alignment:
                      isOn ? Alignment.centerRight : Alignment.centerLeft,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: isOn ? BoxShape.rectangle : BoxShape.circle,
                      color: isOn ? Colors.blue : Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
