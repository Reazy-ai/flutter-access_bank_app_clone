import 'package:flutter/material.dart';

import '../widgets/tiles.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  static const routeName = '/support-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF6785f5),
                    Color.fromARGB(162, 103, 169, 245)
                  ],
                ),
              ),
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      'Support',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'App version:2.5.4',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView(
                  children: [
                    const Text('Support'),
                    const SizedBox(height: 5),
                    const STile(
                      icon: Icon(Icons.person_sharp),
                      txt: 'Account Officer',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.chat),
                      txt: 'Livechat',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.folder_shared_outlined),
                      txt: 'Access Inflow Details',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.question_mark_rounded),
                      txt: 'FAQ',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.error_outline),
                      txt: 'Report an Issue',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.emoji_emotions_outlined),
                      txt: 'Send Feedback',
                    ),
                    Divider(
                      color: Colors.grey[100],
                      thickness: 10,
                    ),
                    const Text('Social Media'),
                    const STile(
                      icon: Icon(Icons.tab),
                      txt: '@accessbank_help',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.facebook_outlined),
                      txt: 'AccessBankPlc',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.facebook_outlined),
                      txt: '@access_more',
                    ),
                    Divider(
                      color: Colors.grey[100],
                      thickness: 10,
                    ),
                    const Text('Call Us'),
                    const STile(
                      icon: Icon(Icons.headset_mic_outlined),
                      txt: '08000098765',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.headset_mic_outlined),
                      txt: '07000076543',
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    const STile(
                      icon: Icon(Icons.headset_mic_outlined),
                      txt: '07000004567',
                    ),
                    Divider(
                      color: Colors.grey[100],
                      thickness: 10,
                    ),
                    const Text('Email Us'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
