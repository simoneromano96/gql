import "dart:async";

import "package:build/build.dart";
import "package:path/path.dart";

import "package:gql_build/src/config.dart";
import "package:gql_build/src/utils/reader.dart";
import "package:gql_build/src/utils/writer.dart";
import "package:gql_code_builder/req.dart";

class ReqBuilder implements Builder {
  final AssetId schemaId;

  ReqBuilder(
    this.schemaId,
  );

  @override
  Map<String, List<String>> get buildExtensions => {
        sourceExtension: [reqExtension],
      };

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final doc = await readDocument(buildStep);

    final generatedPartUrl = buildStep.inputId
        .changeExtension(generatedFileExtension(reqExtension))
        .uri
        .path;

    final library = buildReqLibrary(
      doc,
      basename(generatedPartUrl),
    );

    return writeDocument(
      library,
      buildStep,
      reqExtension,
      schemaId.changeExtension(schemaExtension).uri.toString(),
    );
  }
}
