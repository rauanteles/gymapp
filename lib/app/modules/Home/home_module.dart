import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/modules/Home/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    // TODO: implement binds
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const HomePage());
  }
}
