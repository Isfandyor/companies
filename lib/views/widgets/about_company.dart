import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AboutCompany extends StatelessWidget {
  String? name;
  String? location;
  Function()? editName;
  Function()? editLocation;
  AboutCompany({
    super.key,
    required this.editLocation,
    required this.editName,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    if (name == null || location == null) {
      return const Center(
        child: Text("Mahsulotlar mavjud emas"),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Welcome To Company",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                onPressed: editName,
                icon: const Icon(
                  CupertinoIcons.eyedropper,
                  color: Colors.white,
                  size: 27,
                ),
              )
            ],
          ),
          Text(
            name ?? "",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Address",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                onPressed: editLocation,
                icon: const Icon(
                  CupertinoIcons.eyedropper,
                  color: Colors.white,
                  size: 27,
                ),
              )
            ],
          ),
          Text(
            location ?? "",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
