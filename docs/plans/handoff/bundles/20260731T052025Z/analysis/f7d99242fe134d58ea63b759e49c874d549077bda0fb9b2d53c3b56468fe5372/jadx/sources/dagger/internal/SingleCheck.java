package dagger.internal;

import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleCheck implements Provider {
    public static final Object UNINITIALIZED = new Object();
    public volatile Object instance;
    public volatile PriorityQueue provider;

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj = this.instance;
        if (obj != UNINITIALIZED) {
            return obj;
        }
        PriorityQueue priorityQueue = this.provider;
        if (priorityQueue == null) {
            return this.instance;
        }
        Object obj2 = priorityQueue.get();
        this.instance = obj2;
        this.provider = null;
        return obj2;
    }
}
