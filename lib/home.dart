import 'package:flutter/material.dart';
import 'package:login_signup/screens/forgotpass.dart';
import 'package:login_signup/screens/login.dart';
import 'package:login_signup/screens/signup.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?cs=srgb&dl=pexels-jacob-colvin-1761279.jpg&fm=jpg'),
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 45, right: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Find new friends nearby',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'With millions of users all over the world, we give you the ability to connect with people no matter where you are.',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const Center(
                      child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignupPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrangeAccent),
                  child: const Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Center(
                child: Text(
                  'Or log in with',
                  style: TextStyle(color: Colors.white54),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.g_mobiledata_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
