import 'package:flutter/material.dart';

class IsPhone extends StatelessWidget {
  const IsPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 300,
      decoration: BoxDecoration(color: Colors.green.shade100),
      child: Row(
        children: [
          Image.asset("assets/img/Foto.jpg"),
          const Text(
            "Hola 5A DSM",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
