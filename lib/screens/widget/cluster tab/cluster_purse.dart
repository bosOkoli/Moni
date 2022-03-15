import 'package:flutter/material.dart';

class ClusterPurse extends StatelessWidget {
  const ClusterPurse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
                height: 16,
                width: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 206, 205, 205),
                ),
                child: const Center(child: Text("\u20A6"))),
            const Text(
              "Cluster Purse Setting",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Frequency of contribution",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Monthly Upfront",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const Spacer(),
            const Text("Change",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 243, 99, 88)))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "\u20A6550,000,000",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your contribution is 8% of your eligible amount",
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 192, 191, 191)),
            ),
          ],
        ),
      ],
    );
  }
}
