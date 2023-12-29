import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nomadcoder/models/webtoon_model.dart';

class ApiService {
  // static 이유 => 이 클래스에는 state가 없음
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http
        .get(url); // API 요청이 처리돼서 응답을 반환할 때까지 기다림 -> 이것을 async 프로그래밍이라 함
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
