import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }
//////////////////////For every file
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('${path}/text.txt');
  }

  Future<String> readText() async {
    try {
      final file = await _localFile;

      // Read the file
      String contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return 'S';
    }
  }

  Future<File> writeText(String counter) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$counter');
  }
 ///////////////////////////////////
}

