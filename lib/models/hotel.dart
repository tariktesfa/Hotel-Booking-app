class Hotel{
  String imageUrl;
  String title;
  String description;
  int price;
  double rating;

  Hotel(
         {
          this.imageUrl,
          this.title,
          this.description,
          this.price,
          this.rating
         }
      );
}

final List<Hotel> hotels=[
  Hotel(
    imageUrl: 'images/radisson-blu-hotel-addis.jpg',
    title: 'Raddison Blue Hotel',
    description: 'Located in Addis Ababa, Ethiopia',
    price: 1000,
    rating: 4.5
  ),
  Hotel(
      imageUrl: 'images/radisson-blu-hotel-addis.jpg',
      title: 'Raddison Blue Hotel',
      description: 'Located in Addis Ababa, Ethiopia',
      price: 1000,
      rating: 4.5
  ),
  Hotel(
      imageUrl: 'images/radisson-blu-hotel-addis.jpg',
      title: 'Raddison Blue Hotel',
      description: 'Located in Addis Ababa, Ethiopia',
      price: 1000,
      rating: 4.5
  ),
  Hotel(
      imageUrl: 'images/radisson-blu-hotel-addis.jpg',
      title: 'Raddison Blue Hotel',
      description: 'Located in Addis Ababa, Ethiopia',
      price: 1000,
      rating: 4.5
  )
];