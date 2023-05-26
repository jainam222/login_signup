import 'package:flutter/material.dart';
import '../widgets/textinput.dart';


class ForgotPassPage extends StatefulWidget {
  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(

              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?cs=srgb&dl=pexels-jacob-colvin-1761279.jpg&fm=jpg'),
                    colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                    fit: BoxFit.cover,
                  ),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 40,right: 40),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      child: const Center(
                        child: Text(
                          'FORGOT PASSWORD',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Please enter your email address. You will receive a link to create a new password.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const TextInput(
                                icon: Icons.mail,
                                hint: 'Email',
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                              ),
                              MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                onPressed: () {},
                                color: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Text(
                                  " SEND",
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

          );
  }
}