package androidx.concurrent.futures;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
