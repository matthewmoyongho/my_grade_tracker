import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/auth_form.dart';

class SignInScreen extends StatelessWidget {
  void _trySignIn(
      String username, String usermail, String userPassword, BuildContext ctx) {
    Navigator.pushNamed(ctx, kOverviewScreenRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Sign up'),)
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              //color: Color(0xFF006BFF),
              child: Stack(
                fit: StackFit.loose,
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Container(
                      color: Colors.blue[900],
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    //bottom: -MediaQuery.of(context).size.height * .325,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    //MediaQuery.of(context).size.height*0.1,
                    //  height: 200,
                    // width: double.infinity,
                    // ignore: missing_required_param
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.65,
                        padding: EdgeInsets.symmetric(),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              )
                            ]),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                            child: Column(
                              children: [
                                AuthForm(
                                  isLogin: true,
                                  navCallBack: () => Navigator.of(context)
                                      .pushReplacementNamed(kSignUpScreenRoute),
                                  submit: _trySignIn,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
