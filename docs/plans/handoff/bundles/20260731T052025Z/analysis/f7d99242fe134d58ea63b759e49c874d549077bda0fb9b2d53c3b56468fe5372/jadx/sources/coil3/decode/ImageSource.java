package coil3.decode;

import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ImageSource extends AutoCloseable {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static abstract class Metadata {
    }

    Path file();

    Path fileOrNull();

    FileSystem getFileSystem();

    Metadata getMetadata();

    BufferedSource source();

    BufferedSource sourceOrNull();
}
