package okio;

import java.io.Closeable;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JvmFileHandle extends FileHandle {
    public final /* synthetic */ int $r8$classId;
    public final Closeable randomAccessFile;

    public /* synthetic */ JvmFileHandle(Closeable closeable, int i) {
        this.$r8$classId = i;
        this.randomAccessFile = closeable;
    }

    private final synchronized void protectedClose$okio$JvmFileHandle() {
        ((RandomAccessFile) this.randomAccessFile).close();
    }

    private final synchronized void protectedClose$okio$NioFileSystemFileHandle() {
        ((FileChannel) this.randomAccessFile).close();
    }

    private final synchronized int protectedRead$okio$JvmFileHandle(long j, byte[] bArr, int i, int i2) {
        bArr.getClass();
        ((RandomAccessFile) this.randomAccessFile).seek(j);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int read = ((RandomAccessFile) this.randomAccessFile).read(bArr, i, i2 - i3);
            if (read != -1) {
                i3 += read;
            } else if (i3 == 0) {
                return -1;
            }
        }
        return i3;
    }

    private final synchronized int protectedRead$okio$NioFileSystemFileHandle(long j, byte[] bArr, int i, int i2) {
        bArr.getClass();
        ((FileChannel) this.randomAccessFile).position(j);
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int read = ((FileChannel) this.randomAccessFile).read(wrap);
            if (read != -1) {
                i3 += read;
            } else if (i3 == 0) {
                return -1;
            }
        }
        return i3;
    }

    private final synchronized long protectedSize$okio$JvmFileHandle() {
        return ((RandomAccessFile) this.randomAccessFile).length();
    }

    private final synchronized long protectedSize$okio$NioFileSystemFileHandle() {
        return ((FileChannel) this.randomAccessFile).size();
    }

    @Override // okio.FileHandle
    public final synchronized void protectedClose() {
        switch (this.$r8$classId) {
            case 0:
                protectedClose$okio$JvmFileHandle();
                break;
            default:
                protectedClose$okio$NioFileSystemFileHandle();
                break;
        }
    }

    @Override // okio.FileHandle
    public final synchronized int protectedRead(long j, byte[] bArr, int i, int i2) {
        switch (this.$r8$classId) {
            case 0:
                return protectedRead$okio$JvmFileHandle(j, bArr, i, i2);
            default:
                return protectedRead$okio$NioFileSystemFileHandle(j, bArr, i, i2);
        }
    }

    @Override // okio.FileHandle
    public final synchronized long protectedSize() {
        switch (this.$r8$classId) {
            case 0:
                return protectedSize$okio$JvmFileHandle();
            default:
                return protectedSize$okio$NioFileSystemFileHandle();
        }
    }
}
