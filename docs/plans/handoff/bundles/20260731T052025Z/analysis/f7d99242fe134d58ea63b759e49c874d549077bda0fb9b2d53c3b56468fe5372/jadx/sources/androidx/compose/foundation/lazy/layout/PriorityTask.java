package androidx.compose.foundation.lazy.layout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PriorityTask {
    public final int priority;
    public final PrefetchHandleProvider$HandleAndRequestImpl request;

    public PriorityTask(int i, PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl) {
        this.priority = i;
        this.request = prefetchHandleProvider$HandleAndRequestImpl;
    }
}
