import 'package:flutter/material.dart';
import 'package:todo/style.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  List ToDoList = [];
  String item = '';

  MyInputOnchange(content) {
    setState(() {
      item = content;
    });
  }

  AddItem() {
    setState(() {
      ToDoList.add({"item": item});
    });
  }

  RemoveItem(index) {
    setState(() {
      ToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('ToDOApp'),
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        flex: 70,
                        child: TextFormField(
                          onChanged: (content) {
                            MyInputOnchange(content);
                          },
                          cursorColor: Colors.black54,
                          decoration: AppInputDecoration('List item'),
                        )),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 20,
                      child: ElevatedButton(
                        onPressed: () {
                          AddItem();
                        },
                        style: AppButtonStyle(),
                        child: const Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                flex: 90,
                child: ListView.builder(
                  itemCount: ToDoList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      color: Colors.white,
                      child: SizedBox50(
                        Row(
                          children: [
                            Expanded(
                              flex: 80,
                              child: Text(
                                ToDoList[index]['item'].toString(),
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: TextButton(
                                onPressed: () {
                                  RemoveItem(index);
                                },
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
