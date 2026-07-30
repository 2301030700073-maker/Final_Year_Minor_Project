package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.x0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3107x0 implements P3 {
    final EnumC3102w0 a;
    final Supplier b;

    C3107x0(EnumC3031h3 enumC3031h3, EnumC3102w0 enumC3102w0, C3062o c3062o) {
        this.a = enumC3102w0;
        this.b = c3062o;
    }

    @Override // j$.util.stream.P3
    public final Object k(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        return (Boolean) new C3112y0(this, abstractC3117z0, spliterator).invoke();
    }

    @Override // j$.util.stream.P3
    public final int o() {
        return EnumC3026g3.u | EnumC3026g3.r;
    }

    @Override // j$.util.stream.P3
    public final Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        return Boolean.valueOf(((AbstractC3097v0) abstractC3117z0.H0(spliterator, (AbstractC3097v0) this.b.get())).b);
    }
}
