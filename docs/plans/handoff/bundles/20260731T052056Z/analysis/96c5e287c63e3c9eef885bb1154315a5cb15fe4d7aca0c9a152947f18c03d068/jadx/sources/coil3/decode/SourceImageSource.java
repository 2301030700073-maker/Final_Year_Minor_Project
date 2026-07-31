package coil3.decode;

import coil3.util.UtilsKt;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SourceImageSource implements ImageSource {
    public final FileSystem fileSystem;
    public boolean isClosed;
    public final Object lock = new Object();
    public final UtilsKt metadata;
    public final BufferedSource source;

    public SourceImageSource(BufferedSource bufferedSource, FileSystem fileSystem, UtilsKt utilsKt) {
        this.fileSystem = fileSystem;
        this.metadata = utilsKt;
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
    public final UtilsKt getMetadata() {
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
