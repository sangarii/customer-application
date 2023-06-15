import 'package:flutter/material.dart';

import 'package:sample_application/next1.dart';
import 'package:sample_application/table.dart';
import 'constant.dart';

List<String> cities = [
  'Chennai',
  'Mumbai',
  'Bangalore',
  'Madurai',
  'Hosur',
  'Kolkata'
];

// String? _selectedCity;

class Customer {
  final String firstname;
  final String additionname;
  final String lastname;
  final String password;
  final String mobileno;
  final String email;
  final String gender;
  final String address;
  final String city;
  final String bio;
  final String location;

  Customer({
    required this.firstname,
    required this.additionname,
    required this.lastname,
    required this.password,
    required this.mobileno,
    required this.email,
    required this.gender,
    required this.address,
    required this.city,
    required this.bio,
    required this.location,
  });
}

class edit_profile extends StatefulWidget {
  const edit_profile({super.key});

  @override
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  final _formKey = GlobalKey<FormState>();
  late String _fname;
  late String _aname;
  late String _lname;
  late String _password;
  late String _mnumber;
  late String _email;
  late String _gender = '';
  //  late String _selectedCity = ' ';
  String? _selectedCity = cities.isNotEmpty ? cities[0] : null;
  // // String? _selectedCity = '';

  late String _address;
  //late String _city;
  late String _bio;
  late String _location;

  String errorTextVal = ' ';

  // String dropdownValue = cities.first;

  @override
  // void initState() {
  //   super.initState();
  //   selectedGender = 0;
  // }
// void initState() {
//    _gender = "Flutter Campus";
//   super.initState();
// }
  // setSelectedRadio(int value) {
  //   setState(() {
  //     selectedGender = value;
  //   });
  // }

  List<Customer> customers = [];

  //

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 2, right: 2),
            child: Container(
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Text(
                            'Edit public profile',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                                child: Text(
                              'privacy settings',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '*',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Indicates required',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'First name',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _fname = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'First Name',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Addition name',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _aname = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Last Name',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Last name',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _lname = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Additional Name',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _password = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'enter your strong password',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Mobile no',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _mnumber = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Your mobile no',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _email = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'enter your email',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(fontSize: 20),
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: RadioListTile(
                                    title: Text('Male'),
                                    value: 'Male',
                                    groupValue: _gender,
                                    onChanged: (value) {
                                      setState(() {
                                        _gender = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: RadioListTile(
                                    title: Text('Female'),
                                    value: 'Female',
                                    groupValue: _gender,
                                    onChanged: (value) {
                                      setState(() {
                                        _gender = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Divider(
                    color: Color.fromARGB(191, 158, 158, 158),
                    height: 25,
                    thickness: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\t*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1, top: 10),
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'This is a required question';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _address = value!;
                              },
                              minLines: 6,
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(),
                                hintText: 'enter your address',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Choose Your City',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Row(children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            //decoration: InputDecoration(labelText: 'City'),
                            value: _selectedCity,
                            items: cities.map((String city) {
                              return DropdownMenuItem<String>(
                                value: city,
                                child: Text(city),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                _selectedCity = value!;
                              });
                            },
                          ),
                        ),
                        // LayoutBuilder(
                        //    builder: (BuildContext context, BoxConstraints constraints)
                        //   child: DropdownButtonFormField<String>(
                        //     decoration: InputDecoration(labelText: 'City'),
                        //     value: _selectedCity,
                        //     items: cities.map((String city) {
                        //       return DropdownMenuItem<String>(
                        //         value: city,
                        //         child: Text(city),
                        //       );
                        //     }).toList(),
                        //     onChanged: (String? value) {
                        //       setState(() {
                        //         _selectedCity = value!;
                        //       });
                        //     },
                        //      ),

                        // ),
                      ]),
                      // Column(
                      //   children: [
                      //     TextFormField(
                      //       validator: (value) {
                      //         if (value!.isEmpty) {
                      //           return 'This is a required question';
                      //         } else {
                      //           errorTextVal = ' ';
                      //         }
                      //       },
                      //       decoration: InputDecoration(
                      //         hintText: 'enter your city',
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Bio',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _bio = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Share a little something about you',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This is a required question';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _location = value!;
                            },
                            decoration: InputDecoration(
                              hintText: 'Share where you live',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    width: 500,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Text(
                                '\t\tList Of Product',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
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
                                Column(
                                  children: [
                                    PopupMenuButton<String>(
                                      itemBuilder: (BuildContext context) {
                                        return [
                                          PopupMenuItem<String>(
                                            value: 'item1',
                                            child: Text(
                                                'The animals story for kids'),
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
                                            child:
                                                Text('science of enginnering'),
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
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
                                Column(
                                  children: [
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
                                            child: Text(
                                                ' Cars and radio controlled'),
                                          ),
                                        ];
                                      },
                                      onSelected: (String value) {
                                        print('Selected item: $value');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
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
                                Column(
                                  children: [
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
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
                                Column(
                                  children: [
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
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
                                Column(
                                  children: [
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: 36.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Read more'),
                                ],
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                // _submitForm();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => table(
                                      customer: Customer(
                                        firstname: _fname,
                                        additionname: _aname,
                                        lastname: _lname,
                                        mobileno: _mnumber,
                                        password: _password,
                                        email: _email,
                                        address: _address,
                                        gender: _gender,
                                        city: _selectedCity ?? '',
                                        bio: _bio,
                                        location: _location,
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Text('Submit'),
                          ),
                        ],
                      ),
                    )),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
