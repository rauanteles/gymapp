import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/modules/Users/users_page.dart';

class UserModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: ((context) => const UsersPage()));
  }
}
