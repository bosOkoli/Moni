// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:loanapp/screens/widget/cluster%20tab/benefits_earned.dart';
import 'package:loanapp/screens/widget/cluster%20tab/cluster_purse.dart';
import 'package:loanapp/screens/widget/cluster%20tab/group_invite.dart';
import 'package:loanapp/screens/widget/cluster%20tab/group_settings.dart';
import 'package:loanapp/screens/widget/cluster%20tab/loan_settings.dart';
import 'package:loanapp/screens/widget/cluster%20tab/pending_join_request.dart';

///Cluster tab view
class ClusterDetailsView extends StatelessWidget {
  const ClusterDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 5,
              ),

              ///
              ///cluster settings

              ClusterPurse(),

              //ended here
              ///

              //seperation and divider
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 206, 205, 205),
              )
            ],
          ),
        ),

        ///
        /// Group invite
        GroupInvite(),

        //ended here
        ///
        ///

        //seperation and divider
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 206, 205, 205),
        ),

        ///
        ///Loan settings
        LoanSettings(),

        ///ended here
        ///
        ///seperation and divider
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 206, 205, 205),
        ),

        ///
        ///Pending join request
        ///
        PendingJoinRequest(),

        ///ended here
        ///
        ///seperation and divider
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 206, 205, 205),
        ),

        ///
        ///Group settings
        GroupSettings(),

        ///ended here
        ///
        ///seperation and divider
        ///
        SizedBox(
          height: 15,
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 206, 205, 205),
        ),

        ///
        ///Benefits earned
        BenefitsEarned(),

        ///ended here
        ///
      ]),
    );
  }
}

///Cluster tab View ended here
