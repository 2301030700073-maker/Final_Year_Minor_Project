package coil3.decode;

import androidx.compose.ui.node.Owner;
import androidx.room.Room;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import okio.RealBufferedSource;
import okio.Source;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FileImageSource implements ImageSource {
    public final AutoCloseable closeable;
    public final String diskCacheKey;
    public final Path file;
    public final FileSystem fileSystem;
    public boolean isClosed;
    public final Object lock = new Object();
    public RealBufferedSource source;

    public FileImageSource(Path path, FileSystem fileSystem, String str, AutoCloseable autoCloseable) {
        this.file = path;
        this.fileSystem = fileSystem;
        this.diskCacheKey = str;
        this.closeable = autoCloseable;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.lock) {
            this.isClosed = true;
            RealBufferedSource realBufferedSource = this.source;
            if (realBufferedSource != null) {
                try {
                    realBufferedSource.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            }
            AutoCloseable autoCloseable = this.closeable;
            if (autoCloseable != null) {
                try {
                    Owner.CC.m(autoCloseable);
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused2) {
                }
            }
        }
    }

    @Override // coil3.decode.ImageSource
    public final Path fileOrNull() {
        Path path;
        synchronized (this.lock) {
            if (this.isClosed) {
                throw new IllegalStateException("closed");
            }
            path = this.file;
        }
        return path;
    }

    @Override // coil3.decode.ImageSource
    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    @Override // coil3.decode.ImageSource
    public final Room getMetadata() {
        return null;
    }

    @Override // coil3.decode.ImageSource
    public final BufferedSource source() {
        synchronized (this.lock) {
            if (this.isClosed) {
                throw new IllegalStateException("closed");
            }
            RealBufferedSource realBufferedSource = this.source;
            if (realBufferedSource != null) {
                return realBufferedSource;
            }
            Source source = this.fileSystem.source(this.file);
            source.getClass();
            RealBufferedSource realBufferedSource2 = new RealBufferedSource(source);
            this.source = realBufferedSource2;
            return realBufferedSource2;
        }
    }
}
