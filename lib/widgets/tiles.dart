import 'package:flutter/material.dart';

class STile extends StatelessWidget {
  final String txt;
  final Icon icon;

  const STile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightBlueAccent,
        ),
        padding: const EdgeInsets.all(12),
        child: icon,
      ),
      title: Text(txt),
      trailing: const Icon(Icons.arrow_circle_right),
    );
  }
}
