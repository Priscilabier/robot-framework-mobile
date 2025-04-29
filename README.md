# Robot Framework Mobile Testing Project

This project contains automated tests for mobile applications using Robot Framework and Appium.

## Project Structure

```
robot-framework-mobile/
├── config/              # Configuration files
├── resources/           # Resource files and keywords
├── tests/              # Test cases
├── results/            # Test results and reports
└── docs/               # Documentation
```

## Prerequisites

- Python 3.x
- Node.js and npm
- Android Studio
- Appium
- Android SDK
- Java Development Kit (JDK)

## Setup

1. Install Python dependencies:
```bash
pip install -r requirements.txt
```

2. Install Appium:
```bash
npm install -g appium
```

3. Set up Android environment:
- Install Android Studio
- Set up Android SDK
- Create an Android Virtual Device (AVD)

4. Configure environment variables in `.env` file

## Running Tests

1. Start Appium server:
```bash
appium
```

2. Start Android emulator:
```bash
emulator -avd <your_emulator_name>
```

3. Make the run script executable and run tests:
```bash
chmod +x run_tests.sh
./run_tests.sh
```

## Test Results

Test results are stored in the `results/` directory:
- `log.html`: Detailed execution log
- `report.html`: Test execution report
- Screenshots of test failures (if any)

## Documentation

See `docs/` directory for detailed documentation:
- `setup.md`: Setup instructions
- `test_design.md`: Test design documentation
