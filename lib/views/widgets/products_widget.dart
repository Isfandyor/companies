import 'package:companies/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductsWidget extends StatelessWidget {
  List<ProductModel> products;
  Function()? add;
  Function(int)? edit;
  Function(int)? delete;

  ProductsWidget({
    super.key,
    required this.add,
    required this.edit,
    required this.delete,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return Stack(
        children: [
          const Center(
            child: Text("Mahsulotlar mavjud emas"),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: add,
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          )
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 280,
                mainAxisExtent: 290,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            products[index].name,
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "In Stock: ${products[index].inStock ? 'yes' : 'no'}",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${products[index].price}",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
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
                                onPressed: () => edit!(index),
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
                                onPressed: () => delete!(index),
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
                );
              }),
          Positioned(
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: add,
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
