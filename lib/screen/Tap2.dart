import 'package:flutter/material.dart';

import '../profile.dart';

class Tap2 extends StatefulWidget {
  const Tap2({super.key});

  @override
  State<Tap2> createState() => _Tap2State();
}

class _Tap2State extends State<Tap2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: Center(
      //   child: Container(
      //     child: Text('Screen 2'),
      //   ),
      // ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Hello,',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text(
                      'JOHN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [

                    Container(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => profile(),
              ),
            );
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xffE6E6E6),
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Color(0xffCCCCCC),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Your Orders',
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Buy Again',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Your Account',
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Your Wish List',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
