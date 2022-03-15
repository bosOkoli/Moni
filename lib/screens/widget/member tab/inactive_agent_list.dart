// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:loanapp/data/service.dart';
import 'package:provider/provider.dart';

class InactiveAgentList extends StatelessWidget {
  const InactiveAgentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AppService>();
    return SizedBox(
      height: 300,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: vm.moniloan!.data!.inactiveAgents!.length,
          itemBuilder: (context, index) {
            final user = vm.moniloan!.data!.inactiveAgents![index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${user.agent!.firstName ?? ""} '
                          '${user.agent!.middleName ?? ""} '
                          '${user.agent!.lastName ?? ""}',
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                    const Text(
                      'No active loan',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            );
          }),
    );
  }
}
