package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class O extends AbstractC3007d {
    private final I j;
    private final boolean k;

    O(I i, boolean z, AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        super(abstractC3117z0, spliterator);
        this.k = z;
        this.j = i;
    }

    O(O o, Spliterator spliterator) {
        super(o, spliterator);
        this.k = o.k;
        this.j = o.j;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final Object a() {
        boolean z;
        AbstractC3117z0 abstractC3117z0 = this.a;
        Q3 q3 = (Q3) this.j.d.get();
        abstractC3117z0.H0(this.b, q3);
        Object obj = q3.get();
        if (!this.k) {
            if (obj != null) {
                AtomicReference atomicReference = this.h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
            }
            return null;
        }
        if (obj == null) {
            return null;
        }
        O o = this;
        while (true) {
            if (o != null) {
                AbstractC3017f d = o.d();
                if (d != null && d.d != o) {
                    z = false;
                    break;
                }
                o = d;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            AtomicReference atomicReference2 = this.h;
            while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
            }
        } else {
            j();
        }
        return obj;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final AbstractC3017f f(Spliterator spliterator) {
        return new O(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC3007d
    protected final Object k() {
        return this.j.b;
    }

    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        boolean z;
        if (this.k) {
            O o = (O) this.d;
            O o2 = null;
            while (true) {
                if (o == o2) {
                    break;
                }
                Object c = o.c();
                if (c == null || !this.j.c.test(c)) {
                    o2 = o;
                    o = (O) this.e;
                } else {
                    g(c);
                    O o3 = this;
                    while (true) {
                        if (o3 != null) {
                            AbstractC3017f d = o3.d();
                            if (d != null && d.d != o3) {
                                z = false;
                                break;
                            }
                            o3 = d;
                        } else {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        AtomicReference atomicReference = this.h;
                        while (!atomicReference.compareAndSet(null, c) && atomicReference.get() == null) {
                        }
                    } else {
                        j();
                    }
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
