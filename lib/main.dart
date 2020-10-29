import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          backgroundColor: Colors.orange,
          leading: FlutterLogo(),
          actions: [
            IconButton(icon: Icon(Icons.home), onPressed: null),
            IconButton(icon: Icon(Icons.school), onPressed: null),
            IconButton(icon: Icon(Icons.message), onPressed: null),
            PopupMenuButton(itemBuilder: (context) {
              // List<PopupMenuEntry<dynamic>>
              return[
              PopupMenuItem(child: Text('Item1')),
             PopupMenuItem(child: PopupMenuDivider()),
              PopupMenuItem(child: Text('Item1')),
               PopupMenuItem(child: CheckedPopupMenuItem(
                 checked: true,
                 child: Text('Checked Item'),
               ))
        
              ];
 })
              ],
        ),
       bottomNavigationBar: BottomNavigationBar(items: [
         BottomNavigationBarItem(icon: Icon(Icons.home) ,title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.school),title: Text('School')),
          BottomNavigationBarItem(icon: Icon(Icons.message),title: Text('Message')),
         
       ]),
        body:Center(

        child: Container(
          child:  Text('full ui test'),
        ),
      ),
      ),
    );
  }
}
