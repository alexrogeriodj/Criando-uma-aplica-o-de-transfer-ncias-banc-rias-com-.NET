import 'package:alexrogeriodj/models/depositos/deposito.model.dart';
import 'package:alexrogeriodj/models/depositos/solicitar-deposito.model.dart';
import 'package:alexrogeriodj/repository/repository.dart';
import 'package:alexrogeriodj/settings.dart';
import 'package:dio/dio.dart';

class DepositoRepository extends Repository {
  Future<SolicitarDeposito> solicitarDeposito(
      SolicitarDeposito solicitarDeposito) async {
    var url = "${Settings.apiUrl}depositos/solicitar";
    var response = await Dio().post(url,
        data: solicitarDeposito, options: obterHeadersAutenticacao());
    return SolicitarDeposito.fromJson(response.data);
  }

  Future<List<Deposito>> obterMeusDepositos() async {
    var url = "${Settings.apiUrl}depositos/meus";
    var response = await Dio().get(url, options: obterHeadersAutenticacao());
    return (response.data as List)
        .map((deposito) => Deposito.fromJson(deposito))
        .toList();
  }
}
