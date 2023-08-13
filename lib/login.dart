import 'package:flutter/material.dart';
import 'package:latihan/mainHome.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _State();
}

class _State extends State<loginPage> {
  Widget myText(String label, bool isobscure){

    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child : TextField(
          style: TextStyle(color: Colors.amber),
          obscureText: isobscure,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: label,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amber,
              fontSize: 15,
            ),

            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.amber,
                width: 2,
              )
            ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
              color: Colors.amber,
                width: 2,
          )
              ),

          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),backgroundColor: Colors.black,titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              myText(
                  "Username",
                  false),
              myText("Password", true),


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const mainHome()),
                    );
                }, child: const Text('Login'),
            ),

            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: TextStyle(),
                )),
            ],
        )
          ],
        ),
      ),
      ),
    );
  }
}
