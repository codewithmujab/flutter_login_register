import 'package:flutter/material.dart';
import 'package:flutter_login_register/forgot_page.dart';
import 'package:flutter_login_register/page/home_page.dart';
import 'package:flutter_login_register/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Silahkan masukkan email dan kata sandi yang sudah terdaftar.',
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Alamat Email',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Kata Sandi',
                  ),
                  obscureText: true,
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              //fortgot password
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ForgotPage(),
                    ),
                  );
                },
                child: const Text(
                  'Lupa Kata Sandi?',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //goto home page
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: const Text('Buat Akun Baru'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
