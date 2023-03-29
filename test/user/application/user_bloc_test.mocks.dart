// Mocks generated by Mockito 5.3.2 from annotations
// in ryan_pujo_app/test/user/application/user_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:dartz/dartz.dart' as _i2;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    as _i4;
import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart' as _i8;
import 'package:ryan_pujo_app/user/domain/user.dart' as _i9;
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart'
    as _i6;
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart' as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFirebaseApp_1 extends _i1.SmartFake implements _i3.FirebaseApp {
  _FakeFirebaseApp_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeActionCodeInfo_2 extends _i1.SmartFake
    implements _i4.ActionCodeInfo {
  _FakeActionCodeInfo_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserCredential_3 extends _i1.SmartFake
    implements _i5.UserCredential {
  _FakeUserCredential_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeConfirmationResult_4 extends _i1.SmartFake
    implements _i5.ConfirmationResult {
  _FakeConfirmationResult_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserRepositoryContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepositoryContract extends _i1.Mock
    implements _i6.UserRepositoryContract {
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.User>> registerUser(
          _i10.UserDto? dto) =>
      (super.noSuchMethod(
        Invocation.method(
          #registerUser,
          [dto],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, _i9.User>>.value(
            _FakeEither_0<_i8.Failure, _i9.User>(
          this,
          Invocation.method(
            #registerUser,
            [dto],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Either<_i8.Failure, _i9.User>>.value(
                _FakeEither_0<_i8.Failure, _i9.User>(
          this,
          Invocation.method(
            #registerUser,
            [dto],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i9.User>>);
  @override
  _i7.Future<bool> isUsernameAvailable(String? username) => (super.noSuchMethod(
        Invocation.method(
          #isUsernameAvailable,
          [username],
        ),
        returnValue: _i7.Future<bool>.value(false),
        returnValueForMissingStub: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.User>> getByUsername(
          String? username) =>
      (super.noSuchMethod(
        Invocation.method(
          #getByUsername,
          [username],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, _i9.User>>.value(
            _FakeEither_0<_i8.Failure, _i9.User>(
          this,
          Invocation.method(
            #getByUsername,
            [username],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Either<_i8.Failure, _i9.User>>.value(
                _FakeEither_0<_i8.Failure, _i9.User>(
          this,
          Invocation.method(
            #getByUsername,
            [username],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i9.User>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.User>>> getUsers() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUsers,
          [],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, List<_i9.User>>>.value(
            _FakeEither_0<_i8.Failure, List<_i9.User>>(
          this,
          Invocation.method(
            #getUsers,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Either<_i8.Failure, List<_i9.User>>>.value(
                _FakeEither_0<_i8.Failure, List<_i9.User>>(
          this,
          Invocation.method(
            #getUsers,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i9.User>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>> update(_i10.UserDto? dto) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [dto],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i8.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #update,
            [dto],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>>.value(
                _FakeEither_0<_i8.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #update,
            [dto],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>> delete(String? username) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [username],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i8.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #delete,
            [username],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>>.value(
                _FakeEither_0<_i8.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #delete,
            [username],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i2.Unit>>);
}

/// A class which mocks [FirebaseAuth].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseAuth extends _i1.Mock implements _i5.FirebaseAuth {
  @override
  _i3.FirebaseApp get app => (super.noSuchMethod(
        Invocation.getter(#app),
        returnValue: _FakeFirebaseApp_1(
          this,
          Invocation.getter(#app),
        ),
        returnValueForMissingStub: _FakeFirebaseApp_1(
          this,
          Invocation.getter(#app),
        ),
      ) as _i3.FirebaseApp);
  @override
  set app(_i3.FirebaseApp? _app) => super.noSuchMethod(
        Invocation.setter(
          #app,
          _app,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set tenantId(String? tenantId) => super.noSuchMethod(
        Invocation.setter(
          #tenantId,
          tenantId,
        ),
        returnValueForMissingStub: null,
      );
  @override
  Map<dynamic, dynamic> get pluginConstants => (super.noSuchMethod(
        Invocation.getter(#pluginConstants),
        returnValue: <dynamic, dynamic>{},
        returnValueForMissingStub: <dynamic, dynamic>{},
      ) as Map<dynamic, dynamic>);
  @override
  _i7.Future<void> useEmulator(String? origin) => (super.noSuchMethod(
        Invocation.method(
          #useEmulator,
          [origin],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> useAuthEmulator(
    String? host,
    int? port,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #useAuthEmulator,
          [
            host,
            port,
          ],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> applyActionCode(String? code) => (super.noSuchMethod(
        Invocation.method(
          #applyActionCode,
          [code],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<_i4.ActionCodeInfo> checkActionCode(String? code) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkActionCode,
          [code],
        ),
        returnValue: _i7.Future<_i4.ActionCodeInfo>.value(_FakeActionCodeInfo_2(
          this,
          Invocation.method(
            #checkActionCode,
            [code],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i4.ActionCodeInfo>.value(_FakeActionCodeInfo_2(
          this,
          Invocation.method(
            #checkActionCode,
            [code],
          ),
        )),
      ) as _i7.Future<_i4.ActionCodeInfo>);
  @override
  _i7.Future<void> confirmPasswordReset({
    required String? code,
    required String? newPassword,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #confirmPasswordReset,
          [],
          {
            #code: code,
            #newPassword: newPassword,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<_i5.UserCredential> createUserWithEmailAndPassword({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createUserWithEmailAndPassword,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #createUserWithEmailAndPassword,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #createUserWithEmailAndPassword,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<List<String>> fetchSignInMethodsForEmail(String? email) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchSignInMethodsForEmail,
          [email],
        ),
        returnValue: _i7.Future<List<String>>.value(<String>[]),
        returnValueForMissingStub: _i7.Future<List<String>>.value(<String>[]),
      ) as _i7.Future<List<String>>);
  @override
  _i7.Future<_i5.UserCredential> getRedirectResult() => (super.noSuchMethod(
        Invocation.method(
          #getRedirectResult,
          [],
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #getRedirectResult,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #getRedirectResult,
            [],
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  bool isSignInWithEmailLink(String? emailLink) => (super.noSuchMethod(
        Invocation.method(
          #isSignInWithEmailLink,
          [emailLink],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i7.Stream<_i5.User?> authStateChanges() => (super.noSuchMethod(
        Invocation.method(
          #authStateChanges,
          [],
        ),
        returnValue: _i7.Stream<_i5.User?>.empty(),
        returnValueForMissingStub: _i7.Stream<_i5.User?>.empty(),
      ) as _i7.Stream<_i5.User?>);
  @override
  _i7.Stream<_i5.User?> idTokenChanges() => (super.noSuchMethod(
        Invocation.method(
          #idTokenChanges,
          [],
        ),
        returnValue: _i7.Stream<_i5.User?>.empty(),
        returnValueForMissingStub: _i7.Stream<_i5.User?>.empty(),
      ) as _i7.Stream<_i5.User?>);
  @override
  _i7.Stream<_i5.User?> userChanges() => (super.noSuchMethod(
        Invocation.method(
          #userChanges,
          [],
        ),
        returnValue: _i7.Stream<_i5.User?>.empty(),
        returnValueForMissingStub: _i7.Stream<_i5.User?>.empty(),
      ) as _i7.Stream<_i5.User?>);
  @override
  _i7.Future<void> sendPasswordResetEmail({
    required String? email,
    _i4.ActionCodeSettings? actionCodeSettings,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendPasswordResetEmail,
          [],
          {
            #email: email,
            #actionCodeSettings: actionCodeSettings,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> sendSignInLinkToEmail({
    required String? email,
    required _i4.ActionCodeSettings? actionCodeSettings,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendSignInLinkToEmail,
          [],
          {
            #email: email,
            #actionCodeSettings: actionCodeSettings,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> setLanguageCode(String? languageCode) => (super.noSuchMethod(
        Invocation.method(
          #setLanguageCode,
          [languageCode],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> setSettings({
    bool? appVerificationDisabledForTesting,
    String? userAccessGroup,
    String? phoneNumber,
    String? smsCode,
    bool? forceRecaptchaFlow,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setSettings,
          [],
          {
            #appVerificationDisabledForTesting:
                appVerificationDisabledForTesting,
            #userAccessGroup: userAccessGroup,
            #phoneNumber: phoneNumber,
            #smsCode: smsCode,
            #forceRecaptchaFlow: forceRecaptchaFlow,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> setPersistence(_i4.Persistence? persistence) =>
      (super.noSuchMethod(
        Invocation.method(
          #setPersistence,
          [persistence],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<_i5.UserCredential> signInAnonymously() => (super.noSuchMethod(
        Invocation.method(
          #signInAnonymously,
          [],
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInAnonymously,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInAnonymously,
            [],
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<_i5.UserCredential> signInWithCredential(
          _i4.AuthCredential? credential) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithCredential,
          [credential],
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithCredential,
            [credential],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithCredential,
            [credential],
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<_i5.UserCredential> signInWithCustomToken(String? token) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithCustomToken,
          [token],
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithCustomToken,
            [token],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithCustomToken,
            [token],
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<_i5.UserCredential> signInWithEmailAndPassword({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithEmailAndPassword,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithEmailAndPassword,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithEmailAndPassword,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<_i5.UserCredential> signInWithEmailLink({
    required String? email,
    required String? emailLink,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithEmailLink,
          [],
          {
            #email: email,
            #emailLink: emailLink,
          },
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithEmailLink,
            [],
            {
              #email: email,
              #emailLink: emailLink,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithEmailLink,
            [],
            {
              #email: email,
              #emailLink: emailLink,
            },
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<_i5.UserCredential> signInWithAuthProvider(
          _i4.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithAuthProvider,
          [provider],
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithAuthProvider,
            [provider],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithAuthProvider,
            [provider],
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<_i5.UserCredential> signInWithProvider(
          _i4.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithProvider,
          [provider],
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithProvider,
            [provider],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithProvider,
            [provider],
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<_i5.ConfirmationResult> signInWithPhoneNumber(
    String? phoneNumber, [
    _i5.RecaptchaVerifier? verifier,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithPhoneNumber,
          [
            phoneNumber,
            verifier,
          ],
        ),
        returnValue:
            _i7.Future<_i5.ConfirmationResult>.value(_FakeConfirmationResult_4(
          this,
          Invocation.method(
            #signInWithPhoneNumber,
            [
              phoneNumber,
              verifier,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.ConfirmationResult>.value(_FakeConfirmationResult_4(
          this,
          Invocation.method(
            #signInWithPhoneNumber,
            [
              phoneNumber,
              verifier,
            ],
          ),
        )),
      ) as _i7.Future<_i5.ConfirmationResult>);
  @override
  _i7.Future<_i5.UserCredential> signInWithPopup(_i4.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithPopup,
          [provider],
        ),
        returnValue: _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithPopup,
            [provider],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i5.UserCredential>.value(_FakeUserCredential_3(
          this,
          Invocation.method(
            #signInWithPopup,
            [provider],
          ),
        )),
      ) as _i7.Future<_i5.UserCredential>);
  @override
  _i7.Future<void> signInWithRedirect(_i4.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithRedirect,
          [provider],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<String> verifyPasswordResetCode(String? code) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyPasswordResetCode,
          [code],
        ),
        returnValue: _i7.Future<String>.value(''),
        returnValueForMissingStub: _i7.Future<String>.value(''),
      ) as _i7.Future<String>);
  @override
  _i7.Future<void> verifyPhoneNumber({
    String? phoneNumber,
    _i4.PhoneMultiFactorInfo? multiFactorInfo,
    required _i4.PhoneVerificationCompleted? verificationCompleted,
    required _i4.PhoneVerificationFailed? verificationFailed,
    required _i4.PhoneCodeSent? codeSent,
    required _i4.PhoneCodeAutoRetrievalTimeout? codeAutoRetrievalTimeout,
    String? autoRetrievedSmsCodeForTesting,
    Duration? timeout = const Duration(seconds: 30),
    int? forceResendingToken,
    _i4.MultiFactorSession? multiFactorSession,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyPhoneNumber,
          [],
          {
            #phoneNumber: phoneNumber,
            #multiFactorInfo: multiFactorInfo,
            #verificationCompleted: verificationCompleted,
            #verificationFailed: verificationFailed,
            #codeSent: codeSent,
            #codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
            #autoRetrievedSmsCodeForTesting: autoRetrievedSmsCodeForTesting,
            #timeout: timeout,
            #forceResendingToken: forceResendingToken,
            #multiFactorSession: multiFactorSession,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}
