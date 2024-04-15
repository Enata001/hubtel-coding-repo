import 'package:flutter/material.dart';
import 'package:hubtel_code/widgets/history.dart';
import 'package:hubtel_code/widgets/home.dart';
import 'package:hubtel_code/widgets/scheduled.dart';

import '../widgets/send.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> views = const [Home(), Send(), History(), Scheduled()];

  int _index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _index,
          children: views,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: _index,

        onDestinationSelected: (value) {
          setState(() {
            _index = value;
          });
        },
        elevation: 0,
        indicatorColor: Colors.transparent,
        destinations: [

          NavigationDestination(

              icon: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(204, 243, 239, 1),
                    shape: BoxShape.circle),
                child: const Icon(Icons.home_outlined,size: 24),
              ),
              label: ''),
           NavigationDestination(
              icon: Icon(Icons.account_balance_wallet_outlined,color: _index != 1? Colors.grey: Colors.black,size: 24,), label: 'Send',
          ),
           NavigationDestination(
              icon: Icon(Icons.list_alt_outlined,color:  _index != 2? Colors.grey: Colors.black,size: 24), label: 'History',

          ),
           NavigationDestination(
              icon: Icon(Icons.calendar_today,color:  _index != 3? Colors.grey: Colors.black,size: 24), label: 'Scheduled'),
        ],
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
