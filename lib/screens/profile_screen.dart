import 'package:access_app_clone/widgets/tiles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF6785f5),
                    Color.fromARGB(162, 103, 169, 245),
                    
                  ],
                ),
              ),
              child: LayoutBuilder(builder: (context, constraints) {
                return Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.space,
                  children: [
                    const SizedBox(width: 60,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('Profile'),
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: CircleAvatar(
                                radius: 43,
                              )),
                          Text('Username'), //dynamically output the account name
                          TextButton(
                            onPressed: null,
                            child: Text('Show Details'),
                          )
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: null, icon: Icon(Icons.notifications)),
                    ),
                  ],
                );
              }),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView(
                  children: [
                    const Text('Privacy and Security'),
                    const SizedBox(height: 5),
                    const STile(
                      txt: 'Change/Reset PIN',
                      icon: Icon(Icons.dialpad_outlined),
                    ),
                    const Divider(),
                    const STile(
                      txt: 'Change Password',
                      icon: Icon(Icons.lock_outline_rounded),
                    ),
                    const Divider(),
                    const ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      leading: Icon(Icons.fingerprint),
                      title: Text('Biometric Login'),
                      trailing: Switch(value: false, onChanged: null),
                    ),
                    const Divider(),
                    const ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      leading: Icon(Icons.lock_outline_rounded),
                      title: Text('Auto Login on app start'),
                      trailing: Switch(value: false, onChanged: null),
                    ),
                    const Divider(),
                    const ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      leading: Icon(Icons.remove_red_eye),
                      title: Text('Hide Account Balance'),
                      trailing: Switch(value: false, onChanged: null),
                    ),
                    Divider(
                      color: Colors.grey[100],
                      thickness: 10,
                    ),
                    const Text('Limits'),
                    const STile(
                        txt: 'Transaction Limits',
                        icon: Icon(Icons.credit_card)),
                    Divider(
                      color: Colors.grey[100],
                      thickness: 10,
                    ),
                    const Text('Appearance'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
