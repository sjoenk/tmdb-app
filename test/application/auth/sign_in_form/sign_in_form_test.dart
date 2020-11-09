import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:tmdb_app/domain/auth/auth_failure.dart';
import 'package:tmdb_app/domain/auth/i_auth_facade.dart';
import 'package:tmdb_app/domain/auth/value_objects.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  MockAuthFacade mockAuthFacade;

  setUp(() {
    mockAuthFacade = MockAuthFacade();
  });

  group('AuthenticationTest', () {
    final emailAddress = EmailAddress('info@test.com');
    final password = Password('test123');

    blocTest(
      'Register new user success',
      build: () {
        when(mockAuthFacade.registerWithEmailAndPassword(emailAddress: emailAddress, password: password)).thenAnswer(
          (_) async => right(unit),
        );

        return SignInFormBloc(mockAuthFacade);
      },
      act: (bloc) {
        bloc.add(EmailChanged(emailAddress.getOrCrash()));
        bloc.add(PasswordChanged(password.getOrCrash()));
        bloc.add(const RegisterWithEmailAndPasswordPressed());
      },
      expect: [
        SignInFormState(
          emailAddress: emailAddress,
          password: Password(""),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(right(unit)),
        ),
      ],
    );

    blocTest(
      'Register existing user failure',
      build: () {
        when(mockAuthFacade.registerWithEmailAndPassword(emailAddress: emailAddress, password: password)).thenAnswer(
          (_) async => left(const AuthFailure.emailAlreadyInUse()),
        );

        return SignInFormBloc(mockAuthFacade);
      },
      act: (bloc) {
        bloc.add(EmailChanged(emailAddress.getOrCrash()));
        bloc.add(PasswordChanged(password.getOrCrash()));
        bloc.add(const RegisterWithEmailAndPasswordPressed());
      },
      expect: [
        SignInFormState(
          emailAddress: emailAddress,
          password: Password(""),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(left(const AuthFailure.emailAlreadyInUse())),
        ),
      ],
    );

    blocTest(
      'Login user success',
      build: () {
        when(mockAuthFacade.signInWithEmailAndPassword(emailAddress: emailAddress, password: password)).thenAnswer(
          (_) async => right(unit),
        );

        return SignInFormBloc(mockAuthFacade);
      },
      act: (bloc) {
        bloc.add(EmailChanged(emailAddress.getOrCrash()));
        bloc.add(PasswordChanged(password.getOrCrash()));
        bloc.add(const SignInWithEmailAndPasswordPressed());
      },
      expect: [
        SignInFormState(
          emailAddress: emailAddress,
          password: Password(""),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(right(unit)),
        ),
      ],
    );

    blocTest(
      'Login user failure',
      build: () {
        when(mockAuthFacade.signInWithEmailAndPassword(emailAddress: emailAddress, password: password)).thenAnswer(
          (_) async => left(const AuthFailure.invalidEmailAndPasswordCombination()),
        );

        return SignInFormBloc(mockAuthFacade);
      },
      act: (bloc) {
        bloc.add(EmailChanged(emailAddress.getOrCrash()));
        bloc.add(PasswordChanged(password.getOrCrash()));
        bloc.add(const SignInWithEmailAndPasswordPressed());
      },
      expect: [
        SignInFormState(
          emailAddress: emailAddress,
          password: Password(""),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: emailAddress,
          password: password,
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(left(const AuthFailure.invalidEmailAndPasswordCombination())),
        ),
      ],
    );

    blocTest(
      'Login with Google success',
      build: () {
        when(mockAuthFacade.signInWithGoogle()).thenAnswer(
          (_) async => right(unit),
        );

        return SignInFormBloc(mockAuthFacade);
      },
      act: (bloc) {
        bloc.add(const SignInWithGooglePressed());
      },
      expect: [
        SignInFormState(
          emailAddress: EmailAddress(""),
          password: Password(""),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: EmailAddress(""),
          password: Password(""),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: some(right(unit)),
        ),
      ],
    );

    blocTest(
      'Login with Google failure',
      build: () {
        when(mockAuthFacade.signInWithGoogle()).thenAnswer(
          (_) async => left(const AuthFailure.cancelledByUser()),
        );

        return SignInFormBloc(mockAuthFacade);
      },
      act: (bloc) {
        bloc.add(const SignInWithGooglePressed());
      },
      expect: [
        SignInFormState(
          emailAddress: EmailAddress(""),
          password: Password(""),
          isSubmitting: true,
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
        SignInFormState(
          emailAddress: EmailAddress(""),
          password: Password(""),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: some(left(const AuthFailure.cancelledByUser())),
        ),
      ],
    );
  });
}
