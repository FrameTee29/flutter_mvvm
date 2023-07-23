// import 'package:flutter/foundation.dart';
// import 'package:riverpod/riverpod.dart';
// import 'package:your_app_name/models/user.dart';
// import 'package:your_app_name/services/authentication_service.dart';

// class HomeViewModel extends ChangeNotifier {
//   final AuthenticationService _authenticationService;

//   HomeViewModel(this._authenticationService);

//   User? _currentUser;
//   User? get currentUser => _currentUser;

//   // A method to fetch the current user's data and update the state
//   Future<void> fetchCurrentUser() async {
//     try {
//       // Fetch user data from the authentication service (this is just a placeholder)
//       _currentUser = await _authenticationService.getCurrentUser();
//       notifyListeners();
//     } catch (e) {
//       // Handle errors here (e.g., show an error message)
//       print('Error fetching user data: $e');
//     }
//   }

//   // A method to sign out the user and update the state
//   Future<void> signOut() async {
//     try {
//       // Perform sign out using the authentication service (this is just a placeholder)
//       await _authenticationService.signOut();
//       _currentUser = null;
//       notifyListeners();
//     } catch (e) {
//       // Handle errors here (e.g., show an error message)
//       print('Error signing out: $e');
//     }
//   }
// }

// // Riverpod provider for the HomeViewModel
// final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>((ref) {
//   final authService = ref.read(authenticationServiceProvider);
//   return HomeViewModel(authService);
// });
