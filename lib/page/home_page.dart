
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_media_login/service/google_service/google_auth.dart';
import 'package:google_media_login/Shared/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void checkUserLog() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final user = await auth.currentUser;

    if(user != null){
      Navigator.pushReplacementNamed(context, AppRoutes.DashBoardPage);
    }
  }

  signInMethod(context) async {
    await signInWithGoogle();

    Navigator.pushReplacementNamed(context, AppRoutes.DashBoardPage);
  }

  @override
  void initState() {
    checkUserLog();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("L"),
            SignInButton(Buttons.FacebookNew, onPressed: () {}),
            const SizedBox(height: 16),
            SignInButton(Buttons.Google, onPressed: () {
              signInMethod(context);
              signInWithGoogle();
            })
          ],
        ),
      ),
    );
  }
}
