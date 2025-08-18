import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

PluginBase createPlugin() {
  return ExampleLinter();
}

class ExampleLinter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    return [
      IncorrectPageNameRule(),
    ];
  }
}

class IncorrectPageNameRule extends DartLintRule {
  const IncorrectPageNameRule() : super(code: _code);

  static const _code = LintCode(
    name: 'page_name_must_contain_page',
    problemMessage: 'Please ensure that the class name contains "Page" '
        'if it extends BasePage.',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addClassDeclaration((node) {
      final element = node.declaredFragment?.element;
      if (element == null) return;

      final className = node.name.lexeme;
      final hasPageInName = className.contains('Page');

      // Use getDisplayString to compare supertype name
      final extendsBasePage = element.allSupertypes
          .any((type) => type.getDisplayString() == 'BasePage');

      if (!hasPageInName && extendsBasePage) {
        reporter.atNode(node, _code);
      }
    });
  }
}
