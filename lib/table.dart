import 'package:flutter/material.dart';
import 'package:sample_application/edit_profile.dart';

class table extends StatelessWidget {
   final Customer customer;
   table({required this.customer});

  //const table({super.key, required Customer customer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: 
       SingleChildScrollView(
        scrollDirection: Axis.horizontal,
         child: DataTable(
          columns: [
            DataColumn(label: Text('firstName')),
             DataColumn(label: Text('aname')),
              DataColumn(label: Text('lname')),
           
            DataColumn(label: Text('Password')),
             DataColumn(label: Text('mobile')),
             DataColumn(label: Text('email')),
              DataColumn(label: Text('address')),
              DataColumn(label: Text('gender')),
               DataColumn(label: Text('city')),
               DataColumn(label: Text('bio')),
               DataColumn(label: Text('location')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text(customer.firstname)),
               DataCell(Text(customer.additionname)),
                DataCell(Text(customer.lastname)),
                DataCell(Text(customer.password)),
                 DataCell(Text(customer.mobileno)),
              
              DataCell(Text(customer.email)),
              DataCell(Text(customer.address)),
               DataCell(Text(customer.gender)),
                DataCell(Text(customer.city)),
              DataCell(Text(customer.bio)),
              DataCell(Text(customer.location)),
              
            ]),
          ],
             ),
       ),
    );
  }
}