import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projet_tourisme/Utilisateur/User_One.dart';
import 'package:projet_tourisme/screens/home_screens.dart';
import 'package:projet_tourisme/screens/mesdonnes.dart';
import 'package:projet_tourisme/service_firebase/authenfirebase.dart';
import 'package:provider/provider.dart';
import 'Utilisateur/User_One.dart';
import 'package:projet_tourisme/Authenticate_Screen/inscription.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthenticationService().user,
      initialData: null,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Mes_donnees(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
