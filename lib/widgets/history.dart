import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hubtel_code/widgets/history_toggle.dart';
import 'package:hubtel_code/widgets/transaction_summary.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final List<Widget> views = const [HistoryToggle(), TransactionSummary()];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SegmentedButton<String>(
                  segments: const <ButtonSegment<String>>[
                    ButtonSegment<String>(
                      value: 'h',
                      label: Text(
                        'History',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                    ),
                    ButtonSegment<String>(
                      value: 't',
                      label: Text(
                        'Transaction Summary',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                  ],
                  selected: const <String>{'h'},
                  style: SegmentedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: const Size(168, 35),
                    selectedBackgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onSelectionChanged: (Set<String> newSelection) {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                        constraints:
                            const BoxConstraints.tightFor(height: 45, width: 300),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade300,
                              border: const OutlineInputBorder(),
                              label: Text(
                                'Search',
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              icon: const Icon(Icons.search)),
                        )),
                    const Icon(Icons.list)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 178,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '14:45PM',
                      style: TextStyle(color: Colors.grey.shade300),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        const CircleAvatar(
                          radius: 29,
                        ),

                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(height: 40, width: 160),


                          child: const Text("Emmanuel Rockson Kwabena Uncle Ebo",overflow: TextOverflow.clip,),
                        ),
                        ConstrainedBox(
                          constraints:
                              const BoxConstraints.tightFor(width: 89, height: 26),
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.check_circle),
                              label: const Text('Successful')),
                        )
                      ],
                    )
                  ],
                ),
              ),Container(
                height: 178,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '14:45PM',
                      style: TextStyle(color: Colors.grey.shade300),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        const CircleAvatar(
                          radius: 29,
                        ),

                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(height: 40, width: 160),


                          child: const Text("Emmanuel Rockson Kwabena Uncle Ebo",overflow: TextOverflow.clip,),
                        ),
                        ConstrainedBox(
                          constraints:
                              const BoxConstraints.tightFor(width: 89, height: 26),
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.check_circle),
                              label: const Text('Successful')),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add_circle_sharp,
            color: Colors.white,
          ),
          label: const Text(
            'SEND NEW',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              backgroundColor: const Color.fromRGBO(1, 199, 177, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
