package androidx.core.util;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final boolean release(Object obj) {
        boolean release;
        synchronized (this.lock) {
            release = super.release(obj);
        }
        return release;
    }
}
