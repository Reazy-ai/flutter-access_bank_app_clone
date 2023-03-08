import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  static const routeName = '/menu-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Adaptive.px(250),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF6785f5),
                    Color.fromARGB(162, 103, 169, 245)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                ),
                child: Column(children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlue),
                        child: const Text('Show Balance'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'SOLO',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '4839049324',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            CustomCard(
                              icon: Icon(Icons.qr_code_2_outlined),
                              txt: 'My QR',
                            ),
                            CustomCard(
                              icon: Icon(Icons.person_outline),
                              txt: 'Beneficiaries',
                            ),
                            CustomCard(
                              icon: Icon(Icons.history),
                              txt: 'Transactions',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  const CustomListTile(txt: 'Account'),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  const CustomListTile(txt: 'Transfers'),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  const CustomListTile(txt: 'Payment Methods'),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  const CustomListTile(txt: 'Bill Payments'),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  const CustomListTile(txt: 'Lifestyle'),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  const CustomListTile(txt: 'Cheques & Cards'),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  const CustomListTile(txt: 'Loans & Investments'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String txt;
  const CustomListTile({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        txt,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      trailing: const Icon(Icons.arrow_circle_right),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Icon icon;
  final String txt;
  const CustomCard({
    Key? key,
    required this.icon,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blueAccent[100],
      ),
      height: 70,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text(
            txt,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
