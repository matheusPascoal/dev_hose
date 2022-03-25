import 'dart:convert';

import 'package:dev_house/model/pessoa_model.dart';
import 'package:dio/dio.dart';

class PessoaRepository {
  Future<List<PessoaModel>> getUsers() async {
    var result = await Dio().get(
        'https://cd1cd733-c658-40d9-9754-c42afc36ef88.mock.pstmn.io/users');
    if (result.statusCode == 200) {
      var decode = json.decode(result.data);
      return decode['users']
          .map<PessoaModel>((e) => PessoaModel.fromJson(e))
          .toList();
    }
    return <PessoaModel>[];
  }
}
