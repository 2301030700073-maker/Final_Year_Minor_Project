package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.y0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3112y0 extends AbstractC3007d {
    private final C3107x0 j;

    C3112y0(C3107x0 c3107x0, AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        super(abstractC3117z0, spliterator);
        this.j = c3107x0;
    }

    C3112y0(C3112y0 c3112y0, Spliterator spliterator) {
        super(c3112y0, spliterator);
        this.j = c3112y0.j;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final Object a() {
        boolean z;
        Boolean valueOf;
        AbstractC3117z0 abstractC3117z0 = this.a;
        AbstractC3097v0 abstractC3097v0 = (AbstractC3097v0) this.j.b.get();
        abstractC3117z0.H0(this.b, abstractC3097v0);
        boolean z2 = abstractC3097v0.b;
        z = this.j.a.b;
        if (z2 == z && (valueOf = Boolean.valueOf(z2)) != null) {
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, valueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final AbstractC3017f f(Spliterator spliterator) {
        return new C3112y0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC3007d
    protected final Object k() {
        boolean z;
        z = this.j.a.b;
        return Boolean.valueOf(!z);
    }
}
