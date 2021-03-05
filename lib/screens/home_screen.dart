//packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assessment/constants/reuse_widgets.dart';

//widgets
import '../widgets/bottom_navbar.dart';
import '../widgets/gridview_card.dart';
//constants
import '../constants/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //white status bar
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavBaR(),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(profile_img),
                    ),
                    const Spacer(),
                    topIcons(Icons.search),
                    const SizedBox(
                      width: 20,
                    ),
                    topIcons(Icons.notifications),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi Marcus,',
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'What do you want to do today?',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16, bottom: 0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'View Insights',
                              style: const TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: const Radius.circular(20),
                                    bottomRight: const Radius.circular(0),
                                    topLeft: const Radius.circular(20),
                                    topRight: const Radius.circular(20))),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(5))),
                          child: const Icon(
                            Icons.trending_up,
                            color: Colors.blue,
                            size: 40,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('₹12,939.25',
                            style: const TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 23)),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Checking Account\nBalance',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('₹1,00,203.32',
                            style: const TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 23)),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Savings Account\nBalance',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.count(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics:
                      ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                  children: List.generate(4, (index) {
                    return GridViewCard(index: index);
                  }),
                ),
              ],
            ),
          ),
        ));
  }
}
