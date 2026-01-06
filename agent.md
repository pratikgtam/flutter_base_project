# Flutter Base Project - Agent Documentation

## Project Overview

This is a Flutter base project template designed for building scalable mobile applications using clean architecture principles. The project is configured with essential dependencies and follows best practices for Flutter development.

## Tech Stack

### Core Technologies
- **Flutter SDK**: ^3.10.1
- **Language**: Dart
- **State Management**: flutter_bloc (^9.1.1) with Cubit pattern
- **Navigation**: go_router (^17.0.0)
- **Backend Integration**: Firebase (Auth & Core)
- **HTTP Client**: dio (^5.9.0)

### Key Dependencies
- `firebase_auth` (^6.1.2) - Firebase authentication
- `firebase_core` (^4.2.1) - Firebase core functionality
- `freezed` (^2.4.6) - Code generation for immutable classes
- `json_serializable` (^6.7.1) - JSON serialization
- `build_runner` (^2.4.7) - Code generation tool

## Project Architecture

The project follows **Clean Architecture** principles with clear separation of concerns:

```
lib/
├── core/                    # Core functionality shared across features
│   ├── api/                # API client and utilities
│   │   ├── api_client.dart
│   │   └── json.dart
│   ├── global_providers/   # Global state providers
│   │   ├── global_cubit_provider.dart
│   │   ├── global_providers.dart
│   │   └── global_repository_provider.dart
│   ├── models/             # Shared data models
│   │   ├── page_dto.dart
│   │   ├── result.dart
│   │   └── *.freezed.dart  # Generated files
│   └── router/             # App routing configuration
│       ├── route_names.dart
│       └── routes.dart
├── features/               # Feature modules (domain-driven)
│   ├── auth/              # Authentication feature
│   │   ├── cubits/        # State management
│   │   ├── repositories/  # Data layer
│   │   └── views/         # UI layer
│   ├── dashboard/         # Dashboard feature
│   │   ├── cubits/
│   │   ├── repositories/
│   │   └── views/
│   └── onboarding/        # Onboarding feature
│       ├── cubits/
│       ├── repositories/
│       └── views/
├── shared/                 # Shared UI and constants
│   ├── app_theme.dart     # App theme configuration
│   ├── endpoints.dart     # API endpoints
│   └── widgets/          # Reusable UI widgets
│       └── *.dart         # Shared widget components
└── main.dart              # App entry point
```

## Architecture Layers

### 1. **Features Layer**
Each feature follows the same structure:
- **Views**: UI components and screens (UI only, no business logic)
- **Cubits**: State management using BLoC pattern (business logic)
- **Repositories**: Data access and business logic

**Critical Separation Rule**:
- **Views** should ONLY contain UI code and delegate all business logic to Cubits
- **Cubits** handle all business logic, state management, and orchestration
- **Repositories** handle data operations and API calls
- Never mix business logic directly in UI widgets

### 2. **Core Layer**
- **API**: Dio-based HTTP client for API communication
- **Global Providers**: Global state management setup
- **Models**: Shared data models using Freezed for immutability
- **Router**: Navigation configuration using go_router

### 3. **Shared Layer**
- **Widgets**: Reusable UI components that can be used across features
- **Utilities**: Reusable functions and helpers
- Theme configuration
- Constants (endpoints, etc.)

**Reusability Principle**: 
- If a widget or function is used in 2+ places, it MUST be moved to `shared/widgets/` or `shared/utils/`
- Create new files in the shared layer when components/functions are reusable
- Never duplicate widget or function code - always extract and reuse

## Development Workflow

### Code Generation

The project uses `build_runner` for code generation. To generate code:

```bash
# Run build runner for Freezed and JSON serialization
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode for continuous generation
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Feature Generation

Use the Makefile to scaffold new features:

```bash
make generate_feature \
  feature=featureName \
  repository=repositoryName \
  view=viewName \
  cubit=cubitName
```

This will:
1. Generate the feature structure (cubits, repositories, views)
2. Format the code
3. Run build_runner

### Environment Setup

1. Copy `.env.example` to `.env` and configure your environment variables
2. Install dependencies: `flutter pub get`
3. Run code generation if needed: `flutter pub run build_runner build`

## State Management Pattern

The project uses **BLoC/Cubit** pattern:

1. **Cubit**: Manages state for specific features
2. **Repository**: Handles data fetching and business logic
3. **View**: Displays UI and reacts to state changes

Example flow:

```
View → Cubit → Repository → API → Repository → Cubit → View
```

## Routing

Navigation is handled by `go_router`:
- Route names defined in `core/router/route_names.dart`
- Route configuration in `core/router/routes.dart`

## Firebase Integration

Firebase is integrated and configurable:
- Firebase Core for initialization
- Firebase Auth for authentication

To enable Firebase:
1. Enable Firebase initialization in `main.dart`
2. Configure Firebase for your platforms (iOS, Android, Web)

## Assets

Assets are configured in `pubspec.yaml`:
- Images: `assets/images/`

## Testing

Tests are located in the `test/` directory. Run tests with:
```bash
flutter test
```

## Linting

The project uses `flutter_lints` (^6.0.0) for code quality:
- Configuration in `analysis_options.yaml`
- Encourages good coding practices

## Platform Support

The project supports:
- Android
- iOS
- Web
- Linux
- macOS
- Windows

## Best Practices

1. **Feature-First Organization**: Group code by feature, not by layer
2. **Immutable Models**: Use Freezed for data classes
3. **Type Safety**: Leverage Dart's type system
4. **Code Generation**: Use build_runner for boilerplate
5. **Clean Architecture**: Separate concerns (UI, business logic, data)
6. **BLoC Pattern**: Predictable state management
7. **DRY Principle**: Never duplicate code - always extract and reuse
8. **Separation of Concerns**: Business logic in Cubits/Repositories, UI in Views
9. **Reusability First**: Create shared widgets/utils before duplicating code
10. **File Organization**: Create new files when extracting reusable components

## Getting Started

1. Clone the repository
2. Copy `.env.example` to `.env`
3. Run `flutter pub get`
4. Run `flutter pub run build_runner build` (if needed)
5. Run `flutter run` to start the app

## Additional Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [BLoC Library](https://bloclibrary.dev/)
- [Go Router Documentation](https://pub.dev/packages/go_router)
- [Freezed Documentation](https://pub.dev/packages/freezed)

## Notes for AI Agents

### Code Generation & Structure
- Always run code generation after modifying models or creating new ones
- Follow the existing feature structure when adding new features
- Use the Makefile for feature generation when possible
- Respect the clean architecture layers
- Keep features independent and loosely coupled
- Use Freezed for all data models
- Follow the BLoC/Cubit pattern for state management
