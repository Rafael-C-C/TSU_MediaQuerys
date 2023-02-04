import 'package:flutter/material.dart';

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

    return Expanded(
      child: Container(
        color: Colors.yellow.shade100,
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
            if (isTablet(context))
              SizedBox(
                height: 400,
                width: 800,
                child: Column(
                  children: const [
                    Boxes(),
                    Spacer(),
                    Boxes(),
                    Spacer(),
                    Boxes(),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  const Boxes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Box(),
        Spacer(),
        Box(),
        Spacer(),
        Box(),
        Spacer(),
        Box(),
      ],
    );
  }
}

class Box extends StatelessWidget {
  const Box({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 100,
      width: 100,
    );
  }
}
