package coil3.decode;

import coil3.decode.ImageSource;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageSourceKt {
    public static final ImageSource ImageSource(Path path, FileSystem fileSystem, String str, AutoCloseable autoCloseable, ImageSource.Metadata metadata) {
        return new FileImageSource(path, fileSystem, str, autoCloseable, metadata);
    }

    public static /* synthetic */ ImageSource ImageSource$default(Path path, FileSystem fileSystem, String str, AutoCloseable autoCloseable, ImageSource.Metadata metadata, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            autoCloseable = null;
        }
        if ((i & 16) != 0) {
            metadata = null;
        }
        return ImageSource(path, fileSystem, str, autoCloseable, metadata);
    }

    public static final ImageSource ImageSource(BufferedSource bufferedSource, FileSystem fileSystem, ImageSource.Metadata metadata) {
        return new SourceImageSource(bufferedSource, fileSystem, metadata);
    }

    public static /* synthetic */ ImageSource ImageSource$default(BufferedSource bufferedSource, FileSystem fileSystem, ImageSource.Metadata metadata, int i, Object obj) {
        if ((i & 4) != 0) {
            metadata = null;
        }
        return ImageSource(bufferedSource, fileSystem, metadata);
    }
}
