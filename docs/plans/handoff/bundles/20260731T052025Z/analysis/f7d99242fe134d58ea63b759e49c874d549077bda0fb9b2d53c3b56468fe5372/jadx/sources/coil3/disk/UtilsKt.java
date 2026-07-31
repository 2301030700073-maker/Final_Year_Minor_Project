package coil3.disk;

import coil3.disk.DiskCache;
import kotlin.Lazy;
import kotlin.SynchronizedLazyImpl;
import okio.FileSystem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtilsKt {
    private static final Lazy instance$delegate = new SynchronizedLazyImpl(new UtilsKt$$ExternalSyntheticLambda0(0));

    private static final DiskCache getInstance() {
        return (DiskCache) instance$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiskCache instance_delegate$lambda$0() {
        return new DiskCache.Builder().directory(FileSystem.SYSTEM_TEMPORARY_DIRECTORY.resolve("coil3_disk_cache")).build();
    }

    public static final DiskCache singletonDiskCache() {
        return getInstance();
    }
}
