import 'package:comic_book_aplication/src/features/models/comic_model.dart';
import 'package:comic_book_aplication/src/features/models/details_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ComicsProvider {
  String _apikey = '2819db11db4cc57354bf5fcc462d4a7afbdb5225';
  String _url = 'comicvine.gamespot.com/api';

  Future<List<Result>> getComics() async {
    final response = await http.get(
        'https://comicvine.gamespot.com/api/issues/?api_key=$_apikey&format=json');
    if (response.statusCode == 200) {
      var getResponse = Response.fromJson(json.decode(response.body));
      return getResponse.results;
    } else {
      throw Exception('Fallo');
    }
  }

  Future<ResultsDetail> getComicsDetails(String comicId) async {    
   
    final response = await http.get('$comicId?api_key=$_apikey&format=json');
    if (response.statusCode == 200) {
      var getResponse = Detail.fromJson(json.decode(response.body));
      return getResponse.results;
    } else {
      throw Exception('Fallo');
    }
  }
}
