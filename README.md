## Project Structure

```plaintext
ostello/
├── lib/
│   ├── core/                      # Core Layer - Utility classes, constants, helpers
│   ├── data/                      # Data Layer - Data access and repository logic
│   ├── logic/                     # Domain Layer - Business logic and use cases
│   ├── model/                     # Model Layer - Data models/entities
│   ├── ui/                        # Presentation Layer - UI, Widgets, and Pages
│   │   ├── pages/                 # Pages (student, teacher, login, etc.)
│   │   │   ├── login_part.dart    # Login Page
│   │   │   ├── student.dart       # Student Page
│   │   │   └── teacher.dart       # Teacher Page
│   │   ├── widgets/               # Reusable Widgets
│   │   │   ├── askquestion.dart  # Ask Question Widget
│   │   │   ├── buildchat_teacher.dart # Chat Widget for Teacher
│   │   │   ├── doubts_tab.dart   # Doubts Tab Widget
│   │   │   └── teacher_doubt.dart # Teacher Doubt Widget
│   │   └── main.dart              # Main entry point of the app
└── assets/                        # Assets like images, icons, etc.
    └── images/
        ├── background.jpg         # Background image for the app
        └── user1.jpg              # Example user image




## Screenshots

Here are some screenshots of the app interface:

<img src="https://github.com/user-attachments/assets/56e3285a-cf1a-4664-a193-759ff6380678" width="300" />
<img src="https://github.com/user-attachments/assets/03b82358-5388-47cd-ad10-ec3a59d654f9" width="300" />
<img src="https://github.com/user-attachments/assets/c0f628c4-49ef-4514-90df-1cdbfb7f2e71" width="300" />
<img src="https://github.com/user-attachments/assets/45238cf4-4670-45f0-9095-bf9f3b7c98e0" width="300" />
<img src="https://github.com/user-attachments/assets/6d73ad7c-7fbf-4175-a11b-7eebab7e76c4" width="300" />

## Getting Started

To get started with this project, follow the steps below:

### Prerequisites

Make sure you have the following installed on your machine:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) (or any other IDE for Flutter development)

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-repo/ostello.git
    ```

2. Navigate to the project directory:

    ```bash
    cd ostello
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```
