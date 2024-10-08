# PicZilla

This app was developed using **Flutter 3.24+1** and tested on both **iOS** and
**Android** platforms. Below are details on the key aspects of the
implementation, areas for improvement, and setup instructions.

## Setup Instructions

1. Add the provided API key to the `.env` file in the root directory of the
   project.
2. Ensure the golden tests are run on macOS as it's the platform they have been
   generated on.

## Features & Functionality

- The app supports infinite scrolling, with a custom implementation for loading
  more images as the user scrolls. No third-party package was used, though the
  implementation could be refined. With more time I would have liked to
  experiment with throttling BLoC events.
- A favourites feature is implemented, but due to time constraints, favourites
  are stored in memory only. With more time, persistence could be added using
  local storage solutions like **SharedPreferences**, **Hive**, or **SQLite**.

## Areas for Improvement (with more time...)

### Persistence & Caching

- Persistence for favourites could be added with more time.
- Caching could be implemented when fetching images from the network to reduce
  unnecessary requests. This includes checking if an image ID already exists in
  a cache before making another network request as well as caching the image
  binary.

### UI/UX Enhancements

- Styling could be enhanced, and some hard-coded values such as dimensions and
  gaps should be extracted into common UI values.
- Custom theming could have been added for better UI consistency.
- A favourite button in the grid tiles for the **favourites** tab was not added
  due to time constraints.
- The search bar could be improved, as I was not fully satisfied with its
  current implementation.

### Error Handling & Retry Policy

- Error handling is only applied to fetching the most popular images when the
  app launches. This has been implemented as an example but in a real app, this
  should be extended to all API calls, as well as any disk operations.
- A retry policy could be added for all those calls too.

## Testing

- **Golden tests** have been provided to cover large parts of the app visually.
  However, these golden tests were generated on **macOS**, so they will only
  work on macOS environments.
- **Unit tests** are implemented for one of the repositories, as an example.
- I would have liked to add more **widget** and **integration** tests if time
  had permitted.
- The **PageObject pattern** was used to make tests more readable and
  maintainable. Page objects could later be reused in widget/integration tests.

## Code Quality & Tooling

- Code quality could be improved by adding **static analysis** and **linting**
  tools.

  Some `// NOTE` comments have been added throughout the code to reflect some of
  those suggested improvements.
