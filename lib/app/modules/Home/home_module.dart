import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/modules/Home/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/homepage', child: ((context) => const HomePage()));
  }
}
