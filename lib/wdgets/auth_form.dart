import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Register',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                'Name',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
              )),
              prefixIcon: Icon(Icons.account_circle_rounded,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                'Email',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
              )),
              prefixIcon: Icon(Icons.email_outlined,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                'Password',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
              )),
              prefixIcon: Icon(Icons.vpn_key_outlined,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            child: Container(
              child: Text(
                'Register',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Or')],
          ),
          SizedBox(height: 15),
          GestureDetector(
            child: Container(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1)),
            ),
          ),
        ],
      )),
    );
  }
}
