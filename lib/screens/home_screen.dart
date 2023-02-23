import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/grids.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        // bottomNavigationBar: HomeBottomNav(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: Adaptive.h(50),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF6785f5), Color(0xFF032296)],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                // top: 15,
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Good Afternoon,',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            softWrap: true,
                          ),
                          Text(
                            'User',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.notifications),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My favorites',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                            onPressed: null,
                            icon: const Icon(Icons.edit_outlined),
                            label: const Text(
                              'Edit',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Expanded(
                  //   child: GridView(
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 4)),
                  // )
                  Expanded(child: const Grids()),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '1-Tap Payment',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}


// GestureDetector(
//                                 onTap: () => print('object'),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: const [
//                                     Text(
//                                       'Show All',
//                                     ),
//                                     Icon(Icons.keyboard_arrow_down_sharp)
//                                   ],
//                                 ),
//                               ),