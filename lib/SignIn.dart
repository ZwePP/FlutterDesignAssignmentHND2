import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: SignInPage(),
    ),
  );
}
class SignInPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Welcome Text
            Text("Welcome",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            SizedBox(height: 20,),

            //Profile image
            Image.asset('img/loginpic.png',
            width: 150),
            SizedBox(height: 20,),

          //  short text
            Text(
              "Please sign in below.",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40,),

            //email
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box,),
                      labelText: "Email",
                      border: InputBorder.none,
                    ),
                ),
              ),
            ),

            //password
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_sharp,),
                    labelText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

          //  button
            ElevatedButton(onPressed: () {},
                child: Text("Sign In"),
                style: ElevatedButton.styleFrom(
                ),
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                Text("Sign Up",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
              ],
            )

          ],
        ),
      )

    );
  }

}