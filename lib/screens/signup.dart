import 'package:flutter/material.dart';
import '../widgets/bgimage.dart';
import '../widgets/palette.dart';
import '../widgets/passwordinput.dart';
import '../widgets/textinput.dart';
import 'forgotpass.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 120,
                    child: const Center(
                      child: Text(
                        'Welcome  back',
                        style: kHeading,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:  const [
                            TextInput(
                              icon: Icons.mail,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: Icons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            PasswordInput(
                              icon: Icons.lock,
                              hint: 'Confirm Password',
                              inputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 80,
                            ),
                            MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {},
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}