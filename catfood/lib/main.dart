import 'package:flutter/material.dart';
import 'places.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'catfood',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'catfood'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<String> _places = <String>[];
 List<Place> _places = <Place>[];

  @override
  initState() {
    super.initState();
    // _places = new List.generate(100, (i) => 'CatFood $i');
    listenForPlaces();
  }

  listenForPlaces() async {
    var stream = await getPlaces(42.535951, -92.445612);
    stream.listen( (place) => 
      setState( () => _places.add(place))
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new ListView(
//          children: _places.map((place) => new Text(place.name)).toList(),
          children: _places.map((place) => new PlaceWidget(place)).toList(),
        ),
      ), 
    );
  }
}

class PlaceWidget extends StatelessWidget {
  final Place _place;
  PlaceWidget(this._place);
  Color getColor(double rating) {
    return Color.lerp(Colors.red, Colors.green, rating/4);
  }
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new CircleAvatar(
        child: new Text(_place.rating.toString()),
        backgroundColor: getColor(_place.rating),
      ),
      title: new Text(_place.name),
      subtitle: new Text(_place.address),
    );
  }
}