import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: SignUp(),
    )
  );
}
class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Sign Up Header
            Text("Sign Up",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 15,),

            //image
            CircleAvatar(
              backgroundImage: AssetImage('img/signinpic.png',),
              radius: 80,
            ),
            SizedBox(height: 15,),

          //  SHORT TEXT
            Text("Create your account", style: TextStyle(color: Colors.grey,),),

            //First Name
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            //Last Name
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          //  Email,
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            //  Password,
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            //  Confirm,
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),

            ElevatedButton(onPressed: () {},
              child: Text("Sign Up"),
              style: ElevatedButton.styleFrom(
              ),
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                Text("Sign In",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
              ],
            )


          ],

        ),
      ),
    );
  }
  
}