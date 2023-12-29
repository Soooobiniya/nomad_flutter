import 'package:flutter/material.dart';

class WebtoonModel {
  final String title, thumb, id; // 제목, 썸네일, 아이디

  WebtoonModel.fromJson(Map<String, dynamic> json) // named constuntor
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
