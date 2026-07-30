package j$.util.stream;

import j$.util.C3126y;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.n0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3058n0 extends AbstractC3002c implements InterfaceC3073q0 {
    AbstractC3058n0(Spliterator spliterator, int i) {
        super(spliterator, i, false);
    }

    AbstractC3058n0(AbstractC3002c abstractC3002c, int i) {
        super(abstractC3002c, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.b0 b1(Spliterator spliterator) {
        if (spliterator instanceof j$.util.b0) {
            return (j$.util.b0) spliterator;
        }
        if (!S3.a) {
            throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
        }
        S3.a(AbstractC3002c.class, "using LongStream.adapt(Spliterator<Long> s)");
        throw null;
    }

    @Override // j$.util.stream.AbstractC3117z0
    final D0 C0(long j, IntFunction intFunction) {
        return AbstractC3117z0.u0(j);
    }

    @Override // j$.util.stream.AbstractC3002c
    final I0 M0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3117z0.d0(abstractC3117z0, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean N0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        LongConsumer c3023g0;
        boolean e;
        j$.util.b0 b1 = b1(spliterator);
        if (interfaceC3079r2 instanceof LongConsumer) {
            c3023g0 = (LongConsumer) interfaceC3079r2;
        } else {
            if (S3.a) {
                S3.a(AbstractC3002c.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC3079r2);
            c3023g0 = new C3023g0(interfaceC3079r2);
        }
        do {
            e = interfaceC3079r2.e();
            if (e) {
                break;
            }
        } while (b1.tryAdvance(c3023g0));
        return e;
    }

    @Override // j$.util.stream.AbstractC3002c
    final EnumC3031h3 O0() {
        return EnumC3031h3.LONG_VALUE;
    }

    @Override // j$.util.stream.AbstractC3002c
    final Spliterator Y0(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        return new C3100v3(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 a() {
        Objects.requireNonNull(null);
        return new C3111y(this, EnumC3026g3.t, null, 4);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final H asDoubleStream() {
        return new A(this, EnumC3026g3.n, 2);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final j$.util.A average() {
        long j = ((long[]) collect(new C2997b(21), new C2997b(22), new C2997b(23)))[0];
        return j > 0 ? j$.util.A.d(r0[1] / j) : j$.util.A.a();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 b(C2992a c2992a) {
        Objects.requireNonNull(c2992a);
        return new C3111y(this, EnumC3026g3.p | EnumC3026g3.n | EnumC3026g3.t, c2992a, 3);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final Stream boxed() {
        return new C3096v(this, 0, new C3028h0(0), 2);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 c() {
        Objects.requireNonNull(null);
        return new C3111y(this, EnumC3026g3.p | EnumC3026g3.n, null, 2);
    }

    @Override // j$.util.stream.InterfaceC3032i
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public final InterfaceC3073q0 unordered() {
        return !Q0() ? this : new Z(this, EnumC3026g3.r, 1);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C3081s c3081s = new C3081s(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(c3081s);
        return K0(new E1(EnumC3031h3.LONG_VALUE, c3081s, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final long count() {
        return ((Long) K0(new G1(EnumC3031h3.LONG_VALUE, 0))).longValue();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 distinct() {
        return ((AbstractC3040j2) ((AbstractC3040j2) boxed()).distinct()).mapToLong(new C2997b(19));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final H e() {
        Objects.requireNonNull(null);
        return new C3101w(this, EnumC3026g3.p | EnumC3026g3.n, null, 5);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final j$.util.C findAny() {
        return (j$.util.C) K0(L.d);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final j$.util.C findFirst() {
        return (j$.util.C) K0(L.c);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        K0(new S(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        K0(new S(longConsumer, true));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final boolean g() {
        return ((Boolean) K0(AbstractC3117z0.B0(EnumC3102w0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final j$.util.P iterator() {
        return Spliterators.h(spliterator());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final boolean j() {
        return ((Boolean) K0(AbstractC3117z0.B0(EnumC3102w0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 limit(long j) {
        if (j >= 0) {
            return AbstractC3117z0.A0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C3096v(this, EnumC3026g3.p | EnumC3026g3.n, longFunction, 2);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final j$.util.C max() {
        return reduce(new O0(29));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final j$.util.C min() {
        return reduce(new C3028h0(4));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new C3111y(this, 0, longConsumer, 5);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final boolean r() {
        return ((Boolean) K0(AbstractC3117z0.B0(EnumC3102w0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) K0(new A1(EnumC3031h3.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final j$.util.C reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (j$.util.C) K0(new C1(EnumC3031h3.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC3117z0.A0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 sorted() {
        return new L2(this);
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i
    public final j$.util.b0 spliterator() {
        return b1(super.spliterator());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final long sum() {
        return reduce(0L, new C3028h0(1));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final C3126y summaryStatistics() {
        return (C3126y) collect(new O0(10), new C3028h0(2), new C3028h0(3));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final long[] toArray() {
        return (long[]) AbstractC3117z0.p0((G0) L0(new C2997b(20))).b();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final IntStream v() {
        Objects.requireNonNull(null);
        return new C3106x(this, EnumC3026g3.p | EnumC3026g3.n, null, 5);
    }
}
