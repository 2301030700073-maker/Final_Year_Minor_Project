package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class T extends U {
    final Consumer b;

    T(Consumer consumer, boolean z) {
        super(z);
        this.b = consumer;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void m(Object obj) {
        this.b.m(obj);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.P3
    public final /* bridge */ /* synthetic */ Object k(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        a(abstractC3117z0, spliterator);
        return null;
    }

    @Override // j$.util.stream.P3
    public final Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        abstractC3117z0.H0(spliterator, this);
        return null;
    }
}
