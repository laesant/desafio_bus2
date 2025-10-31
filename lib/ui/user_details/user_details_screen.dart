import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/ui/core/widgets/loader_messages.dart';
import 'package:desafio_bus2/ui/core/widgets/remove_user_dialog.dart';
import 'package:desafio_bus2/ui/user_details/user_details_view_model.dart';
import 'package:desafio_bus2/ui/user_details/widgets/user_detail_card.dart';
import 'package:desafio_bus2/ui/user_details/widgets/user_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class UserDetailsScreen extends ConsumerStatefulWidget {
  final User user;

  const UserDetailsScreen({super.key, required this.user});

  @override
  ConsumerState<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends ConsumerState<UserDetailsScreen>
    with LoaderAndMessages {
  @override
  Widget build(BuildContext context) {
    final detailState = ref.watch(userDetailsViewModelProvider(widget.user));
    final notifier = ref.read(
      userDetailsViewModelProvider(widget.user).notifier,
    );

    final userState = detailState.user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Destalhes do Usuário'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl: userState.imageUrl,
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    radius: 60,
                    backgroundImage: imageProvider,
                  ),
                ),
                Text(
                  userState.fullName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            UserDetailCard(
              title: 'Informações Pessoais',
              detailWidgets: [
                UserInfoItem(
                  label: 'Gênero',
                  value: userState.gender.toShortString(),
                ),
                UserInfoItem(
                  label: 'Data de Nascimento',
                  value: DateFormat.yMd('pt-BR').format(userState.dateOfBirth),
                ),
                UserInfoItem(label: 'Nacionalidade', value: userState.nat),
              ],
            ),
            UserDetailCard(
              title: 'Contato',
              detailWidgets: [
                UserInfoItem(label: 'Email', value: userState.email),
                UserInfoItem(label: 'Telefone', value: userState.phone),
                UserInfoItem(label: 'Celular', value: userState.cell),
              ],
            ),
            UserDetailCard(
              title: 'Localização',
              detailWidgets: [
                UserInfoItem(
                  label: 'Endereço',
                  value:
                      '${userState.location.address}, ${userState.location.city}, ${userState.location.state}, ${userState.location.postcode}',
                ),
              ],
            ),
            Visibility(
              visible: detailState.isPersisted,
              replacement: FilledButton(
                onPressed: detailState.isLoading
                    ? null
                    : () async {
                        await notifier.saveUserFromLocal();
                        showSucessSnackbar(
                          'Usuário adicionado no armazenamento local!',
                        );
                      },
                child: detailState.isLoading
                    ? Text('Adicionando...')
                    : Text('Adicionar dos Salvos'),
              ),
              child: FilledButton.icon(
                onPressed: detailState.isLoading
                    ? null
                    : () async {
                        final remove =
                            await showDialog<bool?>(
                              context: context,
                              builder: (context) {
                                return RemoveUserDialog(user: userState);
                              },
                            ) ??
                            false;
                        if (remove) {
                          await notifier.removeUserFromLocal();
                          showSucessSnackbar(
                            'Usuário removido do armazenamento local!',
                          );
                        }
                      },
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  foregroundColor: Theme.of(context).colorScheme.onError,
                ),
                icon: Icon(Icons.delete_outline_outlined),
                label: detailState.isLoading
                    ? Text('Removendo...')
                    : Text('Remover dos Salvos'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
