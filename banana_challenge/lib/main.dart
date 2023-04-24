import 'package:banana_challenge/pages/product_detail/product_detail.dart';
import 'package:banana_challenge/pages/products_list/products_list.dart';
import 'package:banana_challenge/providers/log_in_provider/log_in_provider.dart';
import 'package:banana_challenge/providers/products_provider/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/pages.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final productsProvider = ProdcutsPovider();
    productsProvider.getProducts();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => productsProvider,),
        ChangeNotifierProvider(create: (context) => LogInProvider(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes:  {
          'login'           : (context) =>  const LogInPage(),
          'products_list'   : (context) =>  const ProductsList(),
          'product_detail'  : (context) =>  const ProductDetail(),
          // 'home'            : (context) =>  const HomePage(),
        },
      ),
    );
  }
}


