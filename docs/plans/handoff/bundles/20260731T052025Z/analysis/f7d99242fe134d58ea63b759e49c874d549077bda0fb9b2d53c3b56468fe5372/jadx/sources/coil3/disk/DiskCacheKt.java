package coil3.disk;

import coil3.disk.DiskCache;
import java.io.File;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DiskCacheKt {
    public static final DiskCache.Builder directory(DiskCache.Builder builder, File file) {
        String str = Path.DIRECTORY_SEPARATOR;
        return builder.directory(Path.Companion.get$default(file));
    }
}
