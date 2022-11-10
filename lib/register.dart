import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        home: StudentRegister(),
      )
  );
}
enum genderTypeEnum {Male, Female}
class StudentRegister extends StatefulWidget{
  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  genderTypeEnum? _genderTypeEnum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('img/register.png', width: 100,),
            SizedBox(height: 20,),
            Text("STUDENT REGISTER",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20,),

            //Name field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined,),
                      border: InputBorder.none,
                      hintText: 'Student Name',
                      labelText: "Name", labelStyle: TextStyle(
                      color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            //Batch Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.book_outlined,),
                      border: InputBorder.none,
                      hintText: 'Enter Batch',
                      labelText: "Batch", labelStyle: TextStyle(
                      color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            //Batch Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.credit_card,),
                      border: InputBorder.none,
                      hintText: 'Enter Student Identifcation',
                      labelText: "ID", labelStyle: TextStyle(
                      color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            //gender radio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Gender:", style: TextStyle(fontSize: 20),),
                  Radio(value: genderTypeEnum.Male, groupValue: _genderTypeEnum,
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                      onChanged: (val){
                        setState((){
                          _genderTypeEnum = val;
                        });
                      }),
                  Text("Male"),
                  Radio(value: genderTypeEnum.Female, groupValue: _genderTypeEnum,
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                      onChanged: (val){
                        setState((){
                          _genderTypeEnum = val;
                        });
                      }),
                  Text("Female"),
                ],
              ),
            ),
            SizedBox(height: 15,),

            //Academic field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month,),
                      border: InputBorder.none,
                      hintText: 'Enter Academic Year',
                      labelText: "Year", labelStyle: TextStyle(
                      color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Cancel"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Register"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            )



          ],
        ),
      ),
    );
  }
}

