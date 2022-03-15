// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loanapp/screens/widget/member_view.dart';
import 'package:loanapp/screens/widget/cluster_details_view.dart';

class MoniTabView extends StatefulWidget {
  const MoniTabView({Key? key}) : super(key: key);

  @override
  State<MoniTabView> createState() => _MoniTabViewState();
}

class _MoniTabViewState extends State<MoniTabView>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  int activeIndex = 0;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      if (controller.indexIsChanging) {
        setState(() {
          activeIndex = controller.index;
        });
      }
    });

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TabBar(
              unselectedLabelColor: Colors.red,
              controller: controller,
              labelColor: Colors.red,
              labelStyle: const TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w500),
              unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.red,
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.0, color: Colors.red),
                  insets: EdgeInsets.only(bottom: 6)),
              // isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Member',
                    style: TextStyle(
                        fontSize: 15,
                        color: activeIndex == 0 ? Colors.red : Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'ClusterDetails',
                    style: TextStyle(
                        fontSize: 15,
                        color: activeIndex == 1 ? Colors.red : Colors.black),
                  ),
                )
              ]),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: SizedBox(
              height: 315,
              child: TabBarView(
                  controller: controller,
                  children: [const MemberTab(), const ClusterDetailsView()]),
              //),
            ),
          )
        ],
      ),
    );
  }
}
