<div align="center">

# 🔄 MVI Pattern in SwiftUI

**A minimal, runnable example of the Model-View-Intent architecture built with SwiftUI and Combine.**

![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey?style=flat-square)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Combine-blue?style=flat-square)
![Xcode](https://img.shields.io/badge/Xcode-16-1575F9?style=flat-square)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/MVI-Pattern-SwiftUI?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/MVI-Pattern-SwiftUI?style=flat-square&color=4776E6)

</div>

## 📖 Overview

This project is a compact reference implementation of the **MVI (Model-View-Intent)** pattern in SwiftUI. It models a single "load user" flow to show how unidirectional data flow keeps state predictable: the `UserView` emits an **Intent**, the `UserViewModel` reduces that intent against a service into a single **State**, and the view re-renders from that state.

Intents travel through a Combine `PassthroughSubject`, and UI is driven entirely by an enum-based state (`.loading` / `.success` / `.failure`). Data access sits behind a `UserService` protocol so the concrete `UserServiceImpl` can be swapped for tests or a real backend.

## ✨ Features

- **Unidirectional data flow** — the view sends intents, the view model produces state, the view renders it.
- **Enum-driven UI state** — `UserState` (`.loading`, `.success`, `.failure`) makes every screen state explicit and exhaustive.
- **Combine intent bus** — a `PassthroughSubject<UserIntent, Never>` pipes user actions into the view model.
- **Protocol-based service layer** — `UserService` abstracts data fetching, with `UserServiceImpl` returning a `Result<User, UserError>`.
- **Typed error handling** — a dedicated `UserError` enum surfaces failures (e.g. `.notFound`) directly in the state.
- **Zero third-party dependencies** — built only on SwiftUI and Combine.

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/MVI-Pattern-SwiftUI.git
cd MVI-Pattern-SwiftUI
open MVIApp-SwiftUI.xcodeproj
```

Then select an iOS Simulator and press **Cmd + R** to build and run.

## 📋 Requirements

- iOS 18.1+
- Xcode 16+
- Swift 5.0+

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

---

> ⭐ If this helped you, consider giving the repo a star!
