# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

iOS to-do app built with SwiftUI and Firebase, following an MVVM architecture. The project is in an early skeleton stage: the auth/UI scaffolding exists, but most `ViewModels/` and `Models/` files are empty stubs and several views are placeholder `Text("Hello, World!")` bodies.

## Build & Run

`xcodebuild` is not on the default path here — the active developer directory is the Command Line Tools, not Xcode (which is installed at `/Applications/Xcode.app`). Either switch it once:

```sh
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
```

…or prefix commands with `DEVELOPER_DIR`:

```sh
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer \
  xcodebuild -project ToDoApp.xcodeproj -scheme ToDoApp \
  -destination 'platform=iOS Simulator,name=iPhone 16' build
```

- **Scheme / target:** `ToDoApp` (single app target; the scheme is shared).
- **Bundle ID:** `com.sergey88r.ToDoApp` · **Swift:** 5.0 · **Deployment target:** iOS 26.5.
- Dependencies are managed via **Swift Package Manager**, resolved in `project.xcworkspace/xcshareddata/swiftpm/Package.resolved`. Open `ToDoApp.xcodeproj` directly (there is no `.xcworkspace` wrapper, no CocoaPods).
- **Tests:** there is no test target yet. Add one before writing tests; do not assume `xcodebuild test` works as-is.

## Architecture

- **Entry point:** `ToDoApp/Others/ToDoAppApp.swift` (`@main`). It calls `FirebaseApp.configure()` in `init()`, then renders `MainView` as the root.
- **`MainView`** (`Views/MainView.swift`) is the app root and the intended place for auth gating (logged-in vs. logged-out routing). It currently just shows `LoginView` unconditionally — wiring `MainViewModel` to decide between login and the main to-do list is unfinished work.
- **MVVM pairing:** each screen has a `View` in `ToDoApp/Views/` paired with a same-named view model in `ToDoApp/ViewModels/` (e.g. `LoginView` ↔ `LoginViewModel`, `NewItemView` ↔ `NewItemViewModel`, `ToDoListItemView` ↔ `ToDoListItemViewModel`). When adding screen logic, keep this 1:1 convention. The view models are currently empty `import Foundation` stubs awaiting `@Published` state and Firebase calls.
- **Models** live in `ToDoApp/Models/` (`User`, `ToDoListItem`) and are also empty stubs.
- **Firebase** (Auth + Firestore via the `firebase-ios-sdk` SPM package, v12.13.0) is the planned backend. `GoogleService-Info.plist` is committed under `ToDoApp/Others/`.

## Folder layout

`ToDoApp/Others/` holds the app entry point and `GoogleService-Info.plist`. Otherwise the structure mirrors MVVM: `Views/`, `ViewModels/`, `Models/`, plus `Assets.xcassets/`.
