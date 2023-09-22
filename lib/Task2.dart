import 'package:flutter/material.dart';

void main() {
  runApp(Task2());
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task2Screen(),
    );
  }
}

class Task2Screen extends StatefulWidget {
  const Task2Screen({super.key});

  @override
  State<Task2Screen> createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task2Screen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FACI",
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "O",
                          style: TextStyle(
                              color: Colors.tealAccent[400],
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(top: 150, bottom: 30),
                  ),
                  Form(
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                              ),
                              prefixIconColor: Colors.grey,
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.tealAccent.shade400,width: 3),
                              ),

                            ),
                            cursorColor: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                              ),
                              prefixIconColor: Colors.grey,
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.tealAccent.shade400)),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.tealAccent.shade400,width: 3),
                              ),
                            ),
                            cursorColor: Colors.black,
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: isSelected,
                                onChanged: (v) {
                                  setState(() {
                                    isSelected = v ?? false;
                                  });
                                },
                                activeColor: Colors.transparent,
                                checkColor: Colors.tealAccent[400],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                side: BorderSide(
                                    color: Colors.tealAccent.shade400, width: 2),
                              ),
                              Text(
                                "Keep me logged in",
                                style: TextStyle(color: Colors.black87),
                              ),
                              SizedBox(width: 40,),
                              InkWell(
                                onTap: (){},
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(color: Colors.tealAccent[400],fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 75,
                              decoration: BoxDecoration(
                                color: Colors.tealAccent[400],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40,bottom: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?",style: TextStyle(color: Colors.black87,fontSize: 18),),
                                SizedBox(width: 10,),
                                InkWell(
                                    onTap: (){},
                                    child: Text("Signup here",style: TextStyle(color: Colors.tealAccent[400],fontSize: 15,fontWeight: FontWeight.bold),))
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
