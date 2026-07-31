package com.bumptech.glide.load.engine.cache;

import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DiskCacheWriteLocker$WriteLock {
    public int interestedThreads;
    public final ReentrantLock lock = new ReentrantLock();
}
