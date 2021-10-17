import 'package:flutter/material.dart';
import 'package:playmusic/constants/sizings.dart';

class Button extends StatefulWidget{
	final Size boxSize;
	final double boxRadius;
	final Color backgroundColor;
	final List<Widget> children;
	final Function onClicked;

	Button ({
		Key? key,
		this.boxRadius=BORDER_RADIUS,
		this.backgroundColor=const Color(0xff000000),
		this.boxSize=const Size(double.infinity, 50),
		required this.onClicked,
		required this.children
	}): super(key: key);

	@override
	ButtonState createState() => ButtonState();
}

class ButtonState extends State<Button>{
	@override
	Widget build(BuildContext ctx){
		return GestureDetector(
			child: Container(
				width: widget.boxSize.width,
				height: widget.boxSize.height,
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(widget.boxRadius),
					color: widget.backgroundColor,
				),
				child: Row(
					mainAxisSize: MainAxisSize.min,
					mainAxisAlignment: MainAxisAlignment.center,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: widget.children
				)
			),
			onTap: () => widget.onClicked()
		);
	}
}