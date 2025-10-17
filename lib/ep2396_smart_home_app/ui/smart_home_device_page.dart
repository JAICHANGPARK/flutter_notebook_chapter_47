import 'package:flutter/material.dart';

class SmartHomeDevicePage extends StatefulWidget {
  const SmartHomeDevicePage({super.key});

  @override
  State<SmartHomeDevicePage> createState() => _SmartHomeDevicePageState();
}

class _SmartHomeDevicePageState extends State<SmartHomeDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Devices", style: TextStyle(color: Colors.white)),
            TextButton(onPressed: () {}, child: Text("view All")),
          ],
        ),
        SizedBox(
          height: 62,
          child: ListView(scrollDirection: Axis.horizontal, children: []),
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
                      left: 12,
                      right: 12,
                      bottom: 12,
                      top: 12,
                      child: Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "2"),
                                TextSpan(text: "Devices"),
                              ],
                            ),
                          ),
                          Text("Lamp"),
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
