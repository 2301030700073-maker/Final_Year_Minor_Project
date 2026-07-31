package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.gifdecoder.GifHeaderParser;
import java.util.ArrayDeque;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DiskCacheWriteLocker$WriteLockPool {
    public final ArrayDeque pool;

    public DiskCacheWriteLocker$WriteLockPool(int i) {
        switch (i) {
            case 1:
                this.pool = new ArrayDeque(0);
                break;
            default:
                this.pool = new ArrayDeque();
                break;
        }
    }

    public DiskCacheWriteLocker$WriteLock obtain() {
        DiskCacheWriteLocker$WriteLock diskCacheWriteLocker$WriteLock;
        synchronized (this.pool) {
            diskCacheWriteLocker$WriteLock = (DiskCacheWriteLocker$WriteLock) this.pool.poll();
        }
        return diskCacheWriteLocker$WriteLock == null ? new DiskCacheWriteLocker$WriteLock() : diskCacheWriteLocker$WriteLock;
    }

    public void offer(DiskCacheWriteLocker$WriteLock diskCacheWriteLocker$WriteLock) {
        synchronized (this.pool) {
            try {
                if (this.pool.size() < 10) {
                    this.pool.offer(diskCacheWriteLocker$WriteLock);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void release(GifHeaderParser gifHeaderParser) {
        gifHeaderParser.rawData = null;
        gifHeaderParser.header = null;
        this.pool.offer(gifHeaderParser);
    }
}
