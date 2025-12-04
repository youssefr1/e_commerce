import 'package:e_commerce/features/auth/presentation/screens/login_screen.dart';
import 'package:e_commerce/features/main_screen/presentation/main_screen.dart';
import 'package:e_commerce/features/product/presentation/screen/product_screen.dart';
import 'package:go_router/go_router.dart';


import '../../features/auth/presentation/screens/register_screen.dart';
import 'app_routing.dart';

class RouteGenerationConfig{
  static GoRouter goRouter =GoRouter(
      initialLocation:Approutes.loginScreen ,
      routes: [

        GoRoute(
          path:Approutes.loginScreen ,
          name:Approutes.loginScreen  ,
          builder: (context, state) => LoginScreen(),
        ),
        GoRoute(
          path:Approutes.registerScreen ,
          name:Approutes.registerScreen  ,
          builder: (context, state) => RegisterScreen(),
        ),
        GoRoute(
          path:Approutes.mainScreen ,
          name:Approutes.mainScreen  ,
          builder: (context, state) => MainScreen(),
        ),GoRoute(
          path:Approutes.productScreen ,
          name:Approutes.productScreen  ,
          builder: (context, state) => ProductScreen(),
        ),


      ]);
}