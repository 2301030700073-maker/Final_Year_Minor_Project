package coil3.decode;

import androidx.room.Room;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SourceImageSource implements ImageSource {
    public final FileSystem fileSystem;
    public boolean isClosed;
    public final Object lock = new Object();
    public final Room metadata;
    public final BufferedSource source;

    public SourceImageSource(BufferedSource bufferedSource, FileSystem fileSystem, Room room) {
        this.fileSystem = fileSystem;
        this.metadata = room;
        this.source = bufferedSource;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.lock) {
            this.isClosed = true;
            BufferedSource bufferedSource = this.source;
            if (bufferedSource != null) {
                try {
                    bufferedSource.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // coil3.decode.ImageSource
    public final Path fileOrNull() {
        synchronized (this.lock) {
            if (this.isClosed) {
                throw new IllegalStateException("closed");
            }
        }
        return null;
    }

    @Override // coil3.decode.ImageSource
    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    @Override // coil3.decode.ImageSource
    public final Room getMetadata() {
        return this.metadata;
    }

    @Override // coil3.decode.ImageSource
    public final BufferedSource source() {
        BufferedSource bufferedSource;
        synchronized (this.lock) {
            try {
                if (this.isClosed) {
                    throw new IllegalStateException("closed");
                }
                bufferedSource = this.source;
                if (bufferedSource == null) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bufferedSource;
    }
}
