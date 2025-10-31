import 'package:flutter/material.dart';

class UserDetailCard extends StatelessWidget {
  final String title;
  final List<Widget> detailWidgets;
  const UserDetailCard({
    super.key,
    required this.title,
    required this.detailWidgets,
  });

  List<Widget> _buildDetailList() {
    List<Widget> widgetsWithDividers = [];
    widgetsWithDividers.add(const SizedBox(height: 4));
    for (int i = 0; i < detailWidgets.length; i++) {
      widgetsWithDividers.add(detailWidgets[i]);
      if (i < detailWidgets.length - 1) {
        widgetsWithDividers.add(
          Divider(
            height: 16,
            thickness: 0.8,
          ),
        );
      }
    }
    return widgetsWithDividers;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            ),
            ..._buildDetailList(),
          ],
        ),
      ),
    );
  }
}
