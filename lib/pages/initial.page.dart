import 'package:alexrogeriodj/controllers/cliente.controller.dart';
import 'package:alexrogeriodj/pages/dashboard.page.dart';
import 'package:alexrogeriodj/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clienteController = Provider.of<ClienteController>(context);

    return Observer(
      builder: (_) => Container(
        child: clienteController.cliente == null ? HomePage() : DashboardPage(),
      ),
    );
  }
}
