import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header container
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
            height: deviceSize.height * 0.28,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'M',
                        style: TextStyle(fontSize: 50),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'John Brave',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          'Second class upper',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: deviceSize.height * 0.58,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //Phone number
                  ListTile(
                    title: Text(
                      'PHONE NO:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                    subtitle: Text(
                      '+1238087603763',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 2,
                  ),

                  //Email Address
                  ListTile(
                    title: Text(
                      'EMAIL ADDRESS:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                    subtitle: Text(
                      'moyonghomatthew@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 2,
                  ),

                  //Birth Info
                  ListTile(
                    title: Text(
                      'DOB:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                    subtitle: Text(
                      '15/09/1999',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 2,
                  ),
                  //Target gp
                  ListTile(
                    title: Text(
                      'TARGET GP:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                    subtitle: Text(
                      'Not set',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                  ),

                  Divider(
                    color: Colors.blueGrey,
                    thickness: 2,
                  ),
                  //School Info
                  ListTile(
                    title: Text(
                      'SCHOOL:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                    subtitle: Text(
                      'University of Nigeria, Nsukka',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
