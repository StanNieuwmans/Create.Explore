import 'package:create_explore/Provider/GoogleSignInProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          child: Container(
            child: OutlinedButton.icon(
              label: Text("Login to Google"),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.login();
              },
              icon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
