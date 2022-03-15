import 'package:flutter/material.dart';

class GroupInvite extends StatelessWidget {
  const GroupInvite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(
              Icons.add_link,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Group invite Link/Code",
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
          children: const [
            Text(
              "Use the link or code below to invite new member",
              style: TextStyle(fontSize: 14, color: Colors.black),
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
                  "Member invite code",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "30DF38TGOOO",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Spacer(),
            const Text("Get new code",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 243, 100, 90)))
          ],
        ),
      ],
    );
  }
}
