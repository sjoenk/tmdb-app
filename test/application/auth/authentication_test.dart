import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/application/auth/auth_bloc.dart';
import 'package:tmdb_app/domain/auth/i_auth_facade.dart';
import 'package:tmdb_app/domain/auth/user.dart';
import 'package:tmdb_app/domain/core/value_objects.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  MockAuthFacade mockAuthFacade;

  setUp(() {
    mockAuthFacade = MockAuthFacade();
  });

  group('AuthenticationTest', () {
    final user = User(id: UniqueId.fromUniqueString("123"));

    blocTest(
      'Check logged in user is logged is true',
      build: () {
        when(mockAuthFacade.getSignedInUser()).thenAnswer(
          (_) async => optionOf(user),
        );

        return AuthBloc(mockAuthFacade);
      },
      act: (bloc) => bloc.add(const AuthCheckRequested()),
      expect: [
        const AuthState.authenticated(),
      ],
    );

    blocTest(
      'Check anonymous user is logged is false',
      build: () {
        when(mockAuthFacade.getSignedInUser()).thenAnswer(
          (_) async => optionOf(null),
        );

        return AuthBloc(mockAuthFacade);
      },
      act: (bloc) => bloc.add(const AuthCheckRequested()),
      expect: [
        const AuthState.unauthenticated(),
      ],
    );
  });
}
