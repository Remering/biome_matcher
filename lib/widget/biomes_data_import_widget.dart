import 'dart:async';
import 'dart:convert';

import 'package:biome_matcher/biome_matcher.dart';
// import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:fast_csv/csv_converter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BiomesDataImportWidget extends ConsumerWidget {
  const BiomesDataImportWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton.filled(
      // onPressed: () => _openDbViewer(context, ref.watch(appDatabaseProvider)),
      onPressed: () => _importCsv(ref.read(biomeCsvParserProvider())),
      icon: Icon(Icons.import_export),
    );
  }

  Future<bool> _chooseFileAndRead(StreamConsumer<String> consumer) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
      withReadStream: true,
      lockParentWindow: true,
    );

    Stream<List<int>>? byteStream = result?.files.singleOrNull?.readStream;

    if (byteStream == null) {
      return false;
    }

    byteStream.transform(Utf8Decoder(allowMalformed: true)).pipe(consumer);
    return true;
  }

  // void _openDbViewer(BuildContext context, AppDatabase database) {
  //   Navigator.of(
  //     context,
  //   ).push(MaterialPageRoute(builder: (context) => DriftDbViewer(database)));
  // }

  void _importCsv(CsvParser parser) async {
    StreamController<String> controller = StreamController();

    if (!await _chooseFileAndRead(controller)) {
      return;
    }

    await controller.stream.transform(CsvConverter(parser: parser)).first;
  }
}
