import 'package:calculator/hist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}
class _ButtonState extends State<Button> {
  final Future<FirebaseApp> _future = Firebase.initializeApp();

  String text = "",
      rev,
      op;
  int a, b;

   void addData() {
     Map<String,dynamic> demo = {"History" : text};
     CollectionReference collectionReference = FirebaseFirestore.instance.collection('collection');
     collectionReference.add(demo);
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        title: ListTile(
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          subtitle: Text(
            '#made by me',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          ),
          trailing: Icon(Icons.calculate, size: 30.0,),

        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 40.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[500],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(50),
                  topRight:Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('AC'),
                          child: Text(
                            'AC',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('+/-'),
                          child: Text(
                            '+/-',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('%'),
                          child: Text(
                            '%',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('/'),
                          child: Text(
                            '/',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.blueGrey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('7'),
                          child: Text(
                            '7',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('8'),
                          child: Text(
                            '8',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),


                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('9'),
                          child: Text(
                            '9',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('x'),
                          child: Text(
                            'x',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('4'),
                          child: Text(
                            '4',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('5'),
                          child: Text(
                            '5',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('6'),
                          child: Text(
                            '6',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(

                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('-'),
                          child: Text(
                            '-',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('1'),
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('2'),
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('3'),
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('+'),
                          child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [

                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('0'),
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () => buttonpressed('.'),
                          child: Text(
                            '.',
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlineButton(
                          padding: EdgeInsets.all(20.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                          onPressed: () {
                            buttonpressed('=');
                            addData();
                           },
                          child: Text
                            (
                            '=',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.blueGrey[500],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 170.0,

              child: UserAccountsDrawerHeader(
                accountName:Text(
                  'Kewal Patel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                accountEmail: Text(
                  'calci@cal.in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
            onPressed:() {
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) =>
                      History(
                      ))
              );
            },
              child: Padding(
                padding: const EdgeInsets.only(left: 0,bottom: 20,top: 20,right: 150),
                child: Text("History",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black
                ),
                ),
              ),
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
                  ),
            ),
          ],
        ),
      ),
    );
  }


  buttonpressed(String btn) {
    if (btn == 'AC') {
      rev = "";
      text = "";
      a = b = 0;
    }
    else if (btn == '+' || btn == '-' || btn == 'x' || btn == '/') {
      a = int.parse(text);
      rev = "";
      op = btn;
    }
    else if (btn == '=') {
      b = int.parse(text);
      if (op == '+') {
        rev = (a + b).toString();
      }
      if (op == '-') {
        rev = (a - b).toString();
      }
      if (op == 'x') {
        rev = (a * b).toString();
      }
      if (op == '/') {
        rev = (a / b).toString();
      }
    }
    else {
      rev = int.parse(text + btn).toString();
    }

    setState(() {
      text = rev;
    });
  }

}



