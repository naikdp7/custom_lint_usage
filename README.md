# 🎯 Dart Custom Lint Rules

This repository accompanies a multi-part series on **creating custom lint rules in Dart**.  

It summarizes the goals, provides quick-start guidance, and links to full articles for deeper dives.

---

## 📑 Table of Contents

- [Why Custom Lint?](#-why-custom-lint)
- [Quick Start](#-quick-start)
- [Articles](#-articles)
- [Run & CI](#-run--ci)
- [Support](#-support)
- [License](#-license)

---

## 🚀 Why Custom Lint?

Custom linting helps teams:

- ✅ Enforce domain-specific coding conventions  
- ✅ Catch issues earlier in local/dev CI  
- ✅ Reduce repetitive review comments  
- ✅ Keep large codebases consistent  

---

## ⚡ Quick Start

High-level steps (details in **Articles** below):

1. Add dependencies in your `pubspec.yaml`:
dev_dependencies: custom_lint: any # your_lints: #   path: packages/your_lints # if extracting rules to a package
2. Create a rule package (recommended) and implement a rule class.  
3. Register rules with a plugin entrypoint.  
4. Run the linter locally:
dart run custom_lint
5. Iterate with tests and integrate in CI.  

---

## 📚 Articles

1️ [Custom lint in Dart (Overview)](https://lnkd.in/d5-5N6eg)  
2️ [Part 1 — How the Dart Analyzer Works](https://lnkd.in/dJujBU-p)  
3️ [Part 2 — What is a Lint in Dart?](https://lnkd.in/dWDUFRaW)  
4️ [Part 3 — Getting Started with Custom Lints](https://lnkd.in/d7XKpBHb)  
5️ [Part 4 — Deep Dive: ContextResolver & Semantic Analysis](https://lnkd.in/dhkPsuHn)  
6️ [Part 5 — Accessing AST & Writing Rules](https://lnkd.in/dnEmrkhc)  
7️ [Part 6 — Build your first custom lint](https://lnkd.in/dX2a-u2P)  


---

## 🛠 Run & CI

### Local
```dart run custom_lint ```
### CI (conceptual steps)
```Install Dart SDK```
<br>```dart pub get dart run custom_lint –fatal-infos –fatal-warnings```

---

## 🙋 Support

If you find an issue, have suggestions, or want to contribute, please open an **issue** or **PR** in this repository.  

---

## 📄 License

This project is licensed under the **MIT License** – feel free to use and adapt.  

---

   

