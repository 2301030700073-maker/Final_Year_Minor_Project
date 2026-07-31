package okio;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FileHandle implements Closeable {
    public boolean closed;
    public final ReentrantLock lock = new ReentrantLock();
    public int openStreamCount;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FileHandleSource implements Source {
        public boolean closed;
        public final FileHandle fileHandle;
        public long position;

        public FileHandleSource(FileHandle fileHandle, long j) {
            this.fileHandle = fileHandle;
            this.position = j;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            FileHandle fileHandle = this.fileHandle;
            ReentrantLock reentrantLock = fileHandle.lock;
            reentrantLock.lock();
            try {
                int i = fileHandle.openStreamCount - 1;
                fileHandle.openStreamCount = i;
                if (i == 0) {
                    if (fileHandle.closed) {
                        reentrantLock.unlock();
                        fileHandle.protectedClose();
                    }
                }
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // okio.Source
        public final long read(Buffer buffer, long j) {
            long j2;
            long j3;
            buffer.getClass();
            if (this.closed) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("closed");
                return 0L;
            }
            long j4 = this.position;
            if (j < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(j, "byteCount < 0: "));
                return 0L;
            }
            long j5 = j + j4;
            long j6 = j4;
            while (true) {
                if (j6 >= j5) {
                    j2 = -1;
                    break;
                }
                Segment writableSegment$okio = buffer.writableSegment$okio(1);
                j2 = -1;
                int protectedRead = this.fileHandle.protectedRead(j6, writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j5 - j6, 8192 - r13));
                if (protectedRead == -1) {
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        buffer.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                    }
                    if (j4 == j6) {
                        j3 = -1;
                    }
                } else {
                    writableSegment$okio.limit += protectedRead;
                    long j7 = protectedRead;
                    j6 += j7;
                    buffer.size += j7;
                }
            }
            j3 = j6 - j4;
            if (j3 != j2) {
                this.position += j3;
            }
            return j3;
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return Timeout.NONE;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.openStreamCount != 0) {
                return;
            }
            reentrantLock.unlock();
            protectedClose();
        } finally {
            reentrantLock.unlock();
        }
    }

    public abstract void protectedClose();

    public abstract int protectedRead(long j, byte[] bArr, int i, int i2);

    public abstract long protectedSize();

    public final long size() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            reentrantLock.unlock();
            return protectedSize();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final FileHandleSource source(long j) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            this.openStreamCount++;
            reentrantLock.unlock();
            return new FileHandleSource(this, j);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
