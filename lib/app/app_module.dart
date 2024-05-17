import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/modules/Home/home_module.dart';
import 'package:gym/app/modules/Login/login_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}
  @override
  void routes(RouteManager r) {
    r.child('/', child: ((context) => const LoginPage()));
    r.module('/home', module: HomeModule());
    // r.redirect('/redirect', to: '/');
    //WildcardRoute(child: (context) => NotFoundPage());
  }
}
