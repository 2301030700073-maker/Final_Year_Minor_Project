package coil3.disk;

import androidx.compose.runtime.Latch;
import coil3.disk.DiskLruCache;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealDiskCache {
    public final DiskLruCache cache;
    public final FileSystem fileSystem;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RealEditor {
        public final Latch editor;

        public RealEditor(Latch latch) {
            this.editor = latch;
        }

        public final RealSnapshot commitAndOpenSnapshot$1() {
            DiskLruCache.Snapshot snapshot;
            Latch latch = this.editor;
            DiskLruCache diskLruCache = (DiskLruCache) latch.spareList;
            synchronized (diskLruCache.lock) {
                latch.complete(true);
                snapshot = diskLruCache.get(((DiskLruCache.Entry) latch.lock).key);
            }
            if (snapshot != null) {
                return new RealSnapshot(snapshot);
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
