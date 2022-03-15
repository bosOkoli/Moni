import 'package:flutter/material.dart';
import 'package:loanapp/data/service.dart';
import 'package:provider/provider.dart';

class DueAgentList extends StatelessWidget {
  const DueAgentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AppService>();
    return SizedBox(
      height: 50,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: vm.moniloan!.data!.dueAgents!.length,
          itemBuilder: (context, index) {
            final user = vm.moniloan!.data!.dueAgents![index];
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
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 4,
                            width: 4,
                            decoration: const BoxDecoration(
                                color: Colors.grey, shape: BoxShape.circle)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          user.agent!.loanCount.toString(),
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(children: [
                      Text(
                        '\u20A6${user.agent!.recentLoan!.loanAmount.toString()}',
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 236, 180, 160)),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        user.agent!.recentLoan!.agentLoan!.loanStatus!
                            .description
                            .toString(),
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 236, 180, 160)),
                      )
                    ]),
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
