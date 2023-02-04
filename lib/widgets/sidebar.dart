import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      color: Colors.red.shade100,
      child: const Center(
        child: Text(
          "Sidebar",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
