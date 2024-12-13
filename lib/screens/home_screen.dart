import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/state_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Home Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('${context.watch<StateViewModel>().state}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  context.read<StateViewModel>().updateState("Card 1 clicked");
                },
                child:const Card(       
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Card 1"),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  context.read<StateViewModel>().updateState("Card 2 clicked");
                },
                child:const Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Card 1"),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                context.read<StateViewModel>().updateState("Card 3 clicked");
                },
                child:const Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Card 1"),
                  ),
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}