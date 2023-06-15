import 'package:flutter/material.dart';
class next1 extends StatefulWidget {
  const next1({super.key});

  @override
  State<next1> createState() => _next1State();
}

class _next1State extends State<next1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        width:500,
        height:500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(children: [
              Container(child: Text('\t\tList Of Product',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),)),
            ],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.book),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Books'),
                    ],
                  ),
                ),
                Spacer(),
                 Column(children: [
                 PopupMenuButton<String>(
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem<String>(
                                value: 'item1',
                                child: Text('The animals story for kids'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item2',
                                child: Text('comics books\'s'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('empower of women\'s'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('science of enginnering'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('scientist books'),
                              ),
                            ];
                          },
                          onSelected: (String value) {
                            print('Selected item: $value');
                          },
                        ),
              ],),
              ],),
            ),
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.toys),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Toys'),
                    ],
                  ),
                ),
                Spacer(),
                 Column(children: [
                 PopupMenuButton<String>(
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem<String>(
                                value: 'item1',
                                child: Text('Arts or Crafts'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item2',
                                child: Text('Barbie Doll'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Dolls'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Electronic toys'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text(' Cars and radio controlled'),
                              ),
                            ];
                          },
                          onSelected: (String value) {
                            print('Selected item: $value');
                          },
                        ),
              ],),
              ],),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.mobile_friendly),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(' Models of Mobile'),
                    ],
                  ),
                ),
                Spacer(),
                 Column(children: [
                 PopupMenuButton<String>(
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem<String>(
                                value: 'item1',
                                child: Text('Samsung Galaxy S23 '),
                              ),
                              PopupMenuItem<String>(
                                value: 'item2',
                                child: Text('iPhone 14 Pro'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Pixel 7 Pro'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('iPhone 14 Pro Max'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text(' Xiaomi 13 Pro '),
                              ),
                            ];
                          },
                          onSelected: (String value) {
                            print('Selected item: $value');
                          },
                        ),
              ],),
              ],),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.kitchen_outlined),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Kitchen Gadget'),
                    ],
                  ),
                ),
                Spacer(),
                 Column(children: [
                 PopupMenuButton<String>(
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem<String>(
                                value: 'item1',
                                child: Text('Plastic Items'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item2',
                                child: Text('Silver'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Stove'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('elctronic items'),
                              ),
                              
                            ];
                          },
                          onSelected: (String value) {
                            print('Selected item: $value');
                          },
                        ),
              ],),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.home_max_outlined),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Home Decoration'),
                    ],
                  ),
                ),
                Spacer(),
                 Column(children: [
                 PopupMenuButton<String>(
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem<String>(
                                value: 'item1',
                                child: Text('Wall prints'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item2',
                                child: Text('Clocks'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Table lamps'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Cushions'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Candles'),
                              ),
                              PopupMenuItem<String>(
                                value: 'item3',
                                child: Text('Art'),
                              ),
                            ];
                          },
                          onSelected: (String value) {
                            print('Selected item: $value');
                          },
                        ),
              ],),
              ],),
            ),
            Row(children: [
              Center(
                child: Container(
                 
                  width:100,
                  height: 30,
                  decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.purple)),
                              child: InkWell(
                                onTap: () {
                                  
                                },
                                child: Center(
                                  child: Text('Save',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200)),
                                ),
                              ),
                ),
              ),
            ],)
          ],),
        ),
        
      ),
     

    );
  }
}