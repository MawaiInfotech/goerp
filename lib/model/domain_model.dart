import 'package:hive/hive.dart';

part 'domain_model.g.dart';

@HiveType(typeId: 0)
class DomainModel {

  @HiveField(0)
  final String? ipAddress;

  @HiveField(1)
  final String? domain;

  const DomainModel(this.ipAddress, this.domain);

}