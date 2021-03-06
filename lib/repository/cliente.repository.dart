import 'package:alexrogeriodj/models/clientes/cadastrar-cliente.model.dart';
import 'package:alexrogeriodj/models/clientes/cliente-autenticado.model.dart';
import 'package:alexrogeriodj/models/clientes/cliente-login.model.dart';
import 'package:alexrogeriodj/models/clientes/minha-conta.model.dart';
import 'package:alexrogeriodj/repository/repository.dart';
import 'package:alexrogeriodj/settings.dart';
import 'package:dio/dio.dart';

class ClienteRepository extends Repository {
  Future<ClienteAutenticado> cadastrar(CadastrarCliente cliente) async {
    var url = "${Settings.apiUrl}clientes/cadastrar";
    var response = await Dio().post(url, data: cliente);
    return ClienteAutenticado.fromJson(response.data);
  }

  Future<ClienteAutenticado> entrar(ClienteLogin cliente) async {
    var url = "${Settings.apiUrl}clientes/login";
    var response = await Dio().post(url, data: cliente);
    return ClienteAutenticado.fromJson(response.data);
  }

  Future<MinhaConta> obterMinhaConta() async {
    var url = "${Settings.apiUrl}contas/minha";
    var response = await Dio().get(url, options: obterHeadersAutenticacao());
    return MinhaConta.fromJson(response.data);
  }
}
