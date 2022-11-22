import 'dart:developer';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news/utils/news.dart';

class GetDataProvider with ChangeNotifier {
  List<news> responseData = List<news>.empty(growable: true);

  bool isLoading = false;

  getMyData() async {
    isLoading = true;
    responseData = await getAllData();
    isLoading = false;
    notifyListeners();
  }

  Future<List<news>> getAllData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=plane&from=2022-10-21&sortBy=publishedAt&apiKey=f8d23c86fb5d4c90aa5c570fd18f370d"));
      if (response.statusCode == 200) {
        final items = json.decode(response.body);
        items['articles'].forEach((v) {
          responseData.add(news.fromJson(v));
        });
        notifyListeners();
      } else {
        print("else");
      }
    } catch (e) {
      log(e.toString());
    }

    return responseData;
  }
}
