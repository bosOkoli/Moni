import 'package:flutter/material.dart';

class GroupSettings extends StatelessWidget {
  const GroupSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: const [
          Icon(
            Icons.settings_outlined,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Group Settings",
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
                "Group rules",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "1. Check the car's rental terms as well, because \n each company has its own rules",
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
            "2. Check the car's rental terms as well, because \n each company has its own rules",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Group Whatsaap",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "htpps://chat.whatsaap.com/BmK1mYu9zGAGh\nhqi8xqQQ5",
            style: TextStyle(fontSize: 14, color: Colors.green),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Icon(Icons.edit_outlined,
                  color: Color.fromARGB(255, 247, 109, 109)),
              SizedBox(
                width: 10,
              ),
              Text(
                "Edit Settings",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 247, 109, 109)),
              ),
            ],
          )
        ],
      ),
    ]);
  }
}
