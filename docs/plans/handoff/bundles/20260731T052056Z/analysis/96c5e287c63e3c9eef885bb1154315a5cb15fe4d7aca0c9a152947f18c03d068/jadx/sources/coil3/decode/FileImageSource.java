package coil3.decode;

import coil3.size.ViewSizeResolver$CC;
import coil3.util.UtilsKt;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio__OkioKt;
import okio.Path;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                    ViewSizeResolver$CC.m$1(autoCloseable);
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
    public final UtilsKt getMetadata() {
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
            RealBufferedSource buffer = Okio__OkioKt.buffer(this.fileSystem.source(this.file));
            this.source = buffer;
            return buffer;
        }
    }
}
