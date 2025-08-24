# BondShield

Tenant-focused property inspection app prototype.

## Status Boards

### Yapılacaklar (To-Do)
| ID | Başlık | Öncelik | Sahip | Son Tarih |
|----|--------|---------|-------|-----------|
| T1 | Implement media capture | High | Dev | 2025-09-01 |

### Yapıldı (Done)
| ID | Başlık | Açıklama |
|----|--------|----------|
| D1 | Login flow | `ContentView.swift`, `LoginViewModel.swift` |
| D2 | Dashboard and inspection start | `DashboardView.swift`, `StartInspectionView.swift` |

### Planlananlar (Planned / Backlog)
| ID | Başlık | Not |
|----|--------|-----|
| P1 | PDF generation | pending design |

## Technologies & Libraries
- iOS 17
- Swift 5
- SwiftUI
- SPM
- XCTest

## Architecture & Flow
MVVM with dependency injection via initializers. Navigation: Login -> Dashboard -> Start Inspection.

## Setup & Run
- Xcode 15+
- Open `bondshield_v1.xcodeproj`
- Run scheme `bondshield_v1`

## Quality Gates
- SwiftLint sample config provided separately.
- Run tests: `xcodebuild test -scheme bondshield_v1 -destination 'platform=iOS Simulator,name=iPhone 14'`
- Target coverage: 70%

## Versioning & Commits
Use Conventional Commits, e.g., `feat: add login view`, `fix: correct navigation`, `test: add login view model tests`.

## Security / Privacy Notes
No sensitive data persisted; mock auth only.

## Assumptions
- Placeholder actions will be implemented later.

