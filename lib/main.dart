import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';
import 'package:ryan_pujo_app/auth/presentation/sign_in_page.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_event.dart';
import 'package:ryan_pujo_app/core/connection_status.dart';
import 'package:ryan_pujo_app/firebase_options.dart';
import 'package:ryan_pujo_app/init.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_bloc.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/presentation/pages/user_register_form.dart';

import 'auth/application/bloc/auth_state.dart' as auth;
import 'auth/presentation/verification_page.dart';
import 'user/presentation/pages/homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  init();
  ConnectionStatus.instance.initialize();
  runApp(const MyApp());
}

final _route = GoRouter(
  routes: [
    GoRoute(
      name: "homepage",
      path: "/homepage",
      builder: (context, state) => Homepage(),
    ),
    GoRoute(
        path: "/email-verification",
        pageBuilder: (context, state) =>
            const MaterialPage(child: VerificationPage())),
    GoRoute(
      path: "/",
      builder: (context, state) => const SignInPage(),
      routes: [
        GoRoute(
          path: "register-page",
          builder: (context, state) => const UserRegisterForm(),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => UserBlocBloc(
                locator<UserRepositoryContract>(), locator<FirebaseAuth>())),
        BlocProvider(
          create: (context) => AuthBloc(
              locator<FirebaseAuth>(), locator<UserRepositoryContract>())
            ..add(const AuthEvent.checkAuthentication()),
        ),
        BlocProvider(
          create: (context) => ConnectionStatusBloc(ConnectionStatus.instance)
            ..add(const ConnectionStatusEvent.startCheckConnection()),
        )
      ],
      child: BlocListener<AuthBloc, auth.AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            authenticated: (value) => _route.go("/homepage"),
            unAuthenticated: (value) => _route.go("/"),
            unVerified: (value) => _route.go("/email-verification"),
          );
        },
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          routerConfig: _route,
        ),
      ),
    );
  }
}
