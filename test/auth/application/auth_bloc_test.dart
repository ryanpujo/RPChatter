import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_state.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FirebaseAuth>()])
void main() {
  late MockFirebaseAuth authenticator;

  setUp(() {
    authenticator = MockFirebaseAuth();
  });

  group("isAuthenticated event", () {
    blocTest(
      "should emit unauthenticated",
      build: () => AuthBloc(authenticator),
      act: (bloc) {
        bloc.add(const AuthEvent.isAuthenticated());
        when(authenticator.currentUser).thenReturn(null);
      },
      expect: () => <AuthState>[const AuthState.unAuthenticated()],
    );
  });
}
