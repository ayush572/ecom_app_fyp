// import 'package:ecommerce_new/model/user_details_model.dart';
import 'package:ecommerce_new/utils/constants.dart';
import 'package:ecommerce_new/widgets/categories_horizontal_list_view_bar.dart';
import 'package:ecommerce_new/widgets/products_showcase_list_view.dart';
// import 'package:ecommerce_new/widgets/loading_widget.dart';
import 'package:ecommerce_new/widgets/search_bar_widget.dart';
import 'package:ecommerce_new/widgets/simple_product_widget.dart';
// import 'package:ecommerce_new/resources/cloudfirestore_methods.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  // ScrollController controller = ScrollController();
  // double offset = 0;
  // List<Widget>? discount70;
  // List<Widget>? discount60;
  // List<Widget>? discount50;
  // List<Widget>? discount0;

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  //   controller.addListener(() {
  //     setState(() {
  //       offset = controller.position.pixels;
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   controller.dispose();
  // }

  // void getData() async {
  //   List<Widget> temp70 =
  //   await CloudFirestoreClass().getProductsFromDiscount(70);
  //   List<Widget> temp60 =
  //   await CloudFirestoreClass().getProductsFromDiscount(60);
  //   List<Widget> temp50 =
  //   await CloudFirestoreClass().getProductsFromDiscount(50);
  //   List<Widget> temp0 = await CloudFirestoreClass().getProductsFromDiscount(0);
  //   print("everything is done");
  //   setState(() {
  //     discount70 = temp70;
  //     discount60 = temp60;
  //     discount50 = temp50;
  //     discount0 = temp0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(
        isReadOnly: true,
        hasBackButton: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesHorizontalListViewBar(),
            ProductsShowcaseListView(title: "Upto 70% off", children: testChildren),
            ProductsShowcaseListView(title: "Upto 60% off", children: testChildren),
            ProductsShowcaseListView(title: "Upto 50% off", children: testChildren),

          ],
        ),
      ),
    );
  }
}