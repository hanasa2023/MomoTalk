import 'package:flutter/material.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:momotalk/utils/constant.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    required this.name,
    required this.message,
    required this.sukiLevel,
    required this.onInfoBoxTap,
  });

  final String name;
  final String message;
  final int sukiLevel;
  final Function() onInfoBoxTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 48,
        backgroundImage: AssetImage('$avatar_path$name.png'),
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
      trailing: DecoratedIcon(
        Icons.favorite,
        color: inSukiIconColor,
        shadows: [
          BoxShadow(
            color: outSukiIconColor,
            offset: Offset(0, 0),
            blurRadius: 4.0,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      onTap: onInfoBoxTap,
    );
  }
}
