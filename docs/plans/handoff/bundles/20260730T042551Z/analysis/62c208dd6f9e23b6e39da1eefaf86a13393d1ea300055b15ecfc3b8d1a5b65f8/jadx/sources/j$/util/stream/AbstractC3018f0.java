package j$.util.stream;

import j$.util.C3125x;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.f0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3018f0 extends AbstractC3002c implements IntStream {
    AbstractC3018f0(Spliterator spliterator, int i) {
        super(spliterator, i, false);
    }

    AbstractC3018f0(AbstractC3002c abstractC3002c, int i) {
        super(abstractC3002c, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.Y b1(Spliterator spliterator) {
        if (spliterator instanceof j$.util.Y) {
            return (j$.util.Y) spliterator;
        }
        if (!S3.a) {
            throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
        }
        S3.a(AbstractC3002c.class, "using IntStream.adapt(Spliterator<Integer> s)");
        throw null;
    }

    @Override // j$.util.stream.AbstractC3117z0
    final D0 C0(long j, IntFunction intFunction) {
        return AbstractC3117z0.s0(j);
    }

    @Override // j$.util.stream.AbstractC3002c
    final I0 M0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3117z0.c0(abstractC3117z0, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean N0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        IntConsumer x;
        boolean e;
        j$.util.Y b1 = b1(spliterator);
        if (interfaceC3079r2 instanceof IntConsumer) {
            x = (IntConsumer) interfaceC3079r2;
        } else {
            if (S3.a) {
                S3.a(AbstractC3002c.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC3079r2);
            x = new X(interfaceC3079r2);
        }
        do {
            e = interfaceC3079r2.e();
            if (e) {
                break;
            }
        } while (b1.tryAdvance(x));
        return e;
    }

    @Override // j$.util.stream.AbstractC3002c
    final EnumC3031h3 O0() {
        return EnumC3031h3.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC3002c
    final Spliterator Y0(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        return new C3090t3(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        Objects.requireNonNull(null);
        return new C3106x(this, EnumC3026g3.t, null, 4);
    }

    @Override // j$.util.stream.IntStream
    public final H asDoubleStream() {
        return new A(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final InterfaceC3073q0 asLongStream() {
        return new Z(this, 0, 0);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.A average() {
        long j = ((long[]) collect(new C2997b(15), new C2997b(16), new C2997b(17)))[0];
        return j > 0 ? j$.util.A.d(r0[1] / j) : j$.util.A.a();
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new C3096v(this, 0, new O0(27), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        Objects.requireNonNull(null);
        return new C3106x(this, EnumC3026g3.p | EnumC3026g3.n, null, 2);
    }

    @Override // j$.util.stream.InterfaceC3032i
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public final IntStream unordered() {
        return !Q0() ? this : new C2998b0(this, EnumC3026g3.r);
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C3081s c3081s = new C3081s(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(c3081s);
        return K0(new E1(EnumC3031h3.INT_VALUE, c3081s, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) K0(new G1(EnumC3031h3.INT_VALUE, 3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final H d() {
        Objects.requireNonNull(null);
        return new C3101w(this, EnumC3026g3.p | EnumC3026g3.n, null, 4);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC3040j2) ((AbstractC3040j2) boxed()).distinct()).mapToInt(new C2997b(14));
    }

    @Override // j$.util.stream.IntStream
    public final InterfaceC3073q0 f() {
        Objects.requireNonNull(null);
        return new C3111y(this, EnumC3026g3.p | EnumC3026g3.n, null, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B findAny() {
        return (j$.util.B) K0(K.d);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B findFirst() {
        return (j$.util.B) K0(K.c);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        K0(new Q(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        K0(new Q(intConsumer, true));
    }

    @Override // j$.util.stream.IntStream
    public final boolean i() {
        return ((Boolean) K0(AbstractC3117z0.z0(EnumC3102w0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final j$.util.L iterator() {
        return Spliterators.g(spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final boolean l() {
        return ((Boolean) K0(AbstractC3117z0.z0(EnumC3102w0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC3117z0.y0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C3096v(this, EnumC3026g3.p | EnumC3026g3.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B max() {
        return reduce(new O0(28));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B min() {
        return reduce(new O0(23));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new C3106x(this, 0, intConsumer, 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream q(P0 p0) {
        Objects.requireNonNull(p0);
        return new C3106x(this, EnumC3026g3.p | EnumC3026g3.n | EnumC3026g3.t, p0, 3);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) K0(new P1(EnumC3031h3.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (j$.util.B) K0(new C1(EnumC3031h3.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final boolean s() {
        return ((Boolean) K0(AbstractC3117z0.z0(EnumC3102w0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC3117z0.y0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new K2(this);
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i
    public final j$.util.Y spliterator() {
        return b1(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new O0(24));
    }

    @Override // j$.util.stream.IntStream
    public final C3125x summaryStatistics() {
        return (C3125x) collect(new O0(9), new O0(25), new O0(26));
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC3117z0.o0((F0) L0(new C2997b(18))).b();
    }
}
