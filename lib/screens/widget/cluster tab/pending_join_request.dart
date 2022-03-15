import 'package:flutter/material.dart';

class PendingJoinRequest extends StatelessWidget {
  const PendingJoinRequest({
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
              Icons.list,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Pending join request",
              style: TextStyle(
                  fontSize: 16,
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
              "No pending cluster join request",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
    );
  }
}
