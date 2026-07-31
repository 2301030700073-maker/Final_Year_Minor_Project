package androidx.core.util;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Pools$SynchronizedPool extends Pools$SimplePool {
    public final Object lock;

    public Pools$SynchronizedPool(int i) {
        super(i);
        this.lock = new Object();
    }

    @Override // androidx.core.util.Pools$SimplePool
    public final Object acquire() {
        Object acquire;
        synchronized (this.lock) {
            acquire = super.acquire();
        }
        return acquire;
    }

    @Override // androidx.core.util.Pools$SimplePool
    /* renamed from: release */
    public final boolean mo741release(Object obj) {
        boolean mo741release;
        synchronized (this.lock) {
            mo741release = super.mo741release(obj);
        }
        return mo741release;
    }
}
