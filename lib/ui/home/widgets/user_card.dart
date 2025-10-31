import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;
  final VoidCallback onTap;
  const UserCard({
    super.key,
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(6),
      child: ListTile(
        onTap: onTap,
        leading: CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => CircleAvatar(
            backgroundImage: imageProvider,
          ),
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => CircleAvatar(
            child: Icon(Icons.photo),
          ),
        ),
        title: Text(name),
        subtitle: Text(email),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
