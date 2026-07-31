package coil3.decode;

import coil3.decode.ImageSource;
import coil3.util.FileSystemsKt;
import coil3.util.UtilsKt;
import java.io.Closeable;
import kotlin.ResultKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SourceImageSource implements ImageSource {
    private Path file;
    private final FileSystem fileSystem;
    private boolean isClosed;
    private final Object lock = new Object();
    private final ImageSource.Metadata metadata;
    private BufferedSource source;

    public SourceImageSource(BufferedSource bufferedSource, FileSystem fileSystem, ImageSource.Metadata metadata) {
        this.fileSystem = fileSystem;
        this.metadata = metadata;
        this.source = bufferedSource;
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
                Path path = this.file;
                if (path != null) {
                    getFileSystem().delete(path);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // coil3.decode.ImageSource
    public Path file() {
        Throwable th;
        synchronized (this.lock) {
            assertNotClosed();
            Path path = this.file;
            if (path != null) {
                return path;
            }
            Path createTempFile = FileSystemsKt.createTempFile(getFileSystem());
            RealBufferedSink buffer = Okio.buffer(getFileSystem().sink(createTempFile, false));
            try {
                BufferedSource bufferedSource = this.source;
                bufferedSource.getClass();
                while (bufferedSource.read(buffer.bufferField, 8192L) != -1) {
                    buffer.emitCompleteSegments();
                }
                try {
                    buffer.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    buffer.close();
                } catch (Throwable th4) {
                    ResultKt.addSuppressed(th3, th4);
                }
                th = th3;
            }
            if (th != null) {
                throw th;
            }
            this.source = null;
            this.file = createTempFile;
            return createTempFile;
        }
    }

    @Override // coil3.decode.ImageSource
    public Path fileOrNull() {
        Path path;
        synchronized (this.lock) {
            assertNotClosed();
            path = this.file;
        }
        return path;
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
            FileSystem fileSystem = getFileSystem();
            Path path = this.file;
            path.getClass();
            RealBufferedSource buffer = Okio.buffer(fileSystem.source(path));
            this.source = buffer;
            return buffer;
        }
    }

    @Override // coil3.decode.ImageSource
    public BufferedSource sourceOrNull() {
        return source();
    }
}
