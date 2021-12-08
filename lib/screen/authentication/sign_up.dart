import 'package:flutter/material.dart';
import 'package:my_grades_app/wdgets/auth_form.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Sign up'),)
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            color: Color(0xFF006BFF),
            child: Stack(
              fit: StackFit.loose,
              overflow: Overflow.visible,
              children: [
                Container(
                  color: Color(0xFF006BFF),
                ),
                Positioned(
                  bottom: -MediaQuery.of(context).size.height * .325,
                  right: 0,
                  left: 0,
                  //MediaQuery.of(context).size.height*0.1,
                  //  height: 200,
                  // width: double.infinity,
                  // ignore: missing_required_param
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Column(
                        children: [
                          AuthForm(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
