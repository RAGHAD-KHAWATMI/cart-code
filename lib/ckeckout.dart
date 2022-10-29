// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(246,246,246,1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color:Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Shipping Adress",
          style: GoogleFonts.inter(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'First name',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Last name',
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Phone number',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Location',
              ),
            ),
             TextField(
              decoration: InputDecoration(
                hintText: 'City',
              ),
            ),
             TextField(
              decoration: InputDecoration(
                hintText: 'Street',
              ),
            ),
          SizedBox(height: 20),
          MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const checkout()),
                      );
                    },
                    // ignore: sort_child_properties_last
                    child: Text("Save",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                    textColor: Colors.white,
                    color: Colors.black,
                    height: 50,
                    minWidth: 500,
                    elevation: 0,
                  )
          ],
        ),
      ),
    );
  }
}
