class ViewResort {
  final String image;
  final String locationName;
  final String text;
  final String location;
  final String description;
 // final double price;

  ViewResort(
    this.image,
    this.locationName,
    this.text,
    this.location,
    this.description,
    //this.price
  );

  static List<ViewResort> getResort() {
    List<ViewResort> viewResorts = [
      ViewResort(
        'assets/images/Group 21.png',
        'Neladri Reservoir',
        '4.7',
        'Tekergat Sunamgnj',
        "'Niladri Lake, also known as Shaheed Siraj Lake, is a popular tourist destination located in Tahirpur, Sunamganj, Bangladesh. It's a limestone lake with stunning blue water surrounded by hills, earning it the nickname Bangladesh's Kashmir . The lake is officially named Shaheed Siraj Lake after a war hero, but tourists commonly call it Niladri. ",

      ),
    ];
    return viewResorts;
  }
}
