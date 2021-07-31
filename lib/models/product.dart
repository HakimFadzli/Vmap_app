class Product {
  final int id, price;
  final String title, description, image, category,url;

  Product({this.id, this.price, this.title, this.description, this.image,this.category,this.url});
}

// list of products
// for our demo
List<Product> products = [
   Product(
    id: 9,
    price: 39,
    title: "Faculty of Educational Studies",
    image: "assets/images/fpp_fakulti.jpg",
    category: "Faculties",
    url: "https://educ.upm.edu.my/?L=en",
    description:
        "The Main Faculty Building of Educational Studies located right beside the local gymnasium.",
  ),
  Product(
    id: 1,
    price: 56,
    title: "Anjung Putra",
    image: "assets/images/anjung_putra.jpg",
    category: "Landmark",
    url: "https://www.facebook.com/UniPutraMalaysia/posts/anjung-putraphoto-by-kirshalini-thirumaranpanoramaupm-weloveupmkami-mengalu-aluk/2593314227351266/",
    description:
        "The main gateway into UPM campus. Students and Staff members are regularly monitored by the Auxiliary Police for safety reason especially during Covid times.",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Masjid UPM",
    image: "assets/images/masjid_upm_covid.jpg",
    category: "Landmark",
    url: "https://pic.upm.edu.my/?L=en",
    description:
        "Main Mosque located in the heart of the campus. Acts as the spiritual service centers and religious activities for staff, students, and resident in UPM. ",
  ),
  Product(
    id: 13,
    price: 42,
    title: "Sultan Salahuddin Abdul Aziz Shah Arts And Cultural Centre",
    image: "assets/images/department_budaya.jpg",
    category: "Landmark",
    url: "https://www.facebook.com/pkkssaasUPM",
    description:
        "A grand Hall located in near Dataran Putra. A multipurpose Cental Hall that is mainly used for cultural and arts events in UPM",
  ),
  Product(
    id: 15,
    price: 60,
    title: "Pusat Pembangunan Maklumat Dan Komunikasi (iDEC)",
    image: "assets/images/idec_gamma.jpg",
    category: "Department",
    url: "https://idec.upm.edu.my",
    description:
        " An ICT department in UPM that is located on the opposite direction of IOI mall. This department focuses on IT support, ICT training, multimedia support , infrastructure, and networking",
  ),
  //tambah lagi 3 product
];
