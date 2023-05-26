import 'package:flutter/material.dart';
import 'package:login_signup/screens/signup.dart';
import '../widgets/bgimage.dart';
import '../widgets/palette.dart';
import '../widgets/passwordinput.dart';
import '../widgets/textinput.dart';
import 'forgotpass.dart';

class LoginPage extends StatelessWidget {
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
                    height: 150,
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
                          children:  [
                            const TextInput(
                              icon: Icons.mail,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            const PasswordInput(
                              icon: Icons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassPage()));
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: kBodyText,
                              ),
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
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height:5),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                    bottom:
                                    BorderSide(color: Colors.white, width: 1),
                                  )),
                              child:  InkWell(
                                onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => SignupPage()));
                            },
                                child: Text(
                                  'CreateNewAccount',
                                  style: TextStyle(fontSize: 16,color: Colors.white),
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