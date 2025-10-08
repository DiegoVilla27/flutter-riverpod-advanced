# 🚀 Flutter Riverpod Advanced

This repository is a **learning-oriented mini project** built with **Flutter** to explore and practice state management using **Riverpod**.  
It includes examples of `Notifier` and `AsyncNotifier` implementations — both in their **classic form** and using **annotations (code generation)** — combined with a **Clean Architecture** approach for handling async data.

## ✨ Features

### 🔸 Notifier
Basic synchronous state management examples using:
- **Classic Provider** → Manual provider creation and registration.
- **Annotation-based Provider** → Using `@riverpod` and code generation for cleaner syntax.

**Example:** Simple counter with `increment` and `decrement` methods.

---

### 🔸 AsyncNotifier
Asynchronous state management examples using `AsyncNotifier`, including:
- Data fetching with loading and error states.
- **Classic Provider** and **Annotation-based** implementations.
- **Clean Architecture** structure (UseCases, Repository, DataSource) to separate concerns.

**Example:** Fetching a list of users from a simulated repository.

---

### 🔸 Shared State
A shared provider using **classic Riverpod**, demonstrating how multiple widgets can read and react to the same state — for example, toggling an alarm on/off globally.

---

## 🧰 Tech Stack

- **Flutter** 🐦
- **Riverpod** (Notifier / AsyncNotifier)
- **riverpod_annotation** for code generation
- **Clean Architecture**
- **Dart** language features

---

## 🛠 Getting Started

1. **Clone the repository**
  ```bash
  git clone https://github.com/your-username/flutter-riverpod-mini.git
  cd flutter-riverpod-mini
  ```

2. **Install dependencies**
  ```bash
  flutter pub get
  ```

3. **Run build_runner (for annotation-based providers)**
  ```bash
  flutter pub run build_runner watch or dart run build_runner watch
  ```

4. **Run the app**
  ```bash
  flutter run
  ```