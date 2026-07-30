package j$.util.stream;

import com.facebook.appevents.codeless.internal.Constants;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2997b implements IntFunction, ObjDoubleConsumer, BiConsumer, Supplier, ToDoubleFunction, ToIntFunction, ObjIntConsumer, ToLongFunction, ObjLongConsumer, LongFunction, BinaryOperator {
    public final /* synthetic */ int a;

    public /* synthetic */ C2997b(int i) {
        this.a = i;
    }

    @Override // java.util.function.ObjDoubleConsumer
    public final void accept(Object obj, double d) {
        switch (this.a) {
            case 2:
                double[] dArr = (double[]) obj;
                AbstractC3057n.a(dArr, d);
                dArr[2] = dArr[2] + d;
                break;
            default:
                double[] dArr2 = (double[]) obj;
                dArr2[2] = dArr2[2] + 1.0d;
                AbstractC3057n.a(dArr2, d);
                dArr2[3] = dArr2[3] + d;
                break;
        }
    }

    @Override // java.util.function.ObjIntConsumer
    public final void accept(Object obj, int i) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + i;
    }

    @Override // java.util.function.ObjLongConsumer
    public final void accept(Object obj, long j) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 3:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC3057n.a(dArr, dArr2[0]);
                AbstractC3057n.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                break;
            case 6:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                AbstractC3057n.a(dArr3, dArr4[0]);
                AbstractC3057n.a(dArr3, dArr4[1]);
                dArr3[2] = dArr3[2] + dArr4[2];
                dArr3[3] = dArr3[3] + dArr4[3];
                break;
            case 17:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                break;
            default:
                long[] jArr3 = (long[]) obj;
                long[] jArr4 = (long[]) obj2;
                jArr3[0] = jArr3[0] + jArr4[0];
                jArr3[1] = jArr3[1] + jArr4[1];
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 3:
                break;
            case 6:
                break;
            case 17:
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

    @Override // java.util.function.IntFunction
    public final Object apply(int i) {
        switch (this.a) {
            case 0:
                return new Object[i];
            case 1:
                return new Double[i];
            case 13:
                int i2 = V.h;
                return new Object[i];
            case 18:
                return new Integer[i];
            case 20:
                return new Long[i];
            default:
                return new Object[i];
        }
    }

    @Override // java.util.function.LongFunction
    public final Object apply(long j) {
        switch (this.a) {
            case Constants.MAX_TREE_DEPTH /* 25 */:
                return AbstractC3117z0.h0(j);
            case 26:
            default:
                return AbstractC3117z0.u0(j);
            case 27:
                return AbstractC3117z0.s0(j);
        }
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 26:
                return new R0((E0) obj, (E0) obj2);
            default:
                return new S0((F0) obj, (F0) obj2);
        }
    }

    public final double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public final int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    public final long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 4:
                return new double[4];
            case 5:
            case 6:
            case 7:
            case 13:
            case 14:
            default:
                return new long[2];
            case 8:
                return new double[3];
            case 9:
                return new J();
            case 10:
                return new K();
            case 11:
                return new L();
            case 12:
                return new M();
            case 15:
                return new long[2];
        }
    }
}
