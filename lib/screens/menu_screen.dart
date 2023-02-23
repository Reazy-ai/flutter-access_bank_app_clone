import 'package:flutter/material.dart';

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
              height: MediaQuery.of(context).size.height * 0.4,
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
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Column(children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            child: Container(padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.lightBlue),
                              child: const Text('Show Balance'),
                          
                            ),
                          )
                          // ElevatedButton(
                          //   style: ButtonStyle(
                          //     // minimumSize: MaterialStateProperty.all(const Size.fromHeight(38)),
                          //     fixedSize: MaterialStateProperty.all(
                          //         const Size.fromHeight(10)),
                          //     elevation: MaterialStateProperty.all(0),
                          //     shape: MaterialStateProperty.all(
                          //       RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(30),
                          //       ),
                          //     ),
                          //   ),
                          //   onPressed: () {},
                          //   child: const FittedBox(child: Text('Show Balance')),
                          // ),
                          ),
                      SizedBox(
                        height: constraints.maxHeight * 0.1,
                      ),
                      // FittedBox(child: Text('Show Balance'),),
                      const Text(
                        'SOLO',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),
                      const Text(
                        '4839049324',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.3,
                      ),
                      Row(
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
                    ]);
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('Account'),
                    trailing: Icon(Icons.arrow_circle_right),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('Transfers'),
                    trailing: Icon(Icons.arrow_circle_right),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('Payments Methods'),
                    trailing: Icon(Icons.arrow_circle_right),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('Bill Payments'),
                    trailing: Icon(Icons.arrow_circle_right),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('Lifestyle'),
                    trailing: Icon(Icons.arrow_circle_right),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('Cheques & Cards'),
                    trailing: Icon(Icons.arrow_circle_right),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text('Loans & Investments'),
                    trailing: Icon(Icons.arrow_circle_right),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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
        children: [icon, Text(txt)],
      ),
    );
  }
}
