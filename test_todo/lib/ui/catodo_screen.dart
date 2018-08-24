import 'package:flutter/material.dart';
import 'package:test_todo/model/catodo_item.dart';
import 'package:test_todo/util/database_client.dart';
import 'package:test_todo/util/date_formatter.dart';

class CaToDoScreen extends StatefulWidget{
  @override
  _CaToDoScreenState createState() => new _CaToDoScreenState();
}

class _CaToDoScreenState extends State<CaToDoScreen> {
  final TextEditingController _textEditingController = new TextEditingController();
  var db = new DatabaseHelper();
  final List<CaToDoItem> _itemList = <CaToDoItem>[];

  @override
  void initState() {
    super.initState();
    _readCaToDoList();
  }

  void _handleSubmitted(String text) async {
     _textEditingController.clear();
     CaToDoItem caToDoItem = new CaToDoItem(text, /* DateTime.now().toIso8601String()*/ dateFormatted() );
     int savedItemId = await db.saveItem(caToDoItem);
     CaToDoItem addedItem = await db.getItem(savedItemId);
     setState(() {
        _itemList.insert(0, addedItem);
     });
     print("Item saved id: $savedItemId");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black87,
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: false,
              itemCount: _itemList.length,
              itemBuilder: (_, int index) {
                return new Card(
                  color: Colors.white10,
                  child: new ListTile(
                    title: _itemList[index],
                    onLongPress: () => _updateCaToDo(_itemList[index], index),
                    trailing: new Listener(
                      key: new Key(_itemList[index].itemName),
                      child: new Icon(Icons.remove_circle, color: Colors.redAccent,),
                      onPointerDown: (pointerEvent) => _deleteCaToDo(_itemList[index].id, index),
                    ),
                  ),
                );
              }
            )
          ),
          new Divider( height: 1.0,)
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "Add Item",
        backgroundColor: Colors.redAccent,
        child: new ListTile(
          title: new Icon(Icons.add),
        ),
        onPressed: _showFormDialog,
      )
    );
  }
        
  void _showFormDialog() {
    var alert = new AlertDialog(
      content: new Row(
        children: <Widget>[
          new Expanded(
            child: new TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration: new InputDecoration(
                labelText: "Item",
                hintText: "type in your CaToDo",
                icon: new Icon(Icons.note_add)
              ),
            )
          )
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            _handleSubmitted(_textEditingController.text);
            _textEditingController.clear();
            Navigator.pop(context);
          },
          child: Text("Save")
        ),
        new FlatButton(onPressed: () => Navigator.pop(context),
          child: Text("Cancel")
        )
      ],
    );
    showDialog(
      context: context,
      builder:(_) { return alert; }
    );
  }

  _readCaToDoList() async {
    List items = await db.getItems();
    items.forEach((item) {
      //CaToDoItem caToDoItem = CaToDoItem.fromMap(item);
      setState(() {
        _itemList.add(CaToDoItem.map(item));
      });
      //print("Db items: ${caToDoItem.itemName}");
    });
  }

  _deleteCaToDo(int id, int index) async {
    debugPrint("Deleted Item");
    await db.deleteItem(id);
    setState(() {
      _itemList.removeAt(index);
    });
  }

  _updateCaToDo(CaToDoItem item, int index) {
    var updateDialog = new AlertDialog(
      title: new Text("Update CaToDo Item"),
      content: new Row(
        children: <Widget>[
          new Expanded(
            child: new TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration: new InputDecoration(
                labelText:  "CaToDo Update Item",
                hintText: "update",
                icon: new Icon(Icons.update)
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text("Save"),
          onPressed: () async {
            CaToDoItem newItemUpdated = CaToDoItem.fromMap({
              "itemName": _textEditingController.text,
              "dateCreated" : /*DateTime.now().toIso8601String()*/ dateFormatted(),
              "id" : item.id
            });
            _handleSubmittedUpdate(index, item); //redrawing the screen
            await db.updateItem(newItemUpdated); //updating the item
            setState(() {
              _readCaToDoList(); // redrawing the screen with all items saved in the db
            });
            Navigator.pop(context);
          },
        ),
        new FlatButton(
          child: new Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
    showDialog(context: context, builder: (_) { return updateDialog; });
  }

  void _handleSubmittedUpdate(int index, CaToDoItem item) {
    setState(() {
      _itemList.removeWhere((element) {
        _itemList[index].itemName == item.itemName;
      });
    });
  }

}
