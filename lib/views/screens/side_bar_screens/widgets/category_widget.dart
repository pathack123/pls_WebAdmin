


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final Stream<QuerySnapshot> _categoriesStream = FirebaseFirestore.instance.collection('categories').snapshots();
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<QuerySnapshot>(
      stream: _categoriesStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child:  CircularProgressIndicator(
            color: Colors.cyan,
          ),);
        }

        return GridView.builder(
          shrinkWrap: true,
            itemCount: snapshot.data!.size,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6,mainAxisSpacing: 8,crossAxisSpacing: 8)
            , itemBuilder:(context,index){
              final categoryData = snapshot.data!.docs[index];
              return Column(
                children: [
                  SizedBox(height: 100,width: 100,child: Image.network(categoryData['image']),),

                  Text(categoryData['categoryName'],),
                ],
              );

            });
      },
    );
  }
}
