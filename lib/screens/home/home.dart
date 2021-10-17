import 'package:flutter/material.dart';
import 'package:playmusic/screens/login/login.dart';

class HomeScreen extends StatefulWidget{
	@override
	HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
	@override
	Widget build(BuildContext ctx){
		return Scaffold(
			body: Center(
				child: Column(
					children: <Widget>[
						Text("I'm home"),
						ElevatedButton(
							onPressed: () {
								Navigator.push(
									ctx, 
									
									MaterialPageRoute(
										builder: (ctx) {
											return LoginScreen();
										}
									)
								);
							},
							child: Text("go back")
						)
					],
				),
			),
		);
	}
}