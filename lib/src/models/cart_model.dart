class Cart{
   final String image;
  // final String text;

  Cart(this.image );
  static List<Cart> getCart(){
    List<Cart> carts=[
      Cart('assets/images/Rectangle 822.png'),
      Cart('assets/images/Rectangle 823.png'),
      Cart('assets/images/Rectangle 824.png'),
      Cart('assets/images/Rectangle 825.png'),
      Cart('assets/images/Rectangle 824.png'),
      Cart('assets/images/Rectangle 843.png'),
      Cart('assets/images/Rectangle 823.png'),
      Cart('assets/images/Rectangle 822.png'),
    ];
    return carts;
   }

}