import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard_tutorial/constants.dart';
import 'package:flutter_responsive_dashboard_tutorial/util/generic_box.dart';
import 'package:flutter_responsive_dashboard_tutorial/util/generic_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: genericAppBar,
      backgroundColor: defaultBackground,
      drawer: genericDrawer,
      body: Column(children: [
        AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
