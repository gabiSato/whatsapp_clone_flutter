import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({this.labeled = false, this.label, this.icon});

  final Widget icon;
  final String label;
  final bool labeled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 4),
      child: labeled
          ? Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            )
          : icon,
    );
  }
}
