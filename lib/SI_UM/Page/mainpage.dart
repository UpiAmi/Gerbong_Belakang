import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnivPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold (
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sistem Informasi", style: TextStyle(fontSize: 35,color: Colors.indigoAccent)),
            Padding(padding: EdgeInsets.all(5)),
            Text("Universitas Mulia", style: TextStyle(fontSize: 35,color: Colors.indigoAccent)),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(onPressed: (){}, child: Text("Tentang Kami", style: TextStyle(color: Colors.lime)),
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.orange)),),
            Padding(padding: EdgeInsets.all(5)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalFakultas()));
            }, child: Text("Fakultas", style: TextStyle(color: Colors.red)),
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.indigo)),)
          ]
        ),
      ),
    );
  }
}

class HalFakultas extends StatefulWidget {
  const HalFakultas({super.key});
  State<HalFakultas> createState() => _HalFakultasState();
}

class _HalFakultasState extends State<HalFakultas>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        foregroundColor: Colors.yellow,
        title:  Text("Halaman Fakultas"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Fakultas Ilmu Komputer"),
            ),
          ),
          Card(
          child: ListTile(
          title: Text("Fakultas Humaniora dan Kesehatan"),
          ),
          ),
          Card(
            child: ListTile(
              title: Text("Fakultas Ekonomi"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Fakultas Teknik"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Fakultas Hukum"),
            ),
          ),
        ],
      ),
    );
  }
}