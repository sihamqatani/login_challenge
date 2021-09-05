import 'package:flutter/material.dart';
import 'package:login_challenge/modules/sign_up/widgets/custom_button_view.dart';
import 'package:login_challenge/modules/sign_up/widgets/custom_text_from_field.dart';

class SignBody extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Let\'s Get Started !',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('Creat an account to get all features',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(wordSpacing: 2)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextView(
                controller: nameController,
                type: TextInputType.name,
                label: 'name',
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'you must Enter name';
                  }
                },
                prefix: Icons.person_outline,
                onSubmit: (value) {
                  if (formKey.currentState!.validate()) {
                    print('done');
                  }
                },
                onTap: () {},
                // color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextView(
                controller: emailController,
                label: 'Siham@gmail.com',
                type: TextInputType.emailAddress,
                prefix: Icons.email_outlined,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'you must enter email';
                  }
                },
                onSubmit: (value) {
                  if (formKey.currentState!.validate()) {
                    print('done');
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextView(
                controller: phoneController,
                label: 'phone',
                prefix: Icons.phone,
                type: TextInputType.phone,
                // suffix: Icons.remove_red_eye_outlined,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'you must enter phone';
                  }
                },
                onSubmit: (value) {
                  if (formKey.currentState!.validate()) {
                    print('done');
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextView(
                controller: passwordController,
                label: 'password',
                type: TextInputType.visiblePassword,
                prefix: Icons.lock_outline,
                validate: (value) {
                  if (value!.isEmpty) return 'you must enter password';
                },
                onSubmit: (value) {
                  if (formKey.currentState!.validate()) {
                    print('done');
                  }
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: CustomTextView(
                    controller: confirmPasswordController,
                    label: 'confirm password',
                    type: TextInputType.visiblePassword,
                    prefix: Icons.lock_outline,
                    onSubmit: (value) {
                      if (formKey.currentState!.validate()) {
                        print('done');
                      }
                    },
                    validate: (value) {
                      if (value!.isEmpty) return 'you must enter password';
                    })),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomButtonView(
                  text: 'SIGN UP',
                  onPreesed: () {},
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login here',
                      style: TextStyle(color: Colors.red[200]),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
