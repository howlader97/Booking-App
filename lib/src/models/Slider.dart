class Slider{
  final String sliderimage;
  final String title;
  final String subtitle;

  Slider(this.sliderimage, this.title, this.subtitle);

  static List<Slider> getslider(){
    List<Slider> sliders=[
      Slider('assets/images/afbea499038243 1 (1).png', 'asjiojioa','ajkdsa'),
      Slider('assets/images/252a6624a42c117099537c7a1320256d 1.png.png', 'asjiojioa','ajkdsa'),
      Slider('assets/images/7f47f9144194941 1.png', 'asjiojioa','ajkdsa'),
    ];
    return sliders;
  }

}