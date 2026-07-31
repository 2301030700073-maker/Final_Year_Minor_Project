package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.channels.WritableByteChannel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class e extends FileChannel implements SeekableByteChannel {
    public static final /* synthetic */ int e = 0;
    public final FileChannel a;
    public final boolean b;
    public final boolean c;
    public final Path d;

    public e(FileChannel fileChannel, boolean z, boolean z2, Path path) {
        this.a = fileChannel;
        this.b = z;
        this.c = z2;
        this.d = z ? path : null;
    }

    @Override // java.nio.channels.FileChannel
    public final void force(boolean z) {
        this.a.force(z);
    }

    @Override // java.nio.channels.spi.AbstractInterruptibleChannel
    public final void implCloseChannel() {
        this.a.close();
        if (this.b) {
            this.d.toFile().delete();
        }
    }

    @Override // java.nio.channels.FileChannel
    public final FileLock lock(long j, long j2, boolean z) {
        FileLock lock = this.a.lock(j, j2, z);
        if (lock == null) {
            return null;
        }
        return new f(lock, this);
    }

    @Override // java.nio.channels.FileChannel
    public final MappedByteBuffer map(FileChannel.MapMode mapMode, long j, long j2) {
        return this.a.map(mapMode, j, j2);
    }

    @Override // java.nio.channels.FileChannel
    public final FileChannel position(long j) {
        FileChannel position = this.a.position(j);
        return position instanceof e ? (e) position : new e(position, false, false, null);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        return this.a.read(byteBuffer);
    }

    @Override // java.nio.channels.FileChannel
    public final long size() {
        return this.a.size();
    }

    @Override // java.nio.channels.FileChannel
    public final long transferFrom(ReadableByteChannel readableByteChannel, long j, long j2) {
        return this.a.transferFrom(readableByteChannel, j, j2);
    }

    @Override // java.nio.channels.FileChannel
    public final long transferTo(long j, long j2, WritableByteChannel writableByteChannel) {
        return this.a.transferTo(j, j2, writableByteChannel);
    }

    @Override // java.nio.channels.FileChannel
    public final FileChannel truncate(long j) {
        FileChannel truncate = this.a.truncate(j);
        return truncate instanceof e ? (e) truncate : new e(truncate, false, false, null);
    }

    @Override // java.nio.channels.FileChannel
    public final FileLock tryLock(long j, long j2, boolean z) {
        FileLock tryLock = this.a.tryLock(j, j2, z);
        if (tryLock == null) {
            return null;
        }
        return new f(tryLock, this);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        boolean z = this.c;
        FileChannel fileChannel = this.a;
        return z ? fileChannel.write(byteBuffer, fileChannel.size()) : fileChannel.write(byteBuffer);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.ScatteringByteChannel
    public final long read(ByteBuffer[] byteBufferArr, int i, int i2) {
        return this.a.read(byteBufferArr, i, i2);
    }

    @Override // java.nio.channels.FileChannel
    public final int read(ByteBuffer byteBuffer, long j) {
        return this.a.read(byteBuffer, j);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.GatheringByteChannel
    public final long write(ByteBuffer[] byteBufferArr, int i, int i2) {
        return this.a.write(byteBufferArr, i, i2);
    }

    @Override // java.nio.channels.FileChannel
    public final long position() {
        return this.a.position();
    }

    @Override // java.nio.channels.FileChannel
    public final int write(ByteBuffer byteBuffer, long j) {
        return this.a.write(byteBuffer, j);
    }
}
