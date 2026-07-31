package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.z;
import j$.util.Map;
import j$.util.Spliterator;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.function.IntPredicate$CC;
import j$.util.function.Predicate$CC;
import j$.util.q1;
import j$.util.stream.Collectors;
import j$.util.stream.IntStream;
import j$.util.stream.LongStream;
import j$.util.stream.Stream;
import j$.util.stream.a7;
import j$.util.stream.c0;
import j$.util.stream.c7;
import j$.util.stream.d0;
import j$.util.stream.e0;
import j$.util.stream.h8;
import j$.util.stream.l1;
import j$.util.stream.m1;
import j$.util.stream.o5;
import j$.util.stream.o7;
import j$.util.stream.q7;
import j$.util.stream.s7;
import java.nio.file.DirectoryStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import java.util.regex.Pattern;
import java.util.stream.DoubleStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class g implements z, DirectoryStream.Filter, FileAttribute, IntPredicate, Predicate, Supplier, BiConsumer, BinaryOperator, DoubleFunction, Function, LongFunction, Consumer, BooleanSupplier {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ g(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // j$.nio.file.z
    public boolean a(Path path) {
        return ((Pattern) this.b).matcher(path.toString()).matches();
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        int i = this.a;
        Object obj3 = this.b;
        switch (i) {
            case 7:
                int[] iArr = (int[]) obj;
                Set set = Collectors.a;
                iArr[0] = ((ToIntFunction) obj3).applyAsInt(obj2) + iArr[0];
                break;
            case 8:
                double[] dArr = (double[]) obj;
                Set set2 = Collectors.a;
                double applyAsDouble = ((ToDoubleFunction) obj3).applyAsDouble(obj2);
                Collectors.b(dArr, applyAsDouble);
                dArr[2] = dArr[2] + 1.0d;
                dArr[3] = dArr[3] + applyAsDouble;
                break;
            default:
                long[] jArr = (long[]) obj;
                Set set3 = Collectors.a;
                jArr[0] = ((ToLongFunction) obj3).applyAsLong(obj2) + jArr[0];
                break;
        }
    }

    public /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
        return IntPredicate$CC.$default$and(this, intPredicate);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
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
            return a7.f((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof e0) {
            return d0.f((e0) apply);
        }
        if (apply instanceof DoubleStream) {
            return c0.f((DoubleStream) apply);
        }
        if (apply instanceof LongStream) {
            return m1.f((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return l1.f((java.util.stream.LongStream) apply);
        }
        j$.util.g.a(apply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    public void b(c7 c7Var) {
        ((EnumMap) ((Map) this.b)).put((EnumMap) c7Var, (c7) 1);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 5:
                return ((j$.util.stream.a) this.b).K(0);
            case 6:
                return (Spliterator) this.b;
            default:
                CharSequence charSequence = (CharSequence) this.b;
                Set set = Collectors.a;
                return new q1(charSequence);
        }
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 18:
                o7 o7Var = (o7) obj;
                return o7Var.d.tryAdvance(o7Var.e);
            case 19:
                q7 q7Var = (q7) obj;
                return q7Var.d.tryAdvance(q7Var.e);
            case 20:
                s7 s7Var = (s7) obj;
                return s7Var.d.tryAdvance(s7Var.e);
            default:
                h8 h8Var = (h8) obj;
                return h8Var.d.tryAdvance(h8Var.e);
        }
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public String name() {
        return "posix:permissions";
    }

    public /* synthetic */ IntPredicate negate() {
        return IntPredicate$CC.$default$negate(this);
    }

    public /* synthetic */ IntPredicate or(IntPredicate intPredicate) {
        return IntPredicate$CC.$default$or(this, intPredicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.b).test(obj);
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public Object value() {
        return Collections.unmodifiableSet(j$.com.android.tools.r8.a.A((Set) ((java.nio.file.attribute.FileAttribute) this.b).value()));
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    /* renamed from: negate, reason: collision with other method in class */
    public /* synthetic */ Predicate m647negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    public /* synthetic */ g(int i) {
        this.a = i;
    }

    @Override // java.util.function.IntPredicate
    public boolean test(int i) {
        return !((IntPredicate) this.b).test(i);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function mo646andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.nio.file.DirectoryStream.Filter
    /* renamed from: accept, reason: collision with other method in class */
    public boolean mo645accept(Object obj) {
        return ((DirectoryStream.Filter) this.b).mo645accept(j$.com.android.tools.r8.a.u(obj));
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void s(Object obj) {
        switch (this.a) {
            case 15:
                ((o5) this.b).s((o5) obj);
                break;
            default:
                ((ArrayList) ((List) this.b)).add(obj);
                break;
        }
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object apply = ((DoubleFunction) this.b).apply(d);
        if (apply == null) {
            return null;
        }
        if (apply instanceof e0) {
            return d0.f((e0) apply);
        }
        if (apply instanceof DoubleStream) {
            return c0.f((DoubleStream) apply);
        }
        j$.util.g.a(apply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object apply = ((LongFunction) this.b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof LongStream) {
            return m1.f((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return l1.f((java.util.stream.LongStream) apply);
        }
        j$.util.g.a(apply.getClass(), "java.util.stream.LongStream");
        throw null;
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        BinaryOperator binaryOperator = (BinaryOperator) this.b;
        Map map = (Map) obj;
        Set set = Collectors.a;
        for (Map.Entry entry : ((Map) obj2).entrySet()) {
            Map.EL.merge(map, entry.getKey(), entry.getValue(), binaryOperator);
        }
        return map;
    }
}
