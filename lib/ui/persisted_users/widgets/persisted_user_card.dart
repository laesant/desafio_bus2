import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio_bus2/ui/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class PersistedUserCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String email;
  final VoidCallback onTap;
  final VoidCallback onDelete;
  const PersistedUserCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.email,
    required this.onTap,
    required this.onDelete,
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
        trailing: IconButton(
          style: IconButton.styleFrom(
            foregroundColor: AppColors.red,
          ),
          onPressed: onDelete,
          icon: Icon(Icons.delete_outline_rounded),
        ),
      ),
    );
  }
}
