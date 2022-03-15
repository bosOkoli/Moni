import 'package:flutter/material.dart';

class BenefitsEarned extends StatelessWidget {
  const BenefitsEarned({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: const [
          Icon(
            Icons.gpp_good,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Benefits earned",
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w700),
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
                "Total CH benefits earned",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "\u20A6550,000,000",
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Available Benefits",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\u20A6550,000,000",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                "+\u20A65000 today",
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.remove_red_eye_outlined,
                color: Color.fromARGB(255, 247, 109, 109),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "View earning history",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 247, 109, 109)),
              ),
            ],
          ),
        ],
      )
    ]);
  }
}
