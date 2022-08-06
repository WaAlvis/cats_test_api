import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:test_cats/models/cats_response.dart';

class CatsProvider extends ChangeNotifier {
  final String _baseUrl = 'https://api.thecatapi.com/v1/breeds';
  final String _apiKey = 'bda53789-d59e-46cd-9bc4-2936630fde39';

  List<CatsResponse> listCats = [];
  // List<Movie> popularMovies = [];
  // Map<int,List<Cast>> movieCast = {};
  int _Page = 0;

  CatsProvider() {
    print('MoviesProvider Inicializado...');
    this.getCatsList();
  }

  Future<String> _getJsonData(String endPoint,) async {
    Uri url = Uri.https(
      _baseUrl,
      endPoint,
      {
        'api_key': _apiKey,
      },
    );

    final response = await http.get(url);
    if(response.statusCode != 200) print('error en el servicio, $endPoint');
    return response.body;
  }

  getCatsList() async {

    String jsonData = await this._getJsonData('v1/breeds');

    final catsListResponse = CatsResponse.fromJson(jsonData);

    print(catsListResponse.name);
    print(catsListResponse.image);

    notifyListeners();
  }

}
