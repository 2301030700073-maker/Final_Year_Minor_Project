package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class m3 extends w6 implements e2, x1 {
    @Override // j$.util.stream.f2, j$.util.stream.g2
    public final f2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ void accept(double d) {
        w3.c();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.y6, j$.util.stream.f2
    public final Object b() {
        return (long[]) super.b();
    }

    @Override // j$.util.stream.o5
    public final void c(long j) {
        clear();
        z(j);
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.y6, j$.util.stream.f2
    public final void f(int i, Object obj) {
        super.f(i, (long[]) obj);
    }

    @Override // j$.util.stream.y6, j$.util.stream.f2
    public final void g(Object obj) {
        super.g((LongConsumer) obj);
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ g2 k(long j, long j2, IntFunction intFunction) {
        return w3.v(this, j, j2);
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ void n(Object[] objArr, int i) {
        w3.p(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void o(Long l) {
        w3.i(this, l);
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ Object[] q(IntFunction intFunction) {
        return w3.m(this, intFunction);
    }

    @Override // j$.util.stream.w6, j$.util.stream.y6, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final j$.util.b1 spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ int u() {
        return 0;
    }

    @Override // j$.util.stream.y1
    public final g2 build() {
        return this;
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ void accept(int i) {
        w3.k();
        throw null;
    }

    @Override // j$.util.stream.w6, j$.util.stream.y6, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.g2
    public final /* bridge */ /* synthetic */ g2 a(int i) {
        a(i);
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void s(Object obj) {
        o((Long) obj);
    }

    @Override // j$.util.stream.x1, j$.util.stream.y1
    public final e2 build() {
        return this;
    }

    @Override // j$.util.stream.o5
    public final void end() {
    }
}
