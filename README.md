
# Breakpoint

Breakpoint is a social iOS app designed around a feed-based experience. Users can share posts, explore community content, and create or join groups based on common interests. The app focuses on content sharing, group interaction, and a clean UIKit-based interface.

## Features

- Email & password authentication with Firebase Auth  
- Login with Facebook  
- Feed-based post sharing  
- Explore community content  
- Create and join interest-based groups  
- Group-based content feeds  

## Tech Stack

- Swift  
- UIKit  
- Firebase Authentication  
- Firebase Firestore  
- Firebase Storage  
- Facebook Login SDK  

### 🔐 Authentication

This app supports user authentication via Firebase, including Facebook Login.  
To use Facebook authentication, you must provide your own Facebook App credentials.

## Screenshots

<table>
  <tr>
    <td align="center">
      <strong>Auth Screen</strong><br/>
      <img src="assets/AuthVC.png" width="250"/>
    </td>
    <td align="center">
      <strong>Feed Screen</strong><br/>
      <img src="assets/FeedVC.png" width="250"/>
    </td>
  </tr>
  <tr>
    <td align="center">
      <strong>Create Post Screen</strong><br/>
      <img src="assets/CreatePostVC.png" width="250"/>
    </td>
    <td align="center">
      <strong>Groups Screen</strong><br/>
      <img src="assets/GroupsVC.png" width="250"/>
    </td>
  </tr>
  <tr>
    <td align="center">
      <strong>Create Group Screen</strong><br/>
      <img src="assets/CreateGroupVC.png" width="250"/>
    </td>
    <td align="center">
      <strong>Group Feed Screen</strong><br/>
      <img src="assets/GroupFeedVC.png" width="250"/>
    </td>
  </tr>
</table>

## Installation

1. Clone the repository  
2. Open `BreakpointApp.xcodeproj` in Xcode  
3. Configure Firebase (`GoogleService-Info.plist`)  
4. Configure Facebook Login  
5. Install dependencies if required  
6. Build and run on the simulator or a real device  

## License

This project is licensed under the MIT License.
