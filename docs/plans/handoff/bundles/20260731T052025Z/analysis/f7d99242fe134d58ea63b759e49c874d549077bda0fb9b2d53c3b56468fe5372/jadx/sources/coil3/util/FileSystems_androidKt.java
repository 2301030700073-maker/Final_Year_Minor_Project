package coil3.util;

import android.os.StatFs;
import java.io.File;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileSystems_androidKt {
    public static final long remainingFreeSpaceBytes(FileSystem fileSystem, Path path) {
        File file = path.toFile();
        file.mkdir();
        StatFs statFs = new StatFs(file.getAbsolutePath());
        return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
    }
}
