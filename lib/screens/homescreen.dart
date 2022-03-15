// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loanapp/data/service.dart';
import 'package:loanapp/screens/widget/moni_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<AppService>().getMoniloan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AppService>();
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.black87,
          title: Text(
            'My cluster',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: vm.isloading
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Container(
                      height: 285,
                      color: Colors.black87,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Repayment Rate:',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          Text(
                                              '${vm.moniloan!.data!.clusterRepaymentRate}%',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 236, 180, 160)))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Repayment Day: ',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            '${vm.moniloan!.data!.clusterRepaymentDay}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.green),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('Cluster purse balance',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                          '\u20A6${vm.moniloan!.data!.clusterPurseBalance}',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      // ignore: prefer_adjacent_string_concatenation
                                      Text(
                                          '+'
                                          '\u20A6550,000,000 interest today',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.green)),
                                    ]),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 8, bottom: 8, left: 20),
                                  width: 109,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red),
                                  child: Text('View Purse',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                ),
                              ],
                            ),
                            Divider(thickness: 1, color: Colors.white),
                            Row(
                              children: [
                                Text('Total interest earned',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                Spacer(),
                                Text(
                                    '\u20A6${vm.moniloan!.data!.totalInterestEarned}',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 235, 115, 71))),
                              ],
                            ),
                            Divider(thickness: 1, color: Colors.white),
                            Row(
                              children: [
                                Text('Total owned by members',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                Spacer(),
                                Text(
                                    '\u20A6${vm.moniloan!.data!.totalOwedByMembers}',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //OverDueView(),
                    MoniTabView()
                  ],
                ),
        ));
  }
}
