package coil3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Uri_androidKt {
    public static final android.net.Uri toAndroidUri(Uri uri) {
        return android.net.Uri.parse(uri.toString());
    }

    public static final Uri toCoilUri(android.net.Uri uri) {
        return UriKt.toUri$default(uri.toString(), null, 1, null);
    }
}
