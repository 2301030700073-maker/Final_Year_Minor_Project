package androidx.core.util;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: Pools.kt */
/* loaded from: classes.dex */
public class Pools$SynchronizedPool extends Pools$SimplePool {
    private final Object lock;

    public Pools$SynchronizedPool(int i) {
        super(i);
        this.lock = new Object();
    }

    @Override // androidx.core.util.Pools$SimplePool, androidx.core.util.Pools$Pool
    public Object acquire() {
        Object acquire;
        synchronized (this.lock) {
            acquire = super.acquire();
        }
        return acquire;
    }

    @Override // androidx.core.util.Pools$SimplePool, androidx.core.util.Pools$Pool
    public boolean release(Object instance) {
        boolean release;
        Intrinsics.checkNotNullParameter(instance, "instance");
        synchronized (this.lock) {
            release = super.release(instance);
        }
        return release;
    }
}
