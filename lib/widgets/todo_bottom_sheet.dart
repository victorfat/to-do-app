import 'package:flutter/material.dart';

class TodoBottomSheet extends StatelessWidget {
  const TodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30,0, 30, MediaQuery.viewInsetsOf(context).bottom),
                      width: MediaQuery.sizeOf(context).width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: SafeArea(
                            child: Column(children: [
                              const SizedBox(
                                height: 20
                              ),
                              Text('Add Todo',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),),
                              TextField(),  
                              const SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(onPressed: (){}, child: Text('Add',
                              style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18),),
                              style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(100,40)),
                                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                                foregroundColor: WidgetStatePropertyAll(Colors.white),
                              ),),
                              const SizedBox(
                                height: 30,
                              ),
                            ],),
                          ),
                        ),);
  }
}