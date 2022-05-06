import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:convert';
import '../models/new.dart';
//import './product.dart';
import 'package:http/http.dart' as http;

class NewsProvider with ChangeNotifier {
  List<New> items = [];
// var _showFavoritesOnly = false;

  NewsProvider();

  Future<void> fetchNews() async {
    final response = await http.get(
      Uri.parse(
          'https://api.collectapi.com/news/getNews?country=tr&tag=general'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader:
            'apikey 7MmG12tfHSCQRqv5roCDKy:1Jpmp1KRtIcABRehxmt87Y',
      },
    );

    final extractedData = jsonDecode(response.body) as Map<String, dynamic>;

    //  print(extractedData.toString());

    // print(extractedData['result']);
    List<dynamic> list = extractedData['result'];

    /*  var url = Uri.https(
        'api.collectapi.com', '/news/getNews?country=tr&tag=general', {
      'authorization': 'apikey 7MmG12tfHSCQRqv5roCDKy:1Jpmp1KRtIcABRehxmt87Y'
    });*/

    try {
      // final response = await http.get(url);
      // final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }

      final List<New> loadNews = [];
      //print(newData['name']);

      list.forEach((newData) {
        print(newData['name']);
        loadNews.add(
          New(
            key: newData['key'],
            url: newData['url'],
            description: newData['description'],
            image: newData['image'],
            name: newData['name'],
            source: newData['source'],
          ),
        );
      });
      items = loadNews;
      print(items.length);
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
