import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold((failure) {
            FlushbarHelper.createError(
              message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) => 'Invalid email and password combination',
              ),
            ).show(context);
          }, (_) {
            ExtendedNavigator.of(context).replace(Routes.movieListPage);
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
          }),
        );
      },
      builder: (context, state) {
        final orientation = MediaQuery.of(context).orientation;
        return Form(
          autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Center(
            child: SizedBox(
              width: orientation == Orientation.landscape ? 450 : null,
              child: ListView(
                padding: const EdgeInsets.all(15.0),
                children: [
                  Image.asset(
                    'assets/tmdb_logo.png',
                    height: orientation == Orientation.landscape ? 100 : null,
                  ),
                  const SizedBox(height: 8.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => context.read<SignInFormBloc>().state.emailAddress.value.fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 8.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    autocorrect: false,
                    obscureText: true,
                    obscuringCharacter: '●',
                    onChanged: (value) => context.read<SignInFormBloc>().add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => context.read<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short Password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                                );
                          },
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: const Text('SIGN IN'),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent.registerWithEmailAndPasswordPressed(),
                                );
                          },
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: const Text('REGISTER'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  RaisedButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed(),
                          );
                    },
                    color: const Color.fromRGBO(66, 188, 201, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: const Text(
                      'SIGN IN WITH GOOGLE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (state.isSubmitting) ...[
                    const SizedBox(height: 8.0),
                    const LinearProgressIndicator(),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
