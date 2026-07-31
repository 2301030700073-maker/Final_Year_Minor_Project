package coil3.disk;

import coil3.disk.DiskLruCache;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealDiskCache {
    public final DiskLruCache cache;
    public final FileSystem fileSystem;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RealSnapshot implements AutoCloseable {
        public final DiskLruCache.Snapshot snapshot;

        public RealSnapshot(DiskLruCache.Snapshot snapshot) {
            this.snapshot = snapshot;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.snapshot.close();
        }
    }

    public RealDiskCache(long j, FileSystem fileSystem, Path path) {
        this.fileSystem = fileSystem;
        this.cache = new DiskLruCache(j, fileSystem, path);
    }
}
