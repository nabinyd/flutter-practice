import 'package:flutter/material.dart';
import 'package:practicewidget/home_page.dart';
import 'package:practicewidget/silverAppBar.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('S N A C K B A R'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('this is a snackbar content'),
                    backgroundColor: Colors.orange,
                    elevation: 5,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: EdgeInsets.all(20),
                    showCloseIcon: true,
                    duration: Duration(milliseconds: 3000),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    // onVisible: () {
                    //   Navigator.of(context).push(
                    //       MaterialPageRoute(builder: (context) => HomePage()));
                    // },
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('show snackbar')),
          ),
        ));
  }
}
