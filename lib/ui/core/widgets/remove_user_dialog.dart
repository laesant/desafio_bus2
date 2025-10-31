import 'package:desafio_bus2/domain/models/user.dart';
import 'package:flutter/material.dart';

class RemoveUserDialog extends StatelessWidget {
  final User user;
  const RemoveUserDialog({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Confirmar Remoção'),
      actionsOverflowButtonSpacing: 8,
      actions: [
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Theme.of(context).colorScheme.onError,
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text('Remover'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text('Cancelar'),
        ),
      ],
      content: Text(
        'Você tem certeza que deseja remover ${user.fullName}? Esta ação não pode ser desfeita.',
      ),
    );
  }
}
