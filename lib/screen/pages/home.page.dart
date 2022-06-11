import 'package:flutter/material.dart';
import 'package:mobile_global_solution/screen/widgets/tabs.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: TabsPage(),
      ),
    );
  }
}
