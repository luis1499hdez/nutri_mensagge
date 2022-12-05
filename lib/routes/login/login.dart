import 'package:flutter/material.dart';
import 'package:nutri_message_flutter/routes/feed/feedPage.dart';
import 'package:nutri_message_flutter/routes/login/login_controller.dart';
import 'package:nutri_message_flutter/routes/register/register.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login';
  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController();
  final _emailController = TextEditingController(text: 'enriqOki@email.com');
  final _passwordController = TextEditingController(text: '216555851');

  @override //se sobre escribe el método
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              //evitar linea amarilla, ajustar a pantalla
              child: Image.asset(
                'images/nutriM.png',
                height: 300.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            _userTextField(),
            SizedBox(
              height: 15,
            ),
            _passworddTextField(),
            SizedBox(
              height: 20.0,
            ),
            _bottonLogin(),
            _createTextField(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ));
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'ejemplo@dominio.com',
                labelText: 'Correo electronico')),
      );
      // TextField(
      //   controller: _passwordController,
      // );
    });
  }

  Widget _passworddTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
            controller: _passwordController,
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'contraseña',
                labelText: 'Contraseña')),
      );
      // TextField(
      //   controller: _emailController,
      // );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
          // elevation: 10.0,
          // colors: Color.fromARGB(255, 14, 35, 113),
          onPressed: () async {
            try {
              await _controller.singIn(
                  _emailController.text, _passwordController.text);
              Navigator.pushNamed(context, FeedPage.routeName);
            } catch (e) {
              // how to send a toast flutter
              print(e.toString());
            }
          });
    });
  }

  Widget _createTextField() {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, RegisterPage.routeName);
        },
        child: const Text(
          'Crear tu cuenta',
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
