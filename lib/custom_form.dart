import 'package:flutter/material.dart';

class CustomFormPage extends StatelessWidget {
	@override
	Widget build(BuildContext) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Custom Form with validation')
			),
			body: CustomForm(),
		);
	}
}

class CustomForm extends StatefulWidget {
	@override
	CustomFormState createState() {
		return CustomFormState();
	}
}

class CustomFormState extends State<CustomForm> {

	final _formKey = GlobalKey<FormState>();

	@override
	Widget build(BuildContext context) {
		return Form(
			key: _formKey,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					TextFormField(
						validator: (value) {
							if (value.isEmpty) {
								return 'Please enter some text';
							}
						},
            decoration: InputDecoration(
              labelText: 'Enter your username'
            ),
					),
					Padding(
						padding: const EdgeInsets.symmetric(vertical: 16.0),
						child: RaisedButton(
							child: Text('Submit'),
							onPressed: () {
								if (_formKey.currentState.validate()) {
									Scaffold
										.of(context)
										.showSnackBar(
											SnackBar(
												content: Text('Processing data'),
											)
										);
								}
							},
						),
					)
				],
			)
		);
	}

}