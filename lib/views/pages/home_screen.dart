import 'package:companies/controllers/view_models.dart';
import 'package:companies/views/widgets/about_company.dart';
import 'package:companies/views/widgets/employees/employees_widget.dart';
import 'package:companies/views/widgets/products_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final companyViewmodel = CompanyViewmodel();
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;

  List<String> titles = [
    "About Company",
    "Products",
    "Employees",
  ];

  void editNameCompany() async {
    var nameController = TextEditingController();
    String newName = await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Change name"),
        content: TextField(
          controller: nameController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel")),
          TextButton(
              onPressed: () {
                Navigator.pop(context, nameController.text);
              },
              child: const Text("Save")),
        ],
      ),
    );
    companyViewmodel.newName(newName);
    setState(() {});
  }

  void editAddressCompany() async {
    var addressController = TextEditingController();
    String newLocation = await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Change address"),
        content: TextField(
          controller: addressController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel")),
          TextButton(
              onPressed: () {
                Navigator.pop(context, addressController.text);
              },
              child: const Text("Save")),
        ],
      ),
    );
    companyViewmodel.newLocation(newLocation);
    setState(() {});
  }

  void addProduct() async {
    var nameController = TextEditingController();
    var priceController = TextEditingController();

    Map<String, dynamic> data = await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Add Product"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                label: Text("Name"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                label: Text("Price"),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel")),
          TextButton(
              onPressed: () {
                Navigator.pop(context, {
                  'id': "1",
                  'name': nameController.text,
                  'price': double.parse(priceController.text),
                  'inStock': true,
                });
              },
              child: const Text("Save")),
        ],
      ),
    );
    print(companyViewmodel.products);
    companyViewmodel.addProduct(data);
    setState(() {});
  }

  void editProduct(int index) async {
    var nameController = TextEditingController();
    var priceController = TextEditingController();

    Map<String, dynamic>? data = await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Edit product"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                label: Text("Name"),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                label: Text("Price"),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel")),
          TextButton(
              onPressed: () {
                Navigator.pop(context, {
                  'name': nameController.text,
                  'price': double.parse(priceController.text),
                });
              },
              child: const Text("Save")),
        ],
      ),
    );
    print(data);
    companyViewmodel.editProduct(index, data);
    setState(() {});
  }

  void deleteProduct(int index) {
    companyViewmodel.deleteProduct(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bodies = [
      AboutCompany(
        name: companyViewmodel.name,
        location: companyViewmodel.location,
        editName: () {
          editNameCompany();
        },
        editLocation: () {
          editAddressCompany();
        },
      ),
      ProductsWidget(
        products: companyViewmodel.products,
        add: () {
          addProduct();
        },
        edit: editProduct,
        delete: deleteProduct,
      ),
      const EmployeesWidget(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_currentIndex]),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
        toolbarHeight: 75,
      ),
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.deepPurple.shade200,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          Icon(
            CupertinoIcons.color_filter,
            color: Colors.black,
          ),
          Icon(
            CupertinoIcons.shopping_cart,
            color: Colors.black,
          ),
          Icon(
            CupertinoIcons.person_2_square_stack,
            color: Colors.black,
          ),
        ],
      ),
      body: bodies[_currentIndex],
    );
  }
}
