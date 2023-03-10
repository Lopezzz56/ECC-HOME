import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'concertdisplay.dart';

// import 'fitoordata.dart';

class ConcertApp extends StatefulWidget {
  const ConcertApp({super.key});

  @override
  State<ConcertApp> createState() => _ConcertAppState();
}

class _ConcertAppState extends State<ConcertApp> {
  final _formKey = GlobalKey<FormState>();
  late String fname, lname, email, course;
  int? mobile, uid;

  late String selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = "BSc";
  }

  // Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(String val) {
    setState(() {
      selectedRadio = val;
    });
  }

  double excite = 0;
  getfName(fname) {
    this.fname = fname;
  }

  getlName(lname) {
    this.lname = lname;
  }

  // getuid(uid) {
  //   this.uid = uid;
  // }

  getcourse(course) {
    this.course = course;
  }

  // getmobile(mobile) {
  //   this.mobile = mobile;
  // }

  getemail(email) {
    this.email = email;
  }

  Future<void> _createData() async {
    print("create");
    print(fname);

    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('concert').doc();
    //create map
    Map<String, dynamic> myForm = {
      'fname': fname,
      'lname': lname,
      'uid': uid,
      'mobile': mobile,
      'email': email,
      'course': selectedRadio,
    };

    documentReference
        .set(myForm)
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  // readData() {
  //   print("Read");
  // }

  // updateData() async {
  //   print("Update");

  //   CollectionReference colref =
  //       FirebaseFirestore.instance.collection('EventRegistrationForm');

  //   Map<String, dynamic> studentMap = {
  //     "fname": fname,
  //     "lname": lname,
  //     "uid": uid,
  //     "mobile": mobile,
  //     "email": email,
  //     "course": course,
  //   };

  //   colref
  //       .doc('')
  //       .set(studentMap)
  //       .then((value) => print("User updated"))
  //       .catchError((error) => print("Failed to update user: $error"));
  // }

  // deleteData() {
  //   print("Delete");

  //   CollectionReference colref =
  //       FirebaseFirestore.instance.collection('EventRegistrationForm');

  //   colref.doc('oxKIWOk7P4KTDthZ5bI0').delete().then(
  //       (colref) => print("Document Deleted"),
  //       onError: (e) => print("Error deleting the document=$e"));
  // }

  List<DocumentSnapshot> documents = [];

  // function to fetch data and navigate to new screen
  Future<void> _fetchDataAndNavigate() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('concert').get();

    setState(() {
      documents = querySnapshot.docs;
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyConcertScreen(documents: documents),
      ),
    );
  }

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Registeration form"),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 51, 63, 225),
                  Color.fromARGB(255, 86, 221, 210),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                //colors: <Color>[Color.fromARGB(255, 161, 22, 186), Colors.blue])),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Color.fromARGB(255, 86, 221, 210),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 51, 63, 225)),
                              labelText: "First Name",
                              //labelStyle: Colors.fromARGB(255, 51, 63, 225),,
                              fillColor: Color.fromARGB(255, 167, 217, 240),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 51, 63, 225),
                                      width: 3.0))),
                          onChanged: (String fname) {
                            getfName(fname);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 51, 63, 225)),
                              labelText: "Last Name",
                              fillColor: Color.fromARGB(255, 177, 223, 245),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 51, 63, 225),
                                      width: 3.0))),
                          onChanged: (String lname) {
                            getlName(lname);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 51, 63, 225)),
                              labelText: "UID",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 51, 63, 225),
                                      width: 3.0))),
                          onChanged: (value) {
                            uid = int.tryParse(value);
                            print('$uid');
                          },
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "BScIT",
                            style: TextStyle(
                                color: Color.fromARGB(255, 51, 63, 225)),
                          ),
                          Radio(
                            value: "BScIT",
                            groupValue: selectedRadio,
                            activeColor: Color.fromARGB(255, 51, 63, 225),
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val!);
                            },
                          ),
                          Text(
                            "BMM",
                            style: TextStyle(
                                color: Color.fromARGB(255, 51, 63, 225)),
                          ),
                          Radio(
                            value: "BMM",
                            groupValue: selectedRadio,
                            activeColor: Color.fromARGB(255, 51, 63, 225),
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val!);
                            },
                          ),
                          Text(
                            "BMS",
                            style: TextStyle(
                                color: Color.fromARGB(255, 51, 63, 225)),
                          ),
                          Radio(
                            value: "BMS",
                            groupValue: selectedRadio,
                            activeColor: Color.fromARGB(255, 51, 63, 225),
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val!);
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          validator: ($mobile) {
                            if ($mobile!.isEmpty) {
                              return 'Please enter your mobile number';
                            }
                            // Regular expression to match a mobile number
                            final mobileRegExp = RegExp(r'^[+]?[0-9]{10,13}$');
                            if (!mobileRegExp.hasMatch($mobile)) {
                              return 'Please enter a valid mobile number';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 51, 63, 225)),
                              labelText: "Mobile",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 51, 63, 225),
                                      width: 3.0))),
                          onChanged: (value) {
                            mobile = int.tryParse(value);
                            print('$mobile');
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (email) {
                            if (email!.isEmpty) {
                              return 'Please enter your email';
                            }
                            // Regular expression to match mobile email names
                            final mobileEmailRegExp = RegExp(
                                r'^[a-zA-Z0-9_.+-]{2,}@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
                            if (!mobileEmailRegExp.hasMatch(email)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 51, 63, 225)),
                              labelText: "Email",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 51, 63, 225),
                                      width: 3.0))),
                          onChanged: (String email) {
                            getemail(email);
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Least Excited",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                            color: Color.fromARGB(
                                                255, 51, 63, 225)),
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  Text(
                                    ("Very Excited"),
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color:
                                            Color.fromARGB(255, 51, 63, 225)),
                                  ),
                                  Icon(
                                    Icons.mood,
                                    color: Color.fromARGB(255, 51, 63, 225),
                                    size: 30.0,
                                    semanticLabel: 'Happy',
                                  ),
                                ],
                              )
                            ]),
                      ),
                      Slider(
                        value: _currentSliderValue,
                        max: 100,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: (() {
                              _createData();
                              _fetchDataAndNavigate();
                              _formKey.currentState!.reset();
                            }),
                            child: Text("Register"),
                            style: ElevatedButton.styleFrom(
                              shadowColor: Color.fromARGB(255, 172, 176, 236),
                              primary: Color.fromARGB(255, 110, 119, 243),
                            ),
                          ),
                          //ElevatedButton(
                          //     onPressed: (() {
                          //       readData();
                          //     }),
                          //     child: Text("Read"),
                          //     style: ElevatedButton.styleFrom(
                          //       primary: Colors.blue,
                          //     )),
                          // ElevatedButton(
                          //     onPressed: (() {
                          //       updateData();
                          //     }),
                          //     child: Text("Update"),
                          //     style: ElevatedButton.styleFrom(
                          //       primary: Colors.amber,
                          //     )),
                          // ElevatedButton(
                          //     onPressed: (() {
                          //       deleteData();
                          //     }),
                          //     child: Text("Delete"),
                          //     style: ElevatedButton.styleFrom(
                          //       primary: Colors.red,
                          //     )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
        ));
  }
}
