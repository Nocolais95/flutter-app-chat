import 'package:chat_app/pages/Users_page.dart';
import 'package:chat_app/pages/loading_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:flutter/cupertino.dart';

import '../pages/chat_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'users': (_) => UsersPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'loading': (_) => LoadingPage(),
  'register': (_) => RegisterPage(),
};
