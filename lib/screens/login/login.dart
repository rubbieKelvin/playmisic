import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
	@override
	LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen>{
	@override
	Widget build(BuildContext ctx){
		return Scaffold(
			body: Center(
				child: Text("hello"),
			),
		);
	}
}