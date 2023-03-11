import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ryan_pujo_app/firebase_options.dart';
import 'package:ryan_pujo_app/init.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_bloc.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/presentation/pages/sign_in_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  init();

  runApp(const MyApp());
}

final _route = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SignInPage(),
  )
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBlocBloc(locator<UserRepositoryContract>()),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        routerConfig: _route,
      ),
    );
  }
}
