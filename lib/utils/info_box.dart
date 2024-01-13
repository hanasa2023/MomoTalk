import 'package:flutter/material.dart';
import 'package:momotalk/utils/constant.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({required this.name, required this.message});

  final String name;
  final String message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 48,
        backgroundImage: AssetImage('images/hina.png'),
        foregroundColor: Colors.black,
      ),
      title: Text(
        name,
        style: nameTextStyle,
      ),
      subtitle: Text(
        message,
        style: msgTextStyle,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Icon(Icons.looks_one),
      onTap: () {},
    );
  }
}
