
import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/screens/pushNamedAndRemoveUntil.dart';
import 'package:modulo_tres_navegacion/screens/loginPage.dart';
import 'package:modulo_tres_navegacion/screens/myHomePage.dart';
import 'package:modulo_tres_navegacion/screens/nowPlayingPage.dart';
import 'package:modulo_tres_navegacion/screens/playListPage.dart';
import 'package:modulo_tres_navegacion/screens/navigatorPop.dart';

const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAY_LIST = "/play_list";
const String ROUTE_NOW_PLAYING = "/now_playing";
const String ROUTE_NAVIGATOR_POP = "/navigatorPop";
const String ROUTE_PUSHNAMED = "/pushNamedAndRemoveUntil";

class MyRouters {

  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/home":
        return MaterialPageRoute(builder: (_)=>MyHomePage());
      case "/login":
        return MaterialPageRoute(builder: (_)=>LoginPage());
      case "/play_list":
        return MaterialPageRoute(builder: (_)=>PlayListPage());
      case "/now_playing":
        return MaterialPageRoute(builder: (_)=>NowPlayingPage());
      case "/navigatorPop":
        return MaterialPageRoute(builder: (_)=>NavigatorPop());
      case "/pushNamedAndRemoveUntil":
        return MaterialPageRoute(builder: (_)=>PushNamedAndRemoveUntil());
      default:
        return MaterialPageRoute(builder: (_)=>LoginPage());
    }
  }

}