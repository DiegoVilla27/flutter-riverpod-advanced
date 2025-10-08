import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_advanced/features/requests_annotation/presentation/pages/providers/users/users_annotation_provider.dart';

/// [RequestsAnnotationScreen] displays a list of users fetched asynchronously using Riverpod.
/// 
/// - Uses Riverpod's [ConsumerWidget] to interact with the [usersProvider].
/// - Shows a loading indicator while fetching data.
/// - Displays an error message if the fetch fails.
/// - Renders a list of users with their name and email.
/// 
/// Usage:
/// Place [RequestsAnnotationScreen] in your navigation to provide a user list interface.
class RequestsAnnotationScreen extends ConsumerWidget {
  const RequestsAnnotationScreen({super.key});

  @override
  Widget build(_, WidgetRef ref) {
    final usersProv = ref.watch(usersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Annotation'),
      ),
      body: usersProv.when(
        data: (users) {
          if (users.isEmpty) {
            const Center(child: Text('No users found'));
          }
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (_, index) {
              final user = users[index];
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.email),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
