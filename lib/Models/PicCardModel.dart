class PicCardModel{
  final String imagePath, picName, picSubName, fund, price;

  PicCardModel(this.imagePath, this.picName, this.picSubName, this.fund, this.price);
}

List<PicCardModel> picCardList = [
  PicCardModel("assets/images/picfive.jpg", "Food", "Hunger", "Fund Now", "200000"),
  PicCardModel("assets/images/pic7.jpg", "Education", "School", "Fund Now", "100000"),
  PicCardModel(
      "assets/images/pic1.jpg", "Career", "Training", "Fund Now", "300000"),
  PicCardModel("assets/images/pic3.jpg", "Shelter", "Living", "Fund Now", "500000"),
  PicCardModel("assets/images/pic2.jpg", "HealthCare", "Hospital", "Fund Now",
      "150000"),
];