class BottomIcon{
  final String firstimage;
  final String secondimage;
  final String thirdimage;

  BottomIcon(this.firstimage, this.secondimage, this.thirdimage);
  
  static List<BottomIcon> getBottomIcon(){
   List<BottomIcon> bottomIcons=[
     BottomIcon('', 'assets/images/google.png', 'assets/images/twiter.jpg')
   ];
   return bottomIcons;
  }
}