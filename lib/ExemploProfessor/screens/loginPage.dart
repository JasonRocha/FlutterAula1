import 'package:aula7/models/userModel.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<UserModel?> _cadUser() async {
    var user = await Navigator.of(context).pushNamed("/newUser");

    if(!mounted)
      return null;

    print(user);

    return user as UserModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.security, color: Colors.red,),
              SizedBox(height: 50,),
              Text("Bem vindo ao sistema!"),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Não possuí acesso?"),
                  TextButton(onPressed: () {
                    _cadUser().then((value) {
                      if (value == null)
                        return;

                      print("Usuário: ${value!.nome}");
                      print("E-mail: ${value!.email}");
                    });
                  }, child: Text("Cadastre-se"))
                ],
              )
            ],
          ),
        ),
      ),
    );;
  }
}
