package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.h1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3029h1 extends W2 implements F0, B0 {
    C3029h1() {
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

    @Override // j$.util.stream.W2, java.util.function.IntConsumer
    public final void accept(int i) {
        super.accept(i);
    }

    @Override // j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC3117z0.H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        d((Integer) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.AbstractC2996a3, j$.util.stream.H0
    public final Object b() {
        return (int[]) super.b();
    }

    @Override // j$.util.stream.B0, j$.util.stream.D0
    public final F0 build() {
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

    @Override // j$.util.stream.InterfaceC3070p2
    public final /* synthetic */ void d(Integer num) {
        AbstractC3117z0.C(this, num);
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
        super.f(i, (int[]) obj);
    }

    @Override // j$.util.stream.AbstractC2996a3, j$.util.stream.H0
    public final void g(Object obj) {
        super.g((IntConsumer) obj);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] k(IntFunction intFunction) {
        return AbstractC3117z0.I(this, intFunction);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int n() {
        return 0;
    }

    @Override // j$.util.stream.W2, j$.util.stream.AbstractC2996a3, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.W2, j$.util.stream.AbstractC2996a3, java.lang.Iterable
    public final j$.util.e0 spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.W2
    /* renamed from: u */
    public final j$.util.Y spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.I0
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ void j(Integer[] numArr, int i) {
        AbstractC3117z0.K(this, numArr, i);
    }

    @Override // j$.util.stream.I0
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ F0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC3117z0.Q(this, j, j2);
    }
}
