package okio;

import androidx.compose.ui.Modifier;
import java.io.Closeable;
import java.io.RandomAccessFile;
import java.util.concurrent.locks.ReentrantLock;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JvmFileHandle implements Closeable {
    public boolean closed;
    public final ReentrantLock lock = new ReentrantLock();
    public int openStreamCount;
    public final RandomAccessFile randomAccessFile;

    public JvmFileHandle(RandomAccessFile randomAccessFile) {
        this.randomAccessFile = randomAccessFile;
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
            synchronized (this) {
                this.randomAccessFile.close();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long size() {
        long length;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            synchronized (this) {
                length = this.randomAccessFile.length();
            }
            return length;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [okio.FileHandle$FileHandleSource] */
    public final FileHandle$FileHandleSource source(final long j) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            this.openStreamCount++;
            reentrantLock.unlock();
            return new Source(this, j) { // from class: okio.FileHandle$FileHandleSource
                public boolean closed;
                public final JvmFileHandle fileHandle;
                public long position;

                {
                    this.fileHandle = this;
                    this.position = j;
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    JvmFileHandle jvmFileHandle = this.fileHandle;
                    if (this.closed) {
                        return;
                    }
                    this.closed = true;
                    ReentrantLock reentrantLock2 = jvmFileHandle.lock;
                    reentrantLock2.lock();
                    try {
                        int i = jvmFileHandle.openStreamCount - 1;
                        jvmFileHandle.openStreamCount = i;
                        if (i == 0) {
                            if (jvmFileHandle.closed) {
                                synchronized (jvmFileHandle) {
                                    jvmFileHandle.randomAccessFile.close();
                                }
                            }
                        }
                    } finally {
                        reentrantLock2.unlock();
                    }
                }

                @Override // okio.Source
                public final long read(long j2, Buffer buffer) {
                    long j3;
                    long j4;
                    int i;
                    buffer.getClass();
                    if (this.closed) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("closed");
                        return 0L;
                    }
                    JvmFileHandle jvmFileHandle = this.fileHandle;
                    long j5 = this.position;
                    if (j2 < 0) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount < 0: ", j2));
                        return 0L;
                    }
                    long j6 = j2 + j5;
                    long j7 = j5;
                    while (true) {
                        if (j7 >= j6) {
                            j3 = -1;
                            break;
                        }
                        Segment writableSegment$okio = buffer.writableSegment$okio(1);
                        byte[] bArr = writableSegment$okio.data;
                        int i2 = writableSegment$okio.limit;
                        j3 = -1;
                        int min = (int) Math.min(j6 - j7, 8192 - i2);
                        synchronized (jvmFileHandle) {
                            bArr.getClass();
                            jvmFileHandle.randomAccessFile.seek(j7);
                            i = 0;
                            while (true) {
                                if (i >= min) {
                                    break;
                                }
                                int read = jvmFileHandle.randomAccessFile.read(bArr, i2, min - i);
                                if (read != -1) {
                                    i += read;
                                } else if (i == 0) {
                                    i = -1;
                                }
                            }
                        }
                        if (i == -1) {
                            if (writableSegment$okio.pos == writableSegment$okio.limit) {
                                buffer.head = writableSegment$okio.pop();
                                SegmentPool.recycle(writableSegment$okio);
                            }
                            if (j5 == j7) {
                                j4 = -1;
                            }
                        } else {
                            writableSegment$okio.limit += i;
                            long j8 = i;
                            j7 += j8;
                            buffer.size += j8;
                        }
                    }
                    j4 = j7 - j5;
                    if (j4 != j3) {
                        this.position += j4;
                    }
                    return j4;
                }

                @Override // okio.Source
                public final Timeout timeout() {
                    return Timeout.NONE;
                }
            };
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
