class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    author: "ss",
    title: "title1",
    imageUrl: "www.baidu.com",
  ),
  Post(
    author: "ss",
    title: "title2",
    imageUrl: "www.baidu.com",
  ),
  Post(
    author: "ss",
    title: "title3",
    imageUrl: "www.baidu.com",
  )
];