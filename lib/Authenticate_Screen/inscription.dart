import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:projet_tourisme/common/constante.dart';
import 'package:projet_tourisme/common/loading.dart';

class Inscription_page extends StatefulWidget {
  const Inscription_page({Key? key}) : super(key: key);

  @override
  _Inscription_pageState createState() => _Inscription_pageState();
}

class _Inscription_pageState extends State<Inscription_page> {
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSignIn = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(() {
      _formKey.currentState!.reset();
      error = '';
      emailController.text = '';
      passwordController.text = '';
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // loading
        //     ? Loading()
        //     :
        Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        elevation: 0.0,
        title: Text(
          showSignIn
              ? "Connectez-vous à MonHotel"
              : "Inscrivez-vous à MonHotel",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        actions: [
          TextButton.icon(
              onPressed: () => toggleView(),
              icon: Icon(Icons.person),
              label: Text(showSignIn ? "Se connecter" : "S'inscrire"))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  controller: emailController,
                  decoration:
                      textInputDecoration.copyWith(hintText: "Entrez un email"),
                  validator: (value) =>
                      value!.isEmpty ? "Entrer votre email" : null),
              SizedBox(height: 15),
              TextFormField(
                  controller: passwordController,
                  decoration: textInputDecoration.copyWith(
                      hintText: "Entrez un mot de passe"),
                  obscureText: true,
                  validator: (value) => value!.length < 4
                      ? "Entrer un mot de passe < 4 caractères"
                      : null),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                child: Text(
                  showSignIn ? "Connectez-vous" : "Inscrivez-vous",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() => loading = true);
                    var password = passwordController.value.text;
                    var email = emailController.value.text;
                    //Reservé pour l'appel de firebase

                    dynamic result = null;
                    if (result == null) {
                      setState(() {
                        loading = false;
                        error = 'Entrez svp un email valide';
                      });
                    }
                  }
                },
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
