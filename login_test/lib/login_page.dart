import 'package:flutter/material.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  TextStyle header_style = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  BoxDecoration box_decoration = BoxDecoration(
    color: Colors.grey[200],
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(12),
  );

  ///Controllers
  ///final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              //Hello
              Text(
                'Login',
                style: header_style,
              ),
              const SizedBox(height: 10),
              const Text('Welcome to Braintech'),
              const SizedBox(height: 20),

              ///TextField Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: box_decoration,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                ),
              ),

              ///TextField Password
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: box_decoration,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      // controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Password'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ///Sing in Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

                      Center(
                        child: ElevatedButton(
                          child: const Text('Open route'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MainPage()),
                            );
                          },
                        ),
                      ),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(' Register now',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold))
                ],
              )
            ]))),
      ),
    );
  }
}
