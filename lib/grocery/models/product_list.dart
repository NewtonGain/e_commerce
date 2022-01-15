import 'package:e_commerce/grocery/models/product.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _productList = [
    Product(
        productId: '022',
        name: 'Fresho Pure Ghee/Tuppa',
        price: 569.0,
        discount: 20.0,
        categoryName: 'Nutritional Facts',
        subCategoryName: 'Nutritional Facts',
        brandName: 'BigBasket',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40161680_4-fresho-pure-cow-desi-ghee.jpg',
        productDetails: 'Best Ghee'),
    Product(
        productId: '023',
        name: 'La Espanola Olive Oil - Extra Light',
        price: 920.0,
        discount: 0.0,
        categoryName: 'OILS & VINEGAR',
        subCategoryName: 'EXTRA VIRGIN OLIVE OIL',
        brandName: 'La Espanola',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40200658_3-la-espanola-olive-oil-extra-light.jpg',
        productDetails: 'Good'),
    Product(
        productId: '024',
        name: 'Tasties Green Chilli Sauce, 200 g',
        price: 39.0,
        discount: 10.0,
        categoryName: 'Sauce',
        subCategoryName: 'Sauce',
        brandName: 'Tasties',
        warrenty: '2 years',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40214655_3-tasties-green-chilli-sauce.jpg',
        productDetails: 'Good'),
    Product(
        productId: '025',
        name: 'Elephant Stainless Steel Coffee/Tea Strainer - 8 cm, 1 pc ',
        price: 151.0,
        discount: 20.0,
        categoryName: 'Stainer',
        subCategoryName: 'Strainer',
        brandName: 'Elephant',
        warrenty: '1 years',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40163269_3-elephant-stainless-steel-coffeetea-strainer-8-cm.jpg',
        productDetails: 'Good '),
    Product(
        productId: '026',
        name:
            'BB Home Octa Plastic Pet Water Bottle - Light Blue, Narrow Mouth, 1 L',
        price: 50.0,
        discount: 20.0,
        categoryName: 'Battle',
        subCategoryName: 'Water Battle',
        brandName: 'BB Home',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40176655_7-bb-home-octa-plastic-pet-water-bottle-light-blue-narrow-mouth.jpg',
        productDetails: 'Good'),
    Product(
        productId: '027',
        name:
            'BB Home Stainless Steel Ghee Pot - High Quality, Durable, 400 ml',
        price: 180.0,
        discount: 12.0,
        categoryName: 'Pot',
        subCategoryName: 'Pot',
        brandName: 'BB Home',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40186000_4-bb-home-stainless-steel-ghee-pot-high-quality-durable.jpg',
        productDetails: 'Best'),
    Product(
        productId: '028',
        name:
            'BB Home Stainless Steel Pav Bhaji/Idli Plate - Oval Shape, 2 pcs',
        price: 185.0,
        discount: 20.0,
        categoryName: 'Plate',
        subCategoryName: 'Idli Plate',
        brandName: 'BB Home',
        warrenty: '1 years',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40185972_5-bb-home-stainless-steel-pav-bhajiidli-plate-oval-shape.jpg',
        productDetails: 'Good'),
    Product(
        productId: '029',
        name:
            'HIT Anti Mosquito Racquet - Rechargeable Insect Killer Bat With LED Light, 1 pc (6 Months Warranty)',
        price: 800.0,
        discount: 10.0,
        categoryName: 'Mosquito Racquet',
        subCategoryName: 'Insect Killer Bat',
        brandName: 'Hit',
        warrenty: '2 years',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40174570_2-hit-anti-mosquito-racquet-rechargeable-insect-killer-bat-with-led-light.jpg',
        productDetails: 'Best'),
    Product(
        productId: '030',
        name:
            'Pigeon by Stovekraft Mini Chopper Fruits & Vegetable With 3 Blades - Plastic, Green, 1 pc',
        price: 1800.0,
        discount: 20.0,
        categoryName: 'Stove',
        subCategoryName: 'Chopper Fruits & Vegetable',
        brandName: 'Pigeon',
        warrenty: '2 years',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40165656_3-pigeon-by-stovekraft-mini-chopper-fruits-vegetable-with-3-blades-plastic-green.jpg',
        productDetails: 'Best '),
    Product(
        productId: '031',
        name:
            'Nirlon Induction Base Non-Stick Flat/Dosa Tawa - 26 cm, Maroon, 1 pc',
        price: 350.0,
        discount: 20.0,
        categoryName: 'Dosa Tawa',
        subCategoryName: 'Dosa Tawa',
        brandName: 'Nirlon',
        warrenty: '2 years',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40157651_4-nirlon-induction-base-non-stick-flatdosa-tawa-26-cm-maroon.jpg',
        productDetails: 'Good'),
    Product(
        productId: '032',
        name: 'Natures Plus Planter Tray 160, 13 x 11 x 2.0',
        price: 350.0,
        discount: 20.0,
        categoryName: 'Planter',
        subCategoryName: 'Planter',
        brandName: 'No Barand',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40209701_1-natures-plus-planter-tray-160.jpg',
        productDetails: 'Nice'),
    Product(
        productId: '033',
        name:
            'Laopala Diva Dinner Plates - Opalware, Full Plate, Ivory, 6 pcs (Set of 6)',
        price: 800.0,
        discount: 20.0,
        categoryName: 'Plates',
        subCategoryName: 'Plates',
        brandName: 'Loapala',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40178664_5-laopala-diva-dinner-plates-opalware-full-plate-ivory.jpg',
        productDetails: 'Best'),
    Product(
        productId: '034',
        name:
            'Bamboooz Kitchen Tools Set - Bamboo Wood Spatula, Ladle & Turner, 3 pcs',
        price: 100.0,
        discount: 20.0,
        categoryName: 'Kitchen',
        subCategoryName: 'Ladle & Turner',
        brandName: 'Bamboooz',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40164969_2-bamboooz-kitchen-tools-set-bamboo-wood-spatula-ladle-turner.jpg',
        productDetails: 'Good'),
    Product(
        productId: '035',
        name:
            'Neelam Stainless Steel Tea & Sugar Container/Canister/Condiment - For Storage Purposes, 2 pcs (2 x 800 ml Each)',
        price: 400.0,
        discount: 20.0,
        categoryName: 'Container',
        subCategoryName: 'Container',
        brandName: 'Neelam',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40226884_3-neelam-stainless-steel-tea-sugar-containercanistercondiment-for-storage-purposes.jpg',
        productDetails: 'Best'),
    Product(
        productId: '036',
        name: 'Anjali Veg Knife - Super, 1 pc',
        price: 50.0,
        discount: 20.0,
        categoryName: 'Knife',
        subCategoryName: 'Knife',
        brandName: 'Anjali',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40114236_2-anjali-veg-knife-super.jpg',
        productDetails: 'Best'),
    Product(
        productId: '037',
        name:
            'Bamboooz Chopping/Cutting Board - Bamboo Wood, Large, 9 X 13 Inch, 1 pc',
        price: 300.0,
        discount: 20.0,
        categoryName: 'Cutting Board',
        subCategoryName: 'Cutting Board',
        brandName: 'Bamboooz',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40215128_3-bamboooz-choppingcutting-board-bamboo-wood-large-9-x-13-inch.jpg',
        productDetails: 'Best'),
    Product(
        productId: '038',
        name: 'Fackelmann Nirosta Softgrip Scissor (22cm), 1 pc',
        price: 50.0,
        discount: 0.0,
        categoryName: 'Scissor',
        subCategoryName: 'Scissor',
        brandName: 'FAcelmann',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40021959_2-fackelmann-nirosta-softgrip-scissor-22cm.jpg',
        productDetails: 'Best'),
    Product(
        productId: '022',
        name: 'Bamboooz Rolling Board/ Chakla - Bamboo Wood, 10 Inch, 1 pc',
        price: 200.0,
        discount: 20.0,
        categoryName: 'Rolling Board',
        subCategoryName: 'Rolling Board',
        brandName: 'Bambooz',
        warrenty: 'No',
        imageUrl:
            'https://www.bigbasket.com/media/uploads/p/l/40164970_2-bamboooz-rolling-board-chakla-bamboo-wood-10-inch.jpg',
        productDetails: 'Best'),
  ];
  int _crossAxisCount = 2;
  double _expandedHeight = 280;
  double _imageHeight = 160;
  int get crossAxisCounts => _crossAxisCount;
  double get expandedHeight => _expandedHeight;
  double get imageHeight => _imageHeight;
  set setAxis(int data) {
    _crossAxisCount = data;
    notifyListeners();
  }

  set setexpandedHeight(double data) {
    _expandedHeight = data;
    notifyListeners();
  }

  set setImageHeight(double data) {
    _imageHeight = data;
    notifyListeners();
  }

  List<Product> get products => _productList;
}
