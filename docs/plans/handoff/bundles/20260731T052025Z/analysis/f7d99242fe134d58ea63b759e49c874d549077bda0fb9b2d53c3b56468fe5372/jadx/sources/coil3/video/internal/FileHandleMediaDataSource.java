package coil3.video.internal;

import android.media.MediaDataSource;
import java.util.concurrent.locks.ReentrantLock;
import okio.FileHandle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileHandleMediaDataSource extends MediaDataSource {
    private final FileHandle handle;

    public FileHandleMediaDataSource(FileHandle fileHandle) {
        this.handle = fileHandle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.handle.close();
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        return this.handle.size();
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) {
        FileHandle fileHandle = this.handle;
        fileHandle.getClass();
        bArr.getClass();
        ReentrantLock reentrantLock = fileHandle.lock;
        reentrantLock.lock();
        try {
            if (fileHandle.closed) {
                throw new IllegalStateException("closed");
            }
            reentrantLock.unlock();
            return fileHandle.protectedRead(j, bArr, i, i2);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
