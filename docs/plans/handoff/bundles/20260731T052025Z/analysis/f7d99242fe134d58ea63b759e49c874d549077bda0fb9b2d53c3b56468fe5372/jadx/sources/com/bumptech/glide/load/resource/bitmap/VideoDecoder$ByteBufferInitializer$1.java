package com.bumptech.glide.load.resource.bitmap;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VideoDecoder$ByteBufferInitializer$1 extends MediaDataSource {
    public final /* synthetic */ ByteBuffer val$data;

    public VideoDecoder$ByteBufferInitializer$1(ByteBuffer byteBuffer) {
        this.val$data = byteBuffer;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.val$data.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j, byte[] bArr, int i, int i2) {
        ByteBuffer byteBuffer = this.val$data;
        if (j >= byteBuffer.limit()) {
            return -1;
        }
        byteBuffer.position((int) j);
        int min = Math.min(i2, byteBuffer.remaining());
        byteBuffer.get(bArr, i, min);
        return min;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
