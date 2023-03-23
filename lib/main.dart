import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wale_financeiro/constants.dart';
import 'package:wale_financeiro/register.dart';
import 'package:wale_financeiro/routes.dart';
import 'package:wale_financeiro/widgets/app_text.dart';
import 'package:wale_financeiro/widgets/app_title.dart';
import 'package:wale_financeiro/widgets/input_text.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static String routeName = '/login';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    String email = '';
    String senha = '';

    // Variáveis

    return Scaffold(
        backgroundColor: AppColors.backColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
                child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.darkPurple,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('images/logo.png')),
                      Container(
                        child: AppTitle('LOGIN'),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "E-mail",
                          ),
                          onChanged: (text) {
                            if (text.contains('@')) {
                              print('Email válido');
                            } else {
                              print('Email inválido');
                            }
                            email = text;
                            //print(text);
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Senha",
                          ),
                          onChanged: (text) {
                            senha = text;
                            //print("Password $text");
                          },
                        ),
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: AppText('Esqueceu sua senha?'),
                        ),
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 30),
                          child: TextButton(
                              onPressed: () {
                                print('Entrar pressionado');
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.black,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 20,
                                ),
                                textStyle: TextStyle(
                                  fontSize: 24,
                                ),
                                backgroundColor: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text('Entrar')),
                        ),
                      ),

                      //Botão Criar conta
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText('Não tem uma conta?    '),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, RegisterScreen.routeName);
                            },
                            child: AppText(
                              'Criar Conta',
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
        );
  }
}
