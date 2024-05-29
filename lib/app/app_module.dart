import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym/app/modules/Home/home_module.dart';
import 'package:gym/app/modules/Login/login_module.dart';
import 'package:gym/app/modules/Splash/splash_page.dart';
import 'package:gym/app/modules/Users/users_module.dart';
import 'package:gym/app/modules/Signup/signup_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}
  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const SplashPage());
    r.module('/login', module: LoginModule());
    r.module('/users', module: UserModule());
    r.module('/signup', module: SignUpModule());
    r.module('/home', module: HomeModule());
  }
}
