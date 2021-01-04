import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../application/sign_up/bloc.dart';
import '../../../../domain/entities/user/user.dart';
import '../../../../injection.dart';
import '../../../utils/extensions.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/text_field/rounded_outline_text_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _bloc = getIt<SignUpBloc>();

  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _validForm() {
    bool isFormValid = _formKey.currentState.validate();
    if (!isFormValid) return;
    final user = User(
      firstName: _firstNameController.text,
      lastName: _lastNameController.text,
      email: _emailController.text,
      password: _passwordController.text,
    );
    _bloc.signUp(user);
  }

  @override
  void initState() {
    super.initState();
    _bloc.listen(
      (state) {
        state.signUpState.fold(
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
              'Sign up',
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
                        controller: _firstNameController,
                        hint: 'FirstName',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icons.person,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppRoundedOutlineTextFormField(
                        controller: _lastNameController,
                        hint: 'LastName',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icons.person,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                        validator: (value) => value.isValidPassword &&
                                _passwordController.text ==
                                    _confirmPasswordController.text
                            ? null
                            : 'Please insert valid password!',
                        hint: 'Password',
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icons.lock_outline,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppRoundedOutlineTextFormField(
                        controller: _confirmPasswordController,
                        validator: (value) => value.isValidPassword &&
                                _passwordController.text ==
                                    _confirmPasswordController.text
                            ? null
                            : 'Please insert valid password!',
                        hint: 'Confirm Password',
                        obscureText: true,
                        prefixIcon: Icons.lock_outline,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      AppRoundedButton(
                        onPressed: _validForm,
                        title: 'Sign up',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      );

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
