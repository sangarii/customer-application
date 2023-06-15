import 'package:flutter/material.dart';
import 'package:sample_application/edit_profile.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: 
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Color.fromARGB(29, 96, 125, 139),
                  width: 410,
                  height: 40,
                  child: Text(
                    'This is your private view',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            
            Row(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(128, 96, 125, 139),
                                  radius: 40,
                                  child: Center(
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  'JOHN DOE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 150,
                                  color: Colors.amber,
                                  // margin: const EdgeInsets.all(15.0),
                                  // padding: const EdgeInsets.all(3.0),
                                  // decoration: BoxDecoration(

                                  //   borderRadius: BorderRadius.all(
                                  //     Radius.circular(10.0),

                                  //   ),
                                  // ),
                                  child: Center(
                                      child: Text(
                                    'Create review',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 150,
                                  margin: const EdgeInsets.all(15.0),
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueGrey),
                                    // borderRadius: BorderRadius.all(
                                    //   Radius.circular(10.0),
                                    // ),
                                  ),
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => edit_profile(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Edit your profile',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  )),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  width: 500,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('0'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Helpful votes'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('0'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Followers'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('0'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Following'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            Padding(padding: EdgeInsets.all(30))
          ],
        ),
      ),
    );
  }
}
