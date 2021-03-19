import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        onTap: () {},
        child: Ink(
          color: Color(0xFF397AF3),
          child: Padding(
            padding: EdgeInsets.all(6),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_x-1JPnyWX39A-6G5V-rXsDlH07svvCD6BA&usqp=CAU',
                  fit: BoxFit.fill,
                  height: 30.0,
                ),
                SizedBox(width: 12),
                Text('Sign in with Google'),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
