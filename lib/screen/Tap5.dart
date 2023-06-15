import 'package:flutter/material.dart';

class Tap5 extends StatefulWidget {
  const Tap5({super.key});

  @override
  State<Tap5> createState() => _Tap5State();
}

class _Tap5State extends State<Tap5> {
  TextEditingController searchController = TextEditingController();
  //TextEditingController closeController = TextEditingController();
  void _showPopupMessage(String text) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert Box'),
            content: Text(text),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Okay',style:TextStyle(color: Colors.white,fontSize:20,))),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: TextField(
                  controller: searchController,
                 
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: () {
                     _showPopupMessage(searchController.text);
                  },
                  icon: Icon(Icons.search),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    searchController.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
                hintText: 'search...',
              ),
            ))),
      ),
      body: Center(
        child: Container(
          child: Text('screen 5'),
        ),
      ),
    );
  }
}
