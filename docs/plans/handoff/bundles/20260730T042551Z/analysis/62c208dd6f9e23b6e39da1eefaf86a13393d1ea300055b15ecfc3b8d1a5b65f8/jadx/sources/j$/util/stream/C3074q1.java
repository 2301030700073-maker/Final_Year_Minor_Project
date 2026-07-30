package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.q1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3074q1 extends Y2 implements G0, C0 {
    C3074q1() {
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final H0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 a(int i) {
        a(i);
        throw null;
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

    @Override // j$.util.stream.Y2, java.util.function.LongConsumer
    public final void accept(long j) {
        super.accept(j);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        l((Long) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.AbstractC2996a3, j$.util.stream.H0
    public final Object b() {
        return (long[]) super.b();
    }

    @Override // j$.util.stream.C0, j$.util.stream.D0
    public final G0 build() {
        return this;
    }

    @Override // j$.util.stream.D0
    public final I0 build() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        clear();
        r(j);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void end() {
    }

    @Override // j$.util.stream.AbstractC2996a3, j$.util.stream.H0
    public final void f(int i, Object obj) {
        super.f(i, (long[]) obj);
    }

    @Override // j$.util.stream.AbstractC2996a3, j$.util.stream.H0
    public final void g(Object obj) {
        super.g((LongConsumer) obj);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] k(IntFunction intFunction) {
        return AbstractC3117z0.I(this, intFunction);
    }

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        AbstractC3117z0.E(this, l);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int n() {
        return 0;
    }

    @Override // j$.util.stream.Y2, j$.util.stream.AbstractC2996a3, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.Y2, j$.util.stream.AbstractC2996a3, java.lang.Iterable
    public final j$.util.e0 spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.Y2
    /* renamed from: u */
    public final j$.util.b0 spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.I0
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Long[] lArr, int i) {
        AbstractC3117z0.L(this, lArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ G0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.R(this, j, j2);
    }
}
