package j$.util.stream;

import com.google.android.gms.common.ConnectionResult;
import j$.util.C3124w;
import j$.util.C3125x;
import j$.util.C3126y;
import j$.util.Optional;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.function.Predicate$CC;
import java.util.LinkedHashSet;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class O0 implements BinaryOperator, IntFunction, Consumer, Supplier, BiConsumer, DoubleBinaryOperator, DoubleFunction, ObjDoubleConsumer, Predicate, IntBinaryOperator, ObjIntConsumer, LongBinaryOperator {
    public final /* synthetic */ int a;

    public /* synthetic */ O0(int i) {
        this.a = i;
    }

    public final double a(double d, double d2) {
        switch (this.a) {
            case 14:
                return Math.min(d, d2);
            default:
                return Math.max(d, d2);
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
    }

    @Override // java.util.function.ObjDoubleConsumer
    public final void accept(Object obj, double d) {
        ((C3124w) obj).accept(d);
    }

    @Override // java.util.function.ObjIntConsumer
    public final void accept(Object obj, int i) {
        ((C3125x) obj).accept(i);
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 12:
                ((LinkedHashSet) obj).add(obj2);
                break;
            case 13:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
            case 18:
                ((C3124w) obj).a((C3124w) obj2);
                break;
            default:
                ((C3125x) obj).a((C3125x) obj2);
                break;
        }
    }

    @Override // java.util.function.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.a) {
        }
        return Predicate$CC.$default$and(this, predicate);
    }

    @Override // java.util.function.BiConsumer
    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 12:
                break;
            case 13:
                break;
            case 18:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.BiFunction
    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.DoubleFunction
    public final Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i) {
        switch (this.a) {
            case 2:
                return new Object[i];
            case 3:
                return new Integer[i];
            case 4:
                return new Long[i];
            case 5:
                return new Double[i];
            default:
                return Integer.valueOf(i);
        }
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return new T0((G0) obj, (G0) obj2);
            default:
                return new V0((I0) obj, (I0) obj2);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public final long applyAsLong(long j, long j2) {
        return Math.max(j, j2);
    }

    public final int b(int i, int i2) {
        switch (this.a) {
            case ConnectionResult.API_DISABLED /* 23 */:
                return Math.min(i, i2);
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return i + i2;
            default:
                return Math.max(i, i2);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 8:
                return new C3124w();
            case 9:
                return new C3125x();
            case 10:
                return new C3126y();
            default:
                return new LinkedHashSet();
        }
    }

    @Override // java.util.function.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    @Override // java.util.function.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.a) {
        }
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 19:
                return ((j$.util.A) obj).c();
            case 20:
                return ((j$.util.B) obj).c();
            case 21:
                return ((j$.util.C) obj).c();
            default:
                return ((Optional) obj).b();
        }
    }
}
