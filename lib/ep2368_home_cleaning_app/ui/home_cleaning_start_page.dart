import 'package:flutter/material.dart';

class HomeCleaningStartPage extends StatelessWidget {
  const HomeCleaningStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2025/06/16/12/52/cleaning-services-9663247_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Fine all your home\nupgrade projects in"),
                  Text("one place"),
                  Text(
                    "From plumbing to electrical work, find the perfact expert for your home.",
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.purple,
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("I already have an account?"),
                      TextButton(onPressed: (){}, child: Text("Sign in"),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
