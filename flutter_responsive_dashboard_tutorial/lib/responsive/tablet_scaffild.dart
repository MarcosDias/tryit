import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard_tutorial/constants.dart';
import 'package:flutter_responsive_dashboard_tutorial/util/generic_box.dart';
import 'package:flutter_responsive_dashboard_tutorial/util/generic_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      appBar: genericAppBar,
      drawer: genericDrawer,
      body: Column(children: [
        AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return const GenericBox();
                  }),
            )),
        Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const GenericTile();
                }))
      ]),
    );
  }
}
