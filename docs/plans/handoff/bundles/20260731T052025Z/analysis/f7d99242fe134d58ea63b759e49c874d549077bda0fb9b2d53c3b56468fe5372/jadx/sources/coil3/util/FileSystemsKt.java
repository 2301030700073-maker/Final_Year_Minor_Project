package coil3.util;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.random.AbstractPlatformRandom;
import kotlin.random.Random;
import kotlin.text.StringsKt;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileSystemsKt {
    public static final void createFile(FileSystem fileSystem, Path path, boolean z) {
        if (z) {
            UtilsKt.closeQuietly((Closeable) fileSystem.sink(path, true));
        } else {
            if (fileSystem.exists(path)) {
                return;
            }
            UtilsKt.closeQuietly((Closeable) fileSystem.sink(path));
        }
    }

    public static /* synthetic */ void createFile$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        createFile(fileSystem, path, z);
    }

    public static final Path createTempFile(FileSystem fileSystem) {
        Path resolve;
        do {
            Path path = FileSystem.SYSTEM_TEMPORARY_DIRECTORY;
            AbstractPlatformRandom abstractPlatformRandom = Random.defaultRandom;
            resolve = path.resolve("tmp_".concat(ResultKt.ulongToString(10, Random.defaultRandom.getImpl().nextLong())));
        } while (fileSystem.exists(resolve));
        createFile(fileSystem, resolve, true);
        return resolve;
    }

    public static final void deleteContents(FileSystem fileSystem, Path path) {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.list(path)) {
                try {
                    if (fileSystem.metadata(path2).isDirectory) {
                        deleteContents(fileSystem, path2);
                    }
                    fileSystem.delete(path2);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static final String getExtension(Path path) {
        return StringsKt.substringAfterLast('.', path.name(), "");
    }
}
