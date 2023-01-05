abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();

  // ignore: library_private_types_in_public_api
  static _Videos get videos => const _Videos();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get search => "$basePath/ic_search.svg";

  String get more => "$basePath/ic_more.svg";
  
  String get menu => "$basePath/ic_menu.svg";

}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');
}
