import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wale_financeiro/widgets/app_text.dart';
import 'package:wale_financeiro/widgets/app_title.dart';
import 'package:wale_financeiro/widgets/input_text.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String email = '';
    String senha = '';

    // Variáveis

//TESTE
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 45, 82),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(48),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.20),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
             
  
              child: Column(
                children: [
                  
                  Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('images/logo.png')
                  ),

                  AppTitle('LOGIN'),
                  SizedBox(height: 20),
                  
                 TextField(
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

                  
                  SizedBox(height: 20),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    labelText: "Senha",
                  ),
                    onChanged: (text) {
                    senha = text;
                    //print("Password $text");
                  },
                  ),
                  
                  
                  SizedBox(height: 5),
                  SizedBox(
                    width: double.infinity,
                    child: AppText('Esqueceu sua senha?'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () { 
                        print('Entrar pressionado');},
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
                        child: Text('Entrar')
                        ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText('Não tem uma conta?'),
                      SizedBox(width: 6),
                      AppText('Criar conta',
                      
                      color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
