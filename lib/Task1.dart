import 'package:flutter/material.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task1Screen(),
    );
  }
}

class Task1Screen extends StatefulWidget {
  const Task1Screen({super.key});

  @override
  State<Task1Screen> createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task1Screen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.saturation),
              opacity: 210),
        ),
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
                              color: Colors.white,
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white30),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                          ),
                          prefixIconColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          fillColor: Colors.grey[850],
                          filled: true,
                        ),
                        cursorColor: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white30),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                          ),
                          prefixIconColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          fillColor: Colors.grey[850],
                          filled: true,
                        ),
                        cursorColor: Colors.white,
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
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
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
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Forgot password?",style: TextStyle(color: Colors.white70,fontSize: 18),),
                            SizedBox(width: 10,),
                            InkWell(
                              onTap: (){},
                                child: Text("Recover here",style: TextStyle(color: Colors.tealAccent[400],fontSize: 15,fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 80,bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style: TextStyle(color: Colors.white70,fontSize: 18),),
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
