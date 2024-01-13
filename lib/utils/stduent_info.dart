import 'package:flutter/material.dart';
import 'package:momotalk/utils/info_box.dart';
import 'package:momotalk/utils/students_name.dart';

const avatar_path = 'image';

class StudentInfoItem {
  StudentInfoItem({required this.message});
  final String message;
}

class Students {
  var studentInfo = {
    '日奈': StudentInfoItem(message: ''),
    '日奈（泳装）': StudentInfoItem(message: ''),
    '亚子': StudentInfoItem(message: '谢绝业务以外的联络'),
    '伊织': StudentInfoItem(message: '看到可疑的人请立刻联络'),
    '伊织（泳装）': StudentInfoItem(message: '夏季合宿训练中'),
  };

  List<Widget> initStudents() {
    List<Widget> students = [];
    for (int i = 0; i < studentInfo.length; i++) {
      String s_n = studentsName[i];
      students.expand(
        InfoBox(
          name: s_n,
          message: studentInfo[s_n].message!,
        ),
      );
    }
    return students;
  }
}


// studentname is a key to get studentInfo
