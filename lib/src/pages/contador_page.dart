import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        elevation: 0.1,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Number of likes:', style: _textStyle),
          Text('$_conteo', style: TextStyle(fontSize: 20))
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () {
            print('Pinto en consola');
            _conteo++;
            setState(() {});
          }),
    );
  }
}
