import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_lazy_bug/app/app_widget.dart';
import 'package:flutter_modular_lazy_bug/app/modules/home/home_module.dart';
import 'package:flutter_modular_lazy_bug/app/services/some_service.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<ISomeService>((i) => SomeService(), lazy: false),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
