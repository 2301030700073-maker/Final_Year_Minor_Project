package net.thunderbird.core.file;

import android.content.ContentResolver;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.eygraber.uri.Uri;
import java.io.File;
import java.io.IOException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidFileSystemManager {
    public final ContentResolver contentResolver;

    public AndroidFileSystemManager(ContentResolver contentResolver) {
        this.contentResolver = contentResolver;
    }

    public static void createDirectories(Uri uri) {
        android.net.Uri androidUri = Util.toAndroidUri(uri);
        String scheme = androidUri.getScheme();
        if (scheme != null && !scheme.equals(UtilsKt.SCHEME_FILE)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Unsupported URI scheme for creating directories: ".concat(scheme));
            return;
        }
        String path = androidUri.getPath();
        if (path == null) {
            UriKt$$ExternalSyntheticBUOutline0.m(uri, "Missing path for URI: ");
            return;
        }
        File file = new File(path);
        if (file.exists() || file.mkdirs() || file.exists()) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(uri, "Failed to create directories for: ");
    }

    public final void delete(Uri uri) {
        try {
            if (this.contentResolver.delete(Util.toAndroidUri(uri), null, null) != -1) {
                return;
            }
            throw new IOException("Failed to delete file at: " + uri);
        } catch (IllegalArgumentException e) {
            throw new IOException("Invalid URI for deletion: " + uri, e);
        } catch (SecurityException e2) {
            throw new IOException("Permission denied to delete file at: " + uri, e2);
        }
    }
}
