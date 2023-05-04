class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Surabaya Submarine Monument',
    location: 'Jl. Pemuda',
    description: 'Museum Kapal Selam',
    openDays: 'Monday - Sunday',
    openTime: '09:00 - 16:00',
    ticketPrice: 'Rp 20.000',
    imageAsset: 'assets/images/submarine.jpg',
  ),
  TourismPlace(
    name: 'Keleteng Sanggar Agung',
    location: 'Kenjeran',
    description: 'Sebuah Klenteng di Kota Surabaya',
    openDays: 'Monday - Sunday',
    openTime: '09:00 - 16:00',
    ticketPrice: 'Rp 10.000',
    imageAsset: 'assets/images/klenteng.jpg',
  ),
  TourismPlace(
    name: 'House of Sampoerna',
    location: 'Krembangan Utara',
    description: 'Museum Tembakau dan Markas Besar Sampoerna',
    openDays: 'Monday - Sunday',
    openTime: '09:00 - 16:00',
    ticketPrice: 'Rp 20.000',
    imageAsset: 'assets/images/sampoerna.jpg',
  ),
  TourismPlace(
    name: 'Tugu Pahlawan',
    location: 'Alun-alun Contong',
    description: 'Monumen yang menjadi markah tanah Kota Surabaya',
    openDays: 'Monday - Sunday',
    openTime: '09:00 - 16:00',
    ticketPrice: 'Rp 30.000',
    imageAsset: 'assets/images/pahlawan.jpg',
  ),
  TourismPlace(
    name: 'Patung Suro Boyo',
    location: 'Wonokromo',
    description: 'Sebuah patung yang merupakan lambang kota Surabaya',
    openDays: 'Monday - Sunday',
    openTime: '09:00 - 16:00',
    ticketPrice: 'Rp 25.000',
    imageAsset: 'assets/images/sby.jpg',
  ),
];