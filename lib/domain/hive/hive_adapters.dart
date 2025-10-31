import 'package:desafio_bus2/domain/enums/user_gender.dart';
import 'package:desafio_bus2/domain/models/location.dart';
import 'package:desafio_bus2/domain/models/user.dart';
import 'package:desafio_bus2/domain/models/user_document.dart';
import 'package:hive_ce/hive.dart';

@GenerateAdapters([
  AdapterSpec<Location>(),
  AdapterSpec<Timezone>(),
  AdapterSpec<UserDocument>(),
  AdapterSpec<UserGender>(),
  AdapterSpec<User>(),
])
part 'hive_adapters.g.dart';
