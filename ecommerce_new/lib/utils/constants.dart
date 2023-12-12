import 'package:ecommerce_new/model/product_model.dart';
import 'package:ecommerce_new/widgets/simple_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_new/screens/home_screen.dart';
import 'package:ecommerce_new/screens/account_screen.dart';
import 'package:ecommerce_new/screens/cart_screen.dart';
import 'package:ecommerce_new/screens/more_screen.dart';



const double kAppBarHeight = 80;

const String amazonLogoUrl =
    "https://t4.ftcdn.net/jpg/03/55/85/43/240_F_355854360_CRtn7S31bUATYTSvC0w443SCHQr0am1d.jpg";

const List<String> categoriesList = [
  "Accessories",
  "Furniture",
  "Books, Toys",
  "Machines",

];

const List<Widget> screens = [
  HomeScreen(),
  AccountScreen(),
  CartScreen(),
  MoreScreen(),
];

const List<String> categoryLogos = [
  "lib/images/accessories.jpeg",
  "lib/images/furniture.jpeg",
  "lib/images/book.jpeg",
  "lib/images/machine.jpeg",
];

const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

// Don't even attempt to scroll to the end of this manually lmao
const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";


List<Widget> testChildren = [
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
        productName: "product 1",
        cost: 200,
        discount: 50,
        uid: "a5r8a6hf7",
        sellerName: "seller 1",
        sellerUid: "87283481jasdf",
        rating: 3,
        noOfRating: 1
    )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
          productName: "product 1",
          cost: 200,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "seller 1",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
          productName: "product 1",
          cost: 200,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "seller 1",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
          productName: "product 1",
          cost: 200,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "seller 1",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
          productName: "product 1",
          cost: 200,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "seller 1",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
];

List<Widget> accessoriesChildren = [
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51+7VlUczuL._SX679_.jpg",
          productName: "Baseball Black Hat",
          cost: 650,
          discount: 520,
          uid: "a5r8a6hf7",
          sellerName: "Tamboli Stores",
          sellerUid: "87283481jasdf",
          rating: 4,
          noOfRating: 1
      )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSYUR2KSAKga3VPn2QpVjoALkNBWxaKq4CrAeZHvp66ZOhASG_hQlz7CLsOG4Pam5-twQ&usqp=CAU",
          productName: "New goggles",
          cost: 1800,
          discount: 10,
          uid: "a5r8a6hf7",
          sellerName: "Tamboli Stores",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),

];

List<Widget> furnitureChildren = [
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://tiimg.tistatic.com/fp/4/007/748/comfortable-and-polished-solid-wooden-round-four-seater-dining-table-set-964.jpg",
          productName: "Table and chair",
          cost: 5800,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "Daga Stores",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://darlingretail.com/cdn/shop/products/78v_800x.png?v=1636104673",
          productName: "Wooden Table",
          cost: 5800,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "Daga Stores",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://www.primeabgb.com/wp-content/uploads/2023/10/Gamdias-Zelus-E1-L-Black-Red-Gaming-Chair-1.jpg",
          productName: "Gaming Chair",
          cost: 2000,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "Daga Stores",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
];


List<Widget> educationChildren = [
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh3gxWwvOSDfmz_rhV20mJ6b_07g4_HpAjRw&usqp=CAU",
          productName: "Dinopedia",
          cost: 500,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "Yash Stores",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRULZT9MDXf6s8Wmv1IbMJpY4Ehelt9x0m9LQYAYLoMxwEHaURxM3-aXLOAJYOKYLvOMaI&usqp=CAU",
          productName: "Oceanpedia",
          cost: 580,
          discount: 50,
          uid: "a5r8a6hf7",
          sellerName: "Yash Stores",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
];


List<Widget> machineChildren = [
  SimpleProductWidget(
      productModel: ProductModel(
          url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmP5oVbqNPUD3o2KWqoaPwBa9MSqRkjZw9XA&usqp=CAU",
          productName: "Jet Engine Model",
          cost: 200000,
          discount: 30,
          uid: "a5r8a6hf7",
          sellerName: "Aditya Stores",
          sellerUid: "87283481jasdf",
          rating: 3,
          noOfRating: 1
      )
  ),
];


