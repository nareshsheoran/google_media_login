import 'package:flutter/material.dart';
import 'package:google_media_login/Shared/constant.dart';
import 'package:google_media_login/Shared/routes.dart';
import 'package:google_media_login/service/google_service/google_auth.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  signOutMethod(context) async {
    await signOut();
    Navigator.pushReplacementNamed(context, AppRoutes.HomePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: NetworkImage(Constant.img)),
            Text(Constant.name),
            Text(Constant.email),
            ElevatedButton(
                onPressed: () {
                  signOutMethod(context);
                },
                child: const Text("SignOut"))
          ],
        ),
      ),
    );
  }
}
