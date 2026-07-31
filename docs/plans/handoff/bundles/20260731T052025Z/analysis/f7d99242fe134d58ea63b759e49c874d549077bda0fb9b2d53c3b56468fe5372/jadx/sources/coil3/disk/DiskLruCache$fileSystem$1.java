package coil3.disk;

import okio.FileSystem;
import okio.ForwardingFileSystem;
import okio.Path;
import okio.Sink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DiskLruCache$fileSystem$1 extends ForwardingFileSystem {
    public DiskLruCache$fileSystem$1(FileSystem fileSystem) {
        super(fileSystem);
    }

    @Override // okio.ForwardingFileSystem, okio.FileSystem
    public Sink sink(Path path, boolean z) {
        Path parent = path.parent();
        if (parent != null) {
            createDirectories(parent);
        }
        return super.sink(path, z);
    }
}
