import 'package:flutter/material.dart';
import 'package:projet_tourisme/Authenticate_Screen/inscription.dart';
import 'package:projet_tourisme/Utilisateur/User_One.dart';
import 'package:projet_tourisme/screens/Home_Screens.dart';
import 'package:provider/provider.dart';

class Mes_donnees extends StatelessWidget {
  const Mes_donnees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return Inscription_page();
    } else {
      return HomScreen();
    }
  }
}
