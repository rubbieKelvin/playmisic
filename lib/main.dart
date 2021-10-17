import 'package:flutter/material.dart';
import 'package:playmusic/constants/sizings.dart';
import 'package:playmusic/constants/pallete.dart';
import 'package:playmusic/components/controls/button.dart';

void main() => runApp(App());


class App extends StatelessWidget{
	@override
	Widget build(BuildContext ctx){
		return MaterialApp(
			title: "PlayMusic",
			theme: ThemeData(
				fontFamily: 'Poppins'
			),
			home: IntroPage(),
		);
	}
}

class IntroPage extends StatefulWidget{
	@override
	IntroState createState() => IntroState();
}


class IntroState extends State<IntroPage>{
	static const appName = "PlayMusic";
	static const appSubtext = "stuffsbyrubbie";

	@override
	Widget build(BuildContext ctx){
		return Scaffold(
			// app background
			body: Container(
				color: COLOR_BACKGROUND,
				padding: EdgeInsets.only(bottom: VER_PADDING, left: HOR_PADDING, right: HOR_PADDING),
				child: Column(
					mainAxisSize: MainAxisSize.min,
					mainAxisAlignment: MainAxisAlignment.start,
					crossAxisAlignment: CrossAxisAlignment.center,

					// texts
					children:[
						Expanded(
							child: Center(
								child: Column(
									mainAxisSize: MainAxisSize.min,
									mainAxisAlignment: MainAxisAlignment.end,
									crossAxisAlignment: CrossAxisAlignment.start,
									children:[
										Text(
											IntroState.appName,
											style: TextStyle(
												color: Colors.black,
												fontSize: 36,
											),
										),
										Text(
											IntroState.appSubtext,
											style: TextStyle(
												color: Color(0xff565656),
												fontSize: 11,
											),
										),
									],
								)
							)
						),

						Container(
							child: Column(
								mainAxisSize: MainAxisSize.min,
								mainAxisAlignment: MainAxisAlignment.center,
								crossAxisAlignment: CrossAxisAlignment.center,
								children:[

									Button(
										backgroundColor: COLOR_ACCENT.withAlpha(50),
										children:[
											Text(
												"Login",
												style: TextStyle(
													color: COLOR_ACCENT,
													fontSize: 13,
												),
											),
										],
										onClicked: (){},
									),

									SizedBox(height: 12),
									
									Button(
										backgroundColor: COLOR_ACCENT,
										children:[
											Text(
												"SignUp",
												style: TextStyle(
													color: Colors.white,
													fontSize: 13,
												),
											),
										],
										onClicked: (){},
									),
								],
							),
						),
					],
				),
			),
		);
	}
}
