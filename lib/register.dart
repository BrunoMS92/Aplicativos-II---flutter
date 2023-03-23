import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wale_financeiro/constants.dart';
import 'package:wale_financeiro/main.dart';
import 'package:wale_financeiro/widgets/app_text.dart';
import 'package:wale_financeiro/widgets/app_title.dart';
import 'package:wale_financeiro/widgets/input_text.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: AppColors.backColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.darkPurple,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  child: Wrap(
                    runSpacing: 20,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: AppTitle(
                              'Nova Conta',
                             )
                          ),
                          InputText(placeholder: 'Nome'),
                          InputText(placeholder: 'Email'),
                          InputText(placeholder: 'Senha'),
                          InputText(placeholder: 'Confirmar Senha'),
                          
                          Container(
                            width: double.infinity,
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              direction: Axis.horizontal,
                              children: [
                                AppText( 
                                'Ao criar uma conta você está aceitando nossos ',
                                 color: Colors.white.withOpacity(0.5),                         
                                ),
                                 AppText(
                                'Termos de Serviços e Política de Privacidade',
                                 color: Colors.blue,                         
                                )
                              ],
                            ),
                          ),

                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              print('Conta Criada');
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
                            child: Text('Criar Conta'),
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText('Já tem uma conta?    '),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: AppText(
                              'Entrar',
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
          ),
        );
  }
}
