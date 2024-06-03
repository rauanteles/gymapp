import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/modules/Signup/signup_page.dart';

class SignUpModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const SignupPage());
  }
}
