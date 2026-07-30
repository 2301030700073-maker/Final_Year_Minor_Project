package j$.util.stream;

import j$.util.C2979f;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;

/* renamed from: j$.util.stream.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2992a implements Supplier, Consumer, DoubleFunction, Function, LongFunction {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ C2992a(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final boolean a() {
        switch (this.a) {
            case 3:
                C3080r3 c3080r3 = (C3080r3) this.b;
                return c3080r3.d.tryAdvance(c3080r3.e);
            case 4:
                C3090t3 c3090t3 = (C3090t3) this.b;
                return c3090t3.d.tryAdvance(c3090t3.e);
            case 5:
                C3100v3 c3100v3 = (C3100v3) this.b;
                return c3100v3.d.tryAdvance(c3100v3.e);
            default:
                N3 n3 = (N3) this.b;
                return n3.d.tryAdvance(n3.e);
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void m(Object obj) {
        switch (this.a) {
            case 2:
                ((InterfaceC3079r2) this.b).m((InterfaceC3079r2) obj);
                break;
            default:
                ((List) this.b).add(obj);
                break;
        }
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.DoubleFunction
    public final Object apply(double d) {
        Object apply = ((DoubleFunction) this.b).apply(d);
        if (apply == null) {
            return null;
        }
        if (apply instanceof H) {
            return G.k((H) apply);
        }
        if (apply instanceof DoubleStream) {
            return F.k((DoubleStream) apply);
        }
        C2979f.a(apply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public final Object apply(long j) {
        Object apply = ((LongFunction) this.b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof InterfaceC3073q0) {
            return C3068p0.k((InterfaceC3073q0) apply);
        }
        if (apply instanceof LongStream) {
            return C3063o0.k((LongStream) apply);
        }
        C2979f.a(apply.getClass(), "java.util.stream.LongStream");
        throw null;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Object apply = ((Function) this.b).apply(obj);
        if (apply == null) {
            return null;
        }
        if (apply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) apply);
        }
        if (apply instanceof java.util.stream.Stream) {
            return C3006c3.k((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof H) {
            return G.k((H) apply);
        }
        if (apply instanceof DoubleStream) {
            return F.k((DoubleStream) apply);
        }
        if (apply instanceof InterfaceC3073q0) {
            return C3068p0.k((InterfaceC3073q0) apply);
        }
        if (apply instanceof LongStream) {
            return C3063o0.k((LongStream) apply);
        }
        C2979f.a(apply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return (Spliterator) this.b;
            default:
                return ((AbstractC3002c) this.b).R0();
        }
    }
}
