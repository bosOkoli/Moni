// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loanapp/screens/widget/member%20tab/active_agent_list.dart';
import 'package:loanapp/screens/widget/member%20tab/due_agent_list.dart';
import 'package:loanapp/screens/widget/member%20tab/inactive_agent_list.dart';
import 'package:loanapp/screens/widget/member%20tab/overdue_agent_list.dart';

class MemberTab extends StatelessWidget {
  const MemberTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(children: const [
            Text('Overdue Loans',
                style: TextStyle(fontSize: 15, color: Colors.black)),
            Spacer(),
            Icon(Icons.horizontal_rule_outlined, color: Colors.grey),
          ]),
          Divider(thickness: 1, color: Color.fromARGB(255, 194, 189, 189)),
          OverdueAgentList(),
          Divider(thickness: 1, color: Color.fromARGB(255, 194, 189, 189)),
          Row(children: const [
            Text('Due today',
                style: TextStyle(fontSize: 15, color: Colors.black)),
            Spacer(),
            Icon(Icons.horizontal_rule_outlined, color: Colors.grey),
          ]),
          Divider(thickness: 1, color: Color.fromARGB(255, 194, 189, 189)),
          DueAgentList(),
          Divider(thickness: 1, color: Color.fromARGB(255, 194, 189, 189)),
          Row(children: const [
            Text('Active Loans',
                style: TextStyle(fontSize: 15, color: Colors.black)),
            Spacer(),
            Icon(Icons.horizontal_rule_outlined, color: Colors.grey),
          ]),
          Divider(thickness: 1, color: Color.fromARGB(255, 194, 189, 189)),
          ActiveAgentList(),
          Divider(thickness: 1, color: Color.fromARGB(255, 194, 189, 189)),
          Row(children: const [
            Text('Inactive Loan',
                style: TextStyle(fontSize: 15, color: Colors.black)),
            Spacer(),
            Icon(Icons.horizontal_rule_outlined, color: Colors.grey),
          ]),
          Divider(thickness: 1, color: Color.fromARGB(255, 194, 189, 189)),
          InactiveAgentList(),
        ],
      ),
    );
  }
}
