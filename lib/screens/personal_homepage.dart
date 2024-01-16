import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:momotalk/utils/student_info.dart';
import 'package:momotalk/utils/constant.dart';

class PersonalHomepage extends StatefulWidget {
  const PersonalHomepage({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  _PersonalHomepageState createState() => _PersonalHomepageState();
}

class _PersonalHomepageState extends State<PersonalHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Row(
          children: <Widget>[
            const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Text(
              'MomoTalk',
              style: titleTextStyle,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 176,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(height: 8),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('$avatar_path${widget.name}.png'),
                ),
                SizedBox(width: 8),
                Text(
                  widget.name,
                  style: headlineTextStyle,
                ),
                Text(
                  Students().studentInfo[widget.name].signal,
                  style: subtitleTextStyle,
                ),
              ],
            ),
          ),
          Center(
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 8),
                      Icon(
                        LineIcons.birthdayCake,
                        color: cakeIconColor,
                      ),
                      SizedBox(width: 8),
                      Text(
                        Students().studentInfo[widget.name].birthday,
                        style: birthdayTextStyle,
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                  SizedBox(height: 8),
                ],
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(24.0)),
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 40.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '羁绊等级奖励',
                      style: blueTextStyle,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: blueBoxColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: grayBoxColor,
                                child: ListTile(
                                  leading: Text(
                                    '攻击力',
                                    style: headlineTextStyle,
                                  ),
                                  trailing: Text(
                                    '70',
                                    style: headlineTextStyle,
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              width: 1.0,
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            Expanded(
                              child: Container(
                                color: grayBoxColor,
                                child: ListTile(),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                leading: Text(
                                  '最大能力',
                                  style: headlineTextStyle,
                                ),
                                trailing: Text(
                                  '634',
                                  style: headlineTextStyle,
                                ),
                              ),
                            ),
                            VerticalDivider(
                              width: 1.0,
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            Expanded(
                              child: ListTile(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '奖励对象',
                      style: blueTextStyle,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: blueBoxColor,
                  ),
                ),
                SizedBox(height: 80.0),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
                width: 2.0,
              ),
            ),
            //TODO:羁绊等级奖励
          ),
        ],
      ),
    );
  }
}
