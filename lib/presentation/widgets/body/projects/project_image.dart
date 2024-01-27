import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: double.infinity,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return Icon(
              color: AppColors.primaryColor,
              Icons.gamepad_rounded,
              size: 80,
            );
          },
        ),
      ),
    );
  }
}
