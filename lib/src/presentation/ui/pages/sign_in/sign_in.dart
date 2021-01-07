import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../application/sign_in/bloc.dart';
import '../../../../domain/entities/user/user.dart';
import '../../../../injection.dart';
import '../../../utils/extensions.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/text_fields/rounded_outline_text_field.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _bloc = getIt<SignInBloc>();

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _validForm() {
    bool isFormValid = _formKey.currentState.validate();
    if (!isFormValid) return;
    final user = User(
      email: _emailController.text,
      password: _passwordController.text,
    );
    _bloc.signIn(user);
  }

  @override
  void initState() {
    super.initState();
    _bloc.listen(
      (state) {
        state.signInState.fold(
          () => null,
          (either) => either.fold(
            (apiError) {
              print(apiError.message);
            },
            (apiResponse) {
              print(apiResponse.message);
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Sign in',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.black.withOpacity(.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              margin: const EdgeInsets.all(0),
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AppRoundedOutlineTextFormField(
                        controller: _emailController,
                        validator: (value) => value.isValidEmail
                            ? null
                            : 'Please insert valid email!',
                        hint: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icons.email_outlined,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppRoundedOutlineTextFormField(
                        controller: _passwordController,
                        validator: (value) => value.isValidPassword
                            ? null
                            : 'Please insert valid password!',
                        hint: 'Password',
                        obscureText: true,
                        prefixIcon: Icons.lock_outline,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      AppRoundedButton(
                        onPressed: _validForm,
                        title: 'Sign in',
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      );

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
