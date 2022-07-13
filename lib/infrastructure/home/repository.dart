import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login_app_task/core/constants.dart';

import 'model.dart';

final Dio _dio = Dio();

Future<AllUsers> allUsers() async {
  try {
    final response = await _dio.get(getUsers);
    return allUsersFromJson(json.encode(response.data));
  } catch (e) {
    rethrow;
  }
}
