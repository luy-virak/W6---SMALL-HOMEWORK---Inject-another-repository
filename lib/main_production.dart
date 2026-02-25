import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'data/repositories/songs/song_repository.dart';
import 'data/repositories/songs/song_repository_remote.dart';
import 'main_common.dart';

/// Configure provider dependencies for production environment
List<SingleChildWidget> get providersProduction {
  return [
    Provider<SongRepository>(
      create: (context) => SongRepositoryRemote(),
    ),
  ];
}

void main() {
  mainCommon(providersProduction);
}