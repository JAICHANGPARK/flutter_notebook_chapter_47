import 'package:flutter/material.dart';

class SmartHomeDevicePage extends StatefulWidget {
  const SmartHomeDevicePage({super.key});

  @override
  State<SmartHomeDevicePage> createState() => _SmartHomeDevicePageState();
}

class _SmartHomeDevicePageState extends State<SmartHomeDevicePage> {
  Color accentColor = Color.fromRGBO(33, 232, 225, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Devices",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.grey),
              child: Text("view All"),
            ),
          ],
        ),
        SizedBox(
          height: 48,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: EdgeInsets.only(right: 12),
                padding: EdgeInsets.symmetric(horizontal: 28),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: accentColor,
                ),
                child: Center(child: Text("All")),
              ),
              Container(
                margin: EdgeInsets.only(right: 12),
                padding: EdgeInsets.symmetric(horizontal: 28),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(side: BorderSide(color: Colors.white12)),
                  // color: accentColor,
                ),
                child: Center(
                  child: Text(
                    "Living Room",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12),
                padding: EdgeInsets.symmetric(horizontal: 28),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(side: BorderSide(color: Colors.white12)),
                  // color: accentColor,
                ),
                child: Center(
                  child: Text(
                    "Kichen",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(horizontal: 28),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(side: BorderSide(color: Colors.white12)),
                  // color: accentColor,
                ),
                child: Center(
                  child: Text(
                    "Kichen",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: ShapeDecoration(
                  shape: RoundedSuperellipseBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  color: Color.fromRGBO(26, 26, 26, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      right: 16,
                      bottom: 16,
                      top: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "2",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: "Devices",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Lamp",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Spacer(),
                          Switch.adaptive(value: false, onChanged: (v) {}),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
