import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/products.dart';
import 'package:provider_example/screens/product_detail_screen.dart';
import 'package:provider_example/screens/product_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        // Provider(create: (context) => Product(id: id, title: title, description: description, price: price, imageUrl: imageUrl),)
        // ChangeNotifierProvider(create: (context) => Product(id: id, title: title, description: description, price: price, imageUrl: imageUrl),)
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
        },
      ),
    );
  }
}
