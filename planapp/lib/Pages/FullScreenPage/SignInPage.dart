import 'package:create_explore/Pages/PreviewPostPage.dart';
import 'package:create_explore/Provider/GoogleSignInProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:create_explore/Pages/SignUpPage.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context, listen: false);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return PreviewPostPage();
              } else {
                return SignUpPage();
              }
            },
          )),
    );
  }

  Widget buildLoading() => Center(child: CircularProgressIndicator());
}
