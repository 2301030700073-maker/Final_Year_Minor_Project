package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
final class V extends CountedCompleter {
    public static final /* synthetic */ int h = 0;
    private final AbstractC3117z0 a;
    private Spliterator b;
    private final long c;
    private final ConcurrentHashMap d;
    private final InterfaceC3079r2 e;
    private final V f;
    private I0 g;

    V(V v, Spliterator spliterator, V v2) {
        super(v);
        this.a = v.a;
        this.b = spliterator;
        this.c = v.c;
        this.d = v.d;
        this.e = v.e;
        this.f = v2;
    }

    protected V(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        super(null);
        this.a = abstractC3117z0;
        this.b = spliterator;
        this.c = AbstractC3017f.h(spliterator.estimateSize());
        this.d = new ConcurrentHashMap(Math.max(16, AbstractC3017f.b() << 1));
        this.e = interfaceC3079r2;
        this.f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long j = this.c;
        boolean z = false;
        V v = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            V v2 = new V(v, trySplit, v.f);
            V v3 = new V(v, spliterator, v2);
            v.addToPendingCount(1);
            v3.addToPendingCount(1);
            v.d.put(v2, v3);
            if (v.f != null) {
                v2.addToPendingCount(1);
                if (v.d.replace(v.f, v, v2)) {
                    v.addToPendingCount(-1);
                } else {
                    v2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                v = v2;
                v2 = v3;
            } else {
                v = v3;
            }
            z = !z;
            v2.fork();
        }
        if (v.getPendingCount() > 0) {
            C2997b c2997b = new C2997b(13);
            AbstractC3117z0 abstractC3117z0 = v.a;
            D0 C0 = abstractC3117z0.C0(abstractC3117z0.k0(spliterator), c2997b);
            v.a.H0(spliterator, C0);
            v.g = C0.build();
            v.b = null;
        }
        v.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        I0 i0 = this.g;
        if (i0 != null) {
            i0.forEach(this.e);
            this.g = null;
        } else {
            Spliterator spliterator = this.b;
            if (spliterator != null) {
                this.a.H0(spliterator, this.e);
                this.b = null;
            }
        }
        V v = (V) this.d.remove(this);
        if (v != null) {
            v.tryComplete();
        }
    }
}
