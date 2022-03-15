import 'package:flutter/material.dart';

class LoanSettings extends StatelessWidget {
  const LoanSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.list,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Loan setting",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Total loan collected by cluster",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\u20A6550,000,000",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Repayment Day",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Every Monday",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                const Text("Change",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 243, 100, 90)))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
