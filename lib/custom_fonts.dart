import 'package:flutter/material.dart';

class CustomFontsPage extends StatelessWidget {
  	@override
  	Widget build(BuildContext build) {
    	return Scaffold(
      		appBar: AppBar(title: Text('Custom Fonts')),
      		body: Center(
				child: Text(
					'A new font', 
					style: TextStyle(
						fontFamily: 'Raleway'
					),
				),
			),

    	);
  	}
}

class CustomFonts extends StatelessWidget {
  	@override
  	Widget build(BuildContext build) {
	}
}
