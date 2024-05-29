import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/modules/Login/login_page.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {
    // TODO: implement binds
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const LoginPage());
  }
}
