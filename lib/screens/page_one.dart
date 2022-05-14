import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page/screens/first_screna.dart';
class Screens extends StatelessWidget {
  Screens(Key? key) : super(key: key);

  //  final _controller=TextEditingController();
 // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:3 ,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                tabs:[

                  Tab(icon: Icon(Icons.account_circle)),
                  Tab(icon: Icon(Icons.web_sharp)),
                  Tab(icon: Icon(Icons.menu)),
                ]
            ),
            title: const Text('Hello Rana'),
          ),
          body:Center(
        child: GestureDetector(
         child:
          Image.network('https://th.bing.com/th/id/OIP.ggFDyjx2GmaBT78nKUf9uwHaF2?w=219&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
             onTap:(){ Navigator.of(context).pop(MaterialPageRoute(builder: (s) => ScreenOne()));
         }
        )

        )
    )
    );
  }
}