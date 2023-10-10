import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Hozizontal &Vertical Listview"),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => Container(
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text("Card $index"),
                    ),
                    color: Colors.pink,
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                   itemCount: 15,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index) => ListTile(
                    title: Text("List$index"),
                  )
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
