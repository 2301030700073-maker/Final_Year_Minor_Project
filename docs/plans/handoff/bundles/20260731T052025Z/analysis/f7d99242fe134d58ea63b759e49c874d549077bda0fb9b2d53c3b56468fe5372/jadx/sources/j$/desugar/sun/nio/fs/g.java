package j$.desugar.sun.nio.fs;

import androidx.compose.foundation.layout.OffsetKt;
import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.w;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.function.Predicate$CC;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import j$.util.stream.b0;
import j$.util.stream.c0;
import j$.util.stream.d0;
import j$.util.stream.d8;
import j$.util.stream.k1;
import j$.util.stream.k7;
import j$.util.stream.l1;
import j$.util.stream.l5;
import j$.util.stream.m1;
import j$.util.stream.m7;
import j$.util.stream.o7;
import j$.util.stream.w6;
import j$.util.stream.y6;
import java.nio.file.DirectoryStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Pattern;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class g implements w, DirectoryStream.Filter, FileAttribute, Predicate, Supplier, DoubleFunction, Function, LongFunction, Consumer, BooleanSupplier {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ g(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // j$.nio.file.w
    public boolean a(Path path) {
        return ((Pattern) this.b).matcher(path.toString()).matches();
    }

    @Override // java.nio.file.DirectoryStream.Filter
    /* renamed from: accept, reason: collision with other method in class */
    public boolean mo969accept(Object obj) {
        switch (this.a) {
            case 1:
                return ((w) this.b).a(((Path) obj).getFileName());
            default:
                return ((DirectoryStream.Filter) this.b).mo969accept(j$.com.android.tools.r8.a.s(obj));
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
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
            return w6.f((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof d0) {
            return c0.f((d0) apply);
        }
        if (apply instanceof DoubleStream) {
            return b0.f((DoubleStream) apply);
        }
        if (apply instanceof m1) {
            return l1.f((m1) apply);
        }
        if (apply instanceof LongStream) {
            return k1.f((LongStream) apply);
        }
        j$.util.g.a(apply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    public void b(y6 y6Var) {
        ((EnumMap) ((Map) this.b)).put((EnumMap) y6Var, (y6) 1);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 5:
                return ((j$.util.stream.a) this.b).N(0);
            default:
                return (Spliterator) this.b;
        }
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 13:
                k7 k7Var = (k7) obj;
                return k7Var.d.tryAdvance(k7Var.e);
            case 14:
                m7 m7Var = (m7) obj;
                return m7Var.d.tryAdvance(m7Var.e);
            case OffsetKt.Horizontal /* 15 */:
                o7 o7Var = (o7) obj;
                return o7Var.d.tryAdvance(o7Var.e);
            default:
                d8 d8Var = (d8) obj;
                return d8Var.d.tryAdvance(d8Var.e);
        }
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public String name() {
        return "posix:permissions";
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

    @Override // j$.nio.file.attribute.FileAttribute
    public Object value() {
        return Collections.unmodifiableSet(j$.com.android.tools.r8.a.y((Set) ((java.nio.file.attribute.FileAttribute) this.b).value()));
    }

    public /* synthetic */ g(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo970andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void r(Object obj) {
        switch (this.a) {
            case 10:
                ((l5) this.b).r((l5) obj);
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
        if (apply instanceof d0) {
            return c0.f((d0) apply);
        }
        if (apply instanceof DoubleStream) {
            return b0.f((DoubleStream) apply);
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
        if (apply instanceof m1) {
            return l1.f((m1) apply);
        }
        if (apply instanceof LongStream) {
            return k1.f((LongStream) apply);
        }
        j$.util.g.a(apply.getClass(), "java.util.stream.LongStream");
        throw null;
    }
}
