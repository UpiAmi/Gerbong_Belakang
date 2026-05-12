import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: project2(),
    );
  }
}

class project1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.yellow,
        title: Text("Aplikasi SIB6B"),
        centerTitle: true,
        leading: Icon(Icons.account_circle, color: Colors.white,size: 40,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined, size: 25, color: Colors.blueAccent,)),
          Padding(padding: EdgeInsets.all(3)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, size: 25, color: Colors.blueAccent))],
      ) ,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.indigo,
        indicatorColor: Colors.indigoAccent,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp, color: Colors.black,)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(label: Text('200'), child: Icon(Icons.messenger_sharp)),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}

class project2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

    );
  }
}

