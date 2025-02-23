# Unhandled SocketException in Dart Async Operations

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations, specifically focusing on `SocketException` which occurs during network requests.

The `bug.dart` file shows code that fetches data from an API.  While it includes a `try-catch` block, it fails to handle specific exception types like `SocketException`. This can result in silent failures or crashes that are difficult to debug.

The `bugSolution.dart` file provides a corrected version with improved exception handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe that general exceptions are caught, but specific network errors are not explicitly handled.  Try disconnecting from the internet to observe the behavior.
3. Run `bugSolution.dart`. Note how specific exception types are now handled, leading to more robust error reporting and recovery.

## Lessons Learned

* Always handle specific exception types in `catch` blocks when dealing with asynchronous operations, especially those involving network requests.
* Logging detailed error information (including stack traces) is crucial for debugging and maintenance.
* Consider using packages like `http` which handle common network errors efficiently and provide useful error information.