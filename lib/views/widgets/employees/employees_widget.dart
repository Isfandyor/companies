import 'dart:math';

import 'package:companies/views/widgets/employees/employees_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmployeesWidget extends StatelessWidget {
  const EmployeesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  Random random = Random();
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: InkWell(
                      onTap: () {
                        print("Salom dunyo");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => const EmployeesDetail(),
                          ),
                        );
                      },
                      child: Ink(
                        height: 120,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Colors.primaries[random.nextInt(17)],
                                  radius: 35,
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                        color: Colors.grey[900],
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Postion",
                                      style: TextStyle(
                                        color: Colors.grey[900],
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      splashColor: Colors.black,
                                      style: IconButton.styleFrom(
                                        side: const BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.eyedropper,
                                        color: Colors.blue,
                                        size: 20,
                                      ),
                                    ),
                                    IconButton(
                                      splashColor: Colors.black,
                                      style: IconButton.styleFrom(
                                        side: const BorderSide(
                                          color: Colors.red,
                                          width: 2,
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.delete,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
