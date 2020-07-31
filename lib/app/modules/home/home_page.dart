import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_lazy_bug/app/services/some_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _callSomeService,
          child: Text('Call SomeService'),
        ),
      ),
    );
  }

  void _callSomeService() {
    /*
      - Click the button
      - Verify that "SomeService created" was logged again
      - Verify that "SomeService something" was logged
      - Replace `ISomeService` for `SomeService` in the generic
      - Restart the app and click the button again
      - Verify that only "SomeService something" was logged
    */
    Modular.get<ISomeService>().doSomething();
  }
}
