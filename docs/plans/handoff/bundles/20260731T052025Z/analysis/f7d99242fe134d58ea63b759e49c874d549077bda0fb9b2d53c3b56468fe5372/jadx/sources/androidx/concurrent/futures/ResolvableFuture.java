package androidx.concurrent.futures;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResolvableFuture extends AbstractResolvableFuture {
    public final boolean set(Object obj) {
        if (obj == null) {
            obj = AbstractResolvableFuture.NULL;
        }
        if (!AbstractResolvableFuture.ATOMIC_HELPER.casValue(this, null, obj)) {
            return false;
        }
        AbstractResolvableFuture.complete(this);
        return true;
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public final boolean setException(Throwable th) {
        throw null;
    }
}
