package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.w1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3103w1 extends C3001b3 implements I0, D0 {
    C3103w1() {
    }

    @Override // j$.util.stream.I0
    public final I0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(int i) {
        AbstractC3117z0.G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC3117z0.H();
        throw null;
    }

    @Override // j$.util.stream.C3001b3, java.util.function.Consumer
    /* renamed from: accept */
    public final void m(Object obj) {
        super.m(obj);
    }

    @Override // j$.util.stream.D0
    public final I0 build() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        clear();
        o(j);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void end() {
    }

    @Override // j$.util.stream.C3001b3, java.lang.Iterable, j$.lang.a
    public final void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.S(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final void j(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.c == 0) {
            System.arraycopy(this.e, 0, objArr, i, this.b);
            return;
        }
        for (int i2 = 0; i2 < this.c; i2++) {
            Object[] objArr2 = this.f[i2];
            System.arraycopy(objArr2, 0, objArr, i, objArr2.length);
            i += this.f[i2].length;
        }
        int i3 = this.b;
        if (i3 > 0) {
            System.arraycopy(this.e, 0, objArr, i, i3);
        }
    }

    @Override // j$.util.stream.I0
    public final Object[] k(IntFunction intFunction) {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        j(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int n() {
        return 0;
    }

    @Override // j$.util.stream.C3001b3, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }
}
