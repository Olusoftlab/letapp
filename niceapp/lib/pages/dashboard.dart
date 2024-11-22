import "package:flutter/material.dart";

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Startup Dashboard'), backgroundColor: Colors.teal),
        body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              _buildDashBoardItem(
                  context, Icons.payment, "Make payment", "/payment"),
              _buildDashBoardItem(
                  context, Icons.add_chart, "Add chart", "/chart")
            ]));
  }
}

Widget _buildDashBoardItem(
    BuildContext context, IconData icon, String label, String routes) {
  return GestureDetector(
      onTap: () => Navigator.pushNamed(context, routes),
      child: Card(
          elevation: 5,
          margin: EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: Colors.teal, size: 50),
              SizedBox(height: 20),
              Text(label, style: Theme.of(context).textTheme.headlineMedium),
            ],
          )));
}
