import 'dart:core';

import 'package:flutter/material.dart';

class Task {
  String name;
  String description;
  bool done;

  Task({
    @required this.name,
    this.description = '',
    this.done = false});

  void complete() {
    this.done = true;
  }

  // Item.fromJson(Map<String, dynamic> json) {
  //   name = json['name'];
  //   done = json['done'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   data['done'] = this.done;
  //   return data;
  // }
}
