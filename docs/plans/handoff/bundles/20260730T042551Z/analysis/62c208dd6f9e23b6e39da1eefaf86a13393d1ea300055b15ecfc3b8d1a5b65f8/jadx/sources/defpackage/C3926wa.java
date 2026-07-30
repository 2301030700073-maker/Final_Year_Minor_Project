package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: wa, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3926wa<T> implements InterfaceC3140jC<T> {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<InterfaceC3140jC<T>> f16366do;

    public C3926wa(C3376nC c3376nC) {
        this.f16366do = new AtomicReference<>(c3376nC);
    }

    @Override // defpackage.InterfaceC3140jC
    public final Iterator<T> iterator() {
        InterfaceC3140jC<T> andSet = this.f16366do.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
