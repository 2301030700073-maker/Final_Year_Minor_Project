package coil3.disk;

import okio.ForwardingFileSystem;
import okio.Path;
import okio.Sink;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DiskLruCache$fileSystem$1 extends ForwardingFileSystem {
    @Override // okio.FileSystem
    public final Sink sink(Path path, boolean z) {
        Path parent = path.parent();
        if (parent != null) {
            createDirectories(parent);
        }
        return this.delegate.sink(path, z);
    }
}
