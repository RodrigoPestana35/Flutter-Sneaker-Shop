import 'package:sneakershop/models/shoe.dart';

class Cart {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Dunk Low NN",
      description:
          "The Nike Dunk Low NN is a fresh take on the classic silhouette. The design features a mix of materials, including a canvas upper with suede overlays. The shoe is accented with a bold, oversized Swoosh design and a unique, textured midsole.",
      price: '240',
      image: "lib/images/NIKE+DUNK+LOW+NN.png",
    ),
    Shoe(
      name: "Nike Dunk Low Retro",
      description:
          "The Nike Dunk Low Retro combines a classic design with a fresh, modern look. The shoe features a leather upper with suede overlays and a bold, oversized Swoosh design. The textured midsole adds a unique touch, while the padded collar provides a comfortable fit.",
      price: '220',
      image: "lib/images/NIKE+DUNK+LOW+RETRO.png",
    ),
    Shoe(
      name: "WMNS NIKE P-6000",
      description:
          "The WMNS Nike P-6000 combines retro style with modern comfort. The shoe features a mesh and leather upper with a padded collar for a comfortable fit. The foam midsole provides lightweight cushioning, while the rubber outsole offers durable traction.",
      price: '180',
      image: "lib/images/WMNS+NIKE+P-6000.png",
    ),
    Shoe(
      name: "WMNS ZOOM FLY 5",
      description:
          "The WMNS Nike Zoom Fly 5 is designed for speed and comfort. The shoe features a lightweight, breathable upper with a padded collar for a comfortable fit. The full-length Zoom Air unit provides responsive cushioning, while the rubber outsole offers durable traction.",
      price: '250',
      image: "lib/images/WMNS+ZOOM+FLY+5.png",
    ),
  ];

  //list of shoes in cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeShop() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getCart() {
    return userCart;
  }

  //add to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  //remove from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
