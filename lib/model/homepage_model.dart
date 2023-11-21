class Homepage {
  String menu;
  String title;
  String detail;
  String imgUrls;

  Homepage(
      {required this.menu,
        required this.title,
        required this.detail,
        required this.imgUrls});
}

var listHome = [
  Homepage(
      menu: "articles",
      title: "News",
      detail: "Get an overview of the latest Spaceflight news, from various sources! Easily link your users to the right websites",
      imgUrls:
      "img/news.png"
  ),
  Homepage(
      menu: "blogs",
      title: "Blogs",
      detail: "Blogs often provide a more detailed overview of launches and missions. A must-have for the serious spaceflight enthusiast",
      imgUrls:
      "img/blogs.png"
  ),
  Homepage(
      menu: "reports",
      title: "Reports",
      detail: "Space stations and other missions often publish their data. With SNAPI, you can include it in your app as well!",
      imgUrls:
      "img/reports.png"
  ),
];
