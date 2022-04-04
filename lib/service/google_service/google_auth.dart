import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    final userCredential = await auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    assert(!user!.isAnonymous);
    assert(await user!.getIdToken() != null);
    print(user);
  } catch (e) {
    print(e);
  }
}

Future<String> signOut() async {
  await googleSignIn.signOut();
  await auth.signOut();
  return "Success";
}
