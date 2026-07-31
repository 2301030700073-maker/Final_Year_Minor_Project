package coil3.disk;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.util.FileSystems_androidKt;
import coil3.util.FileSystems_nonJsCommonKt;
import kotlin.Deprecated;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DiskCache {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Builder {
        private Path directory;
        private long maxSizeBytes;
        private FileSystem fileSystem = FileSystems_nonJsCommonKt.defaultFileSystem();
        private double maxSizePercent = 0.02d;
        private long minimumMaxSizeBytes = 10485760;
        private long maximumMaxSizeBytes = 262144000;
        private CoroutineContext cleanupCoroutineContext = EmptyCoroutineContext.INSTANCE;

        public final DiskCache build() {
            long j;
            Path path = this.directory;
            if (path == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("directory == null");
                return null;
            }
            double d = this.maxSizePercent;
            if (d > 0.0d) {
                try {
                    j = RangesKt.coerceIn((long) (d * FileSystems_androidKt.remainingFreeSpaceBytes(this.fileSystem, path)), this.minimumMaxSizeBytes, this.maximumMaxSizeBytes);
                } catch (Exception unused) {
                    j = this.minimumMaxSizeBytes;
                }
            } else {
                j = this.maxSizeBytes;
            }
            return new RealDiskCache(j, path, this.fileSystem, this.cleanupCoroutineContext);
        }

        public final Builder cleanupCoroutineContext(CoroutineContext coroutineContext) {
            this.cleanupCoroutineContext = coroutineContext;
            return this;
        }

        @Deprecated
        public final Builder cleanupDispatcher(CoroutineDispatcher coroutineDispatcher) {
            return cleanupCoroutineContext(coroutineDispatcher);
        }

        public final Builder directory(Path path) {
            this.directory = path;
            return this;
        }

        public final Builder fileSystem(FileSystem fileSystem) {
            this.fileSystem = fileSystem;
            return this;
        }

        public final Builder maxSizeBytes(long j) {
            if (j <= 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("size must be > 0.");
                return null;
            }
            this.maxSizePercent = 0.0d;
            this.maxSizeBytes = j;
            return this;
        }

        public final Builder maxSizePercent(double d) {
            if (0.0d > d || d > 1.0d) {
                UriKt$$ExternalSyntheticBUOutline0.m("percent must be in the range [0.0, 1.0].");
                return null;
            }
            this.maxSizeBytes = 0L;
            this.maxSizePercent = d;
            return this;
        }

        public final Builder maximumMaxSizeBytes(long j) {
            if (j > 0) {
                this.maximumMaxSizeBytes = j;
                return this;
            }
            UriKt$$ExternalSyntheticBUOutline0.m("size must be > 0.");
            return null;
        }

        public final Builder minimumMaxSizeBytes(long j) {
            if (j > 0) {
                this.minimumMaxSizeBytes = j;
                return this;
            }
            UriKt$$ExternalSyntheticBUOutline0.m("size must be > 0.");
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Editor {
        void abort();

        void commit();

        Snapshot commitAndOpenSnapshot();

        Path getData();

        Path getMetadata();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Snapshot extends AutoCloseable {
        @Override // java.lang.AutoCloseable
        void close();

        Editor closeAndOpenEditor();

        Path getData();

        Path getMetadata();
    }

    void clear();

    Path getDirectory();

    FileSystem getFileSystem();

    long getMaxSize();

    long getSize();

    Editor openEditor(String str);

    Snapshot openSnapshot(String str);

    boolean remove(String str);

    void shutdown();
}
