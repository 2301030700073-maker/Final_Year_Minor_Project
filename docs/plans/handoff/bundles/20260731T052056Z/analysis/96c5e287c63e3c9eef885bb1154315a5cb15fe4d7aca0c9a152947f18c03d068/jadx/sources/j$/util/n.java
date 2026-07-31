package j$.util;

import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.function.Predicate$CC;
import j$.util.stream.Collectors;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import j$.util.stream.d8;
import j$.util.stream.k7;
import j$.util.stream.l5;
import j$.util.stream.m7;
import j$.util.stream.o7;
import j$.util.stream.w6;
import j$.util.stream.y6;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final /* synthetic */ class n implements Consumer, Predicate, Supplier, DoubleFunction, Function, LongFunction, BooleanSupplier {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ n(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public void a(y6 y6Var) {
        ((EnumMap) ((java.util.Map) this.b)).put((EnumMap) y6Var, (y6) 1);
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.a) {
            case 0:
                ((Consumer) this.b).accept(new o((Map.Entry) obj));
                break;
            case 8:
                ((l5) this.b).accept((l5) obj);
                break;
            default:
                ((ArrayList) ((java.util.List) this.b)).add(obj);
                break;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 0:
                break;
            case 8:
                break;
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object apply = ((Function) this.b).apply(obj);
        if (apply == null) {
            return null;
        }
        if (apply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) apply);
        }
        if (apply instanceof java.util.stream.Stream) {
            return w6.g((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof j$.util.stream.d0) {
            return j$.util.stream.c0.g((j$.util.stream.d0) apply);
        }
        if (apply instanceof DoubleStream) {
            return j$.util.stream.b0.g((DoubleStream) apply);
        }
        if (apply instanceof j$.util.stream.m1) {
            return j$.util.stream.l1.g((j$.util.stream.m1) apply);
        }
        if (apply instanceof LongStream) {
            return j$.util.stream.k1.g((LongStream) apply);
        }
        f.a(apply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 2:
                return ((j$.util.stream.a) this.b).N(0);
            case 3:
                return (Spliterator) this.b;
            default:
                CharSequence charSequence = (CharSequence) this.b;
                Set set = Collectors.a;
                return new p1(charSequence);
        }
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 11:
                k7 k7Var = (k7) obj;
                return k7Var.d.tryAdvance(k7Var.e);
            case 12:
                m7 m7Var = (m7) obj;
                return m7Var.d.tryAdvance(m7Var.e);
            case IMAGE_VALUE:
                o7 o7Var = (o7) obj;
                return o7Var.d.tryAdvance(o7Var.e);
            default:
                d8 d8Var = (d8) obj;
                return d8Var.d.tryAdvance(d8Var.e);
        }
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.b).test(obj);
    }

    public /* synthetic */ n(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo800andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object apply = ((DoubleFunction) this.b).apply(d);
        if (apply == null) {
            return null;
        }
        if (apply instanceof j$.util.stream.d0) {
            return j$.util.stream.c0.g((j$.util.stream.d0) apply);
        }
        if (apply instanceof DoubleStream) {
            return j$.util.stream.b0.g((DoubleStream) apply);
        }
        f.a(apply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object apply = ((LongFunction) this.b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof j$.util.stream.m1) {
            return j$.util.stream.l1.g((j$.util.stream.m1) apply);
        }
        if (apply instanceof LongStream) {
            return j$.util.stream.k1.g((LongStream) apply);
        }
        f.a(apply.getClass(), "java.util.stream.LongStream");
        throw null;
    }
}
