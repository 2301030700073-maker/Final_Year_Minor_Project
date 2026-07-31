package coil3.decode;

import coil3.decode.ImageSource;
import coil3.util.UtilsKt;
import java.io.Closeable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileImageSource implements ImageSource {
    private final AutoCloseable closeable;
    private final String diskCacheKey;
    private final Path file;
    private final FileSystem fileSystem;
    private boolean isClosed;
    private final Object lock = new Object();
    private final ImageSource.Metadata metadata;
    private BufferedSource source;

    public FileImageSource(Path path, FileSystem fileSystem, String str, AutoCloseable autoCloseable, ImageSource.Metadata metadata) {
        this.file = path;
        this.fileSystem = fileSystem;
        this.diskCacheKey = str;
        this.closeable = autoCloseable;
        this.metadata = metadata;
    }

    private final void assertNotClosed() {
        if (this.isClosed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            try {
                this.isClosed = true;
                BufferedSource bufferedSource = this.source;
                if (bufferedSource != null) {
                    UtilsKt.closeQuietly((Closeable) bufferedSource);
                }
                AutoCloseable autoCloseable = this.closeable;
                if (autoCloseable != null) {
                    UtilsKt.closeQuietly(autoCloseable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // coil3.decode.ImageSource
    public Path file() {
        Path path;
        synchronized (this.lock) {
            assertNotClosed();
            path = this.file;
        }
        return path;
    }

    @Override // coil3.decode.ImageSource
    public Path fileOrNull() {
        return file();
    }

    public final String getDiskCacheKey$coil_core() {
        return this.diskCacheKey;
    }

    public final Path getFile$coil_core() {
        return this.file;
    }

    @Override // coil3.decode.ImageSource
    public FileSystem getFileSystem() {
        return this.fileSystem;
    }

    @Override // coil3.decode.ImageSource
    public ImageSource.Metadata getMetadata() {
        return this.metadata;
    }

    @Override // coil3.decode.ImageSource
    public BufferedSource source() {
        synchronized (this.lock) {
            assertNotClosed();
            BufferedSource bufferedSource = this.source;
            if (bufferedSource != null) {
                return bufferedSource;
            }
            RealBufferedSource buffer = Okio.buffer(getFileSystem().source(this.file));
            this.source = buffer;
            return buffer;
        }
    }

    @Override // coil3.decode.ImageSource
    public BufferedSource sourceOrNull() {
        BufferedSource bufferedSource;
        synchronized (this.lock) {
            assertNotClosed();
            bufferedSource = this.source;
        }
        return bufferedSource;
    }
}
