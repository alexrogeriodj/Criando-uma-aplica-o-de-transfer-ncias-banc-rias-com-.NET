import 'package:alexrogeriodj/controllers/cadastrar-cliente.controller.dart';
import 'package:alexrogeriodj/controllers/cliente.controller.dart';
import 'package:alexrogeriodj/controllers/dashboard.controller.dart';
import 'package:alexrogeriodj/controllers/depositos.controller.dart';
import 'package:alexrogeriodj/controllers/login.controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class DependencyInjector {
  static List<SingleChildWidget> obterDependencias() {
    return <SingleChildWidget>[
      Provider<ClienteController>(create: (_) => ClienteController()),
      Provider<CadastrarClienteController>(
          create: (_) => CadastrarClienteController()),
      Provider<LoginController>(create: (_) => LoginController()),
      Provider<DashboardController>(create: (_) => DashboardController()),
      Provider<DepositosController>(create: (_) => DepositosController()),
    ];
  }
}
