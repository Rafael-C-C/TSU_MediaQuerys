import 'package:flutter/material.dart';

import 'isphone.dart';
import 'istablet.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isTablet(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isPhone(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    return Expanded(
      child: Container(
        height: double.infinity,
        color: Colors.yellow.shade100,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Contenido",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text("Alto: $screenHeight"),
              Text("Ancho: $screenWidth"),
              const SizedBox(
                height: 20,
              ),
              if (isPhone(context)) const IsPhone(),
              if (isTablet(context)) const IsTablet()
            ],
          ),
        ),
      ),
    );
  }
}
