import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page/screens/page_one.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);
  // final _controller=TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'face book',
          style: TextStyle(fontSize: (30)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null ||
                        (!value.contains('@') && !value.contains('.com'))) {
                      return "Enter correct email";
                    }
                  },

                  decoration: InputDecoration(label:Text("Email") ,hintText: "Enter your Email",
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))) ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return "pass should be more than 8 characters";
                    }
                  },
                    decoration: InputDecoration(label:Text("Password") ,hintText: "Enter your Pass",
                        border:OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))) )
                ),
                SizedBox(height: 35),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (s) => Screens(key)));
                    },
                    child: Text("login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
