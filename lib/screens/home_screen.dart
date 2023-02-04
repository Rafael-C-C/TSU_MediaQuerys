import 'package:flutter/material.dart';
import 'package:mediaqueryss/screens/examples_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Alto: $screenHeight, Ancho: $screenWidth",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Example1(),
                      ));
                },
                child: const Text("Siguiente pantalla"))
          ],
        ),
      ),
    );
  }
}
