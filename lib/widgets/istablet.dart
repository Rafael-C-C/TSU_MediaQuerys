import 'package:flutter/material.dart';

class IsTablet extends StatelessWidget {
  const IsTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 450,
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
