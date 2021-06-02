import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  @override

  delete() async{
    print("checking");
    CollectionReference reference =
    FirebaseFirestore.instance.collection("collection");
    QuerySnapshot query = await reference.get();
    query.docs[0].reference.delete();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 8,
        backgroundColor: Colors.brown[200],
        title: ListTile(
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
        ),
      ),

      backgroundColor: Colors.white,

      body:SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 25,),
            Container(
              child: FlatButton.icon(
                icon: Icon( Icons.clear,
                  size: 30.0,
                ),
                label: Text("CLear History"),
                onPressed: () {
                  delete();
                },
              ),
            ),
            SizedBox(),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: StreamBuilder(
                      stream: FirebaseFirestore.instance.collection("collection").snapshots(),
                      builder: (context, snapshots) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount:snapshots.data.docs.length,
                            itemBuilder:(context,index){
                              DocumentSnapshot documentSnapshot = snapshots.data.docs[index];
                              return Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 40,left: 20),
                                    child:
                                    Text(
                                      documentSnapshot["History"],
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.blueGrey[500],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }

                        );
                      }
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}


