import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  bool isLogin;
  Function(String name, String usermail, String password, BuildContext context)
      submit;
  Function? navCallBack;
  AuthForm({required this.isLogin, required this.submit, this.navCallBack});
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  bool obscurePassword = true;
  String? _userName;
  String? _userMail;
  String? _password;
  final _formKey = GlobalKey<FormState>();
  void submit() {
    var _formState = _formKey.currentState!;
    // _formState.validate()
    _formState.save();
    widget.submit(
        _userName!.trim(), _userMail!.trim(), _password!.trim(), context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.isLogin == true ? 'Login' : 'Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              widget.isLogin == true
                  ? SizedBox.shrink()
                  : TextFormField(
                      onSaved: (val) => _userName = val,
                      validator: (value) =>
                          value!.isEmpty ? 'enter a name' : null,
                      decoration: InputDecoration(
                        label: Text(
                          'Name',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
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
              SizedBox(height: 10),
              TextFormField(
                onSaved: (val) => _userMail = val,
                validator: (value) => value!.isEmpty || !value.contains('@')
                    ? 'enter a valid email'
                    : null,
                keyboardType: TextInputType.emailAddress,
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
              SizedBox(height: 10),
              TextFormField(
                obscureText: obscurePassword,
                onSaved: (val) => _password = val,
                validator: (value) => value!.isEmpty || value.length < 6
                    ? 'enter a valid password'
                    : null,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {
                      obscurePassword = !obscurePassword;
                    }),
                    child: Icon(
                        obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColor),
                  ),
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
              SizedBox(height: 20),
              GestureDetector(
                onTap: submit,
                child: Container(
                  child: Text(
                    widget.isLogin == true ? 'Login' : 'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.05,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('- - - - - - - - - - - -'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Or'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('- - - - - - - - - - - -'),
                ],
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: widget.navCallBack as void Function()?,
                child: Container(
                  child: Text(
                    widget.isLogin == true ? 'Register' : 'Login',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.05,
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
