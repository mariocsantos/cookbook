import 'package:flutter/material.dart';

class MySnackbarPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('SnackBar Page'),
			),
			body: SnackbarPage(),
		);
	}
}

class SnackbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
			onPressed: () {
				final snackBar = SnackBar(
					content: Text('Yay! A SnackBar!'),
					action: SnackBarAction(
						label: 'Undo',
						onPressed: () {
						},
					),
				);

				Scaffold.of(context).showSnackBar(snackBar);
			},
			child: Text('Show SnackBar')
    	)
	);
  }
}
