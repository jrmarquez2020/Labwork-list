import 'package:flutter/material.dart';

class LabWork extends StatefulWidget {
  LabWork({super.key});

  @override
  State<LabWork> createState() => _LabWorkState();
}

class _LabWorkState extends State<LabWork> {
  List<String> todoItem = [];
  void addItems() {
    todoItem.add(item.text);
    setState(() {   
    });
  }

  var item = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Orgaanizer'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //Flexible or Expanded is the same
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: item,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'To do item',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton.icon(
                          onPressed: addItems,
                          icon: Icon(Icons.add),
                          label: Text('Add'))),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todoItem.length,
                itemBuilder: (_, index) => todoItems(index + 1, todoItem[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class todoItems extends StatelessWidget {
  todoItems(this.index, this.item, {super.key});

  String item;
  int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(item),
        subtitle: Text('09155073306'),
        leading: CircleAvatar(child: Text('${index}')),
        trailing:
            IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever)),
            iconColor: Colors.red,
      ),
    );
  }
}