import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // padding: const EdgeInsets.all(20.20),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv64-_L-C9yxY4cpgkp103VmCmwKhMqHxSEw&usqp=CAU',),
          SizedBox(height: 20,),
          CustomCardType2(name: null, imageUrl: 'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg',),
          SizedBox(height: 30,),
          CustomCardType2(imageUrl: 'https://img.freepik.com/free-vector/beautiful-gradient-spring-landscape_23-2148448598.jpg?w=2000',),
          SizedBox(height: 40,),
          CustomCardType2(name: 'Thanks', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxrSVZlPXnIhJ9JP883BpgyhYC1qv56SPTZA&usqp=CAU',),
        ]
      ),
    );
  }
}