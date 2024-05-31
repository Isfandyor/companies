import 'package:companies/models/employee_model.dart';
import 'package:companies/models/product_model.dart';

class CompanyViewmodel {
  String name = "";
  String location = "";
  List<EmployeeModel> employees = [];
  List<ProductModel> products = [];

  void newName(String newName) {
    name = newName;
  }

  void newLocation(String newLocation) {
    location = newLocation;
  }

  void addEmployees(Map<String, dynamic> json) {
    employees.add(EmployeeModel.fromJson(json));
  }

  void editEmployees(
      int index, String name, int age, String postion, List<String> skills) {
    employees[index].name = name;
    employees[index].age = age;
    employees[index].postion = postion;
    employees[index].skills = skills;
  }

  void deleteEmployee(int index) {
    employees.removeAt(index);
  }

  void addProduct(Map<String, dynamic> json) {
    products.add(ProductModel.fromJson(json));
  }

  void editProduct(int index, Map<String, dynamic>? data) {
    if (data != null) {
      products[index].name = data["name"];
      products[index].price = data["price"];
    }
  }

  void deleteProduct(int index) {
    products.removeAt(index);
  }
}
