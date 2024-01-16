import 'package:flutter/material.dart';
import 'package:momotalk/utils/info_box.dart';

class StudentInfoItem {
  StudentInfoItem({
    required this.signal,
    required this.sukiLevel,
    required this.birthday,
  });
  final String signal;
  final int sukiLevel;
  final String birthday;
  //此处也应该有学生聊天信息数据
}

class Students {
  List<String> studentsName = [
    '日奈',
    '日奈（泳装）',
    '亚子',
    '伊织',
    '伊织（泳装）',
    '千夏',
    '千夏（温泉）',
    '伊吕波',
    '阿露',
    '阿露（正月）',
    '睦月',
    '睦月（正月）',
    //TODO:补全学生姓名
  ];
  Map studentInfo = {
    '日奈': StudentInfoItem(
      signal: '',
      sukiLevel: 1,
      birthday: '2月19日',
    ),
    '日奈（泳装）': StudentInfoItem(
      signal: '',
      sukiLevel: 1,
      birthday: '2月19日',
    ),
    '亚子': StudentInfoItem(
      signal: '谢绝业务以外的联络',
      sukiLevel: 1,
      birthday: '12月22日',
    ),
    '伊织': StudentInfoItem(
      signal: '看到可疑的人请立刻联络',
      sukiLevel: 1,
      birthday: '11月8日',
    ),
    '伊织（泳装）': StudentInfoItem(
      signal: '夏季合宿训练中',
      sukiLevel: 1,
      birthday: '11月8日',
    ),
    '千夏': StudentInfoItem(
      signal: '丧失的前方',
      sukiLevel: 1,
      birthday: '8月22日',
    ),
    '千夏（温泉）': StudentInfoItem(
      signal: '寻求未知的视野',
      sukiLevel: 1,
      birthday: '8月22日',
    ),
    '伊吕波': StudentInfoItem(
      signal: '读书时除了紧急状况请不要联络我',
      sukiLevel: 1,
      birthday: '11月16日',
    ),
    '阿露': StudentInfoItem(
      signal: '什么都能解决哦！',
      sukiLevel: 1,
      birthday: '3月12日',
    ),
    '阿露（正月）': StudentInfoItem(
      signal: '今年也请多多指教',
      sukiLevel: 1,
      birthday: '3月12日',
    ),
    '睦月': StudentInfoItem(
      signal: '没有什么有趣的事吗～',
      sukiLevel: 1,
      birthday: '7月29日',
    ),
    '睦月（正月）': StudentInfoItem(
      signal: '让今年变成快乐的一年吧♪',
      sukiLevel: 1,
      birthday: '7月29日',
    ),
  };
}


// studentname is a key to get studentInfo


