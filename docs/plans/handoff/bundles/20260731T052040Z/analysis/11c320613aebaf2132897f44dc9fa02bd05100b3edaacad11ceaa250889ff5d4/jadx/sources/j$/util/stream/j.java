package j$.util.stream;

import j$.util.Objects;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class j implements BinaryOperator, Function, Supplier, BiConsumer, DoubleFunction, ToDoubleFunction, IntFunction, DoubleBinaryOperator, ObjDoubleConsumer {
    public final /* synthetic */ int a;

    public /* synthetic */ j(int i) {
        this.a = i;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 3:
                ((Set) obj).add(obj2);
                break;
            case 9:
                ((j$.util.q1) obj).a((CharSequence) obj2);
                break;
            case 17:
                ((LinkedHashSet) obj).add(obj2);
                break;
            case 18:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
            case 19:
                ((j$.util.w) obj).a((j$.util.w) obj2);
                break;
            default:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.b(dArr, dArr2[0]);
                Collectors.b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 3:
                break;
            case 9:
                break;
            case 17:
                break;
            case 18:
                break;
            case 19:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.b(dArr, dArr2[0]);
                Collectors.b(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                dArr[3] = dArr[3] + dArr2[3];
                return dArr;
            case 4:
                Set set = (Set) obj;
                Set set2 = (Set) obj2;
                Set set3 = Collectors.a;
                if (set.size() < set2.size()) {
                    set2.addAll(set);
                    return set2;
                }
                set.addAll(set2);
                return set;
            case 7:
                List list = (List) obj;
                Set set4 = Collectors.a;
                list.addAll((List) obj2);
                return list;
            case 10:
                j$.util.q1 q1Var = (j$.util.q1) obj;
                j$.util.q1 q1Var2 = (j$.util.q1) obj2;
                q1Var.getClass();
                Objects.requireNonNull(q1Var2);
                if (q1Var2.d != null) {
                    q1Var2.b();
                    q1Var.a(q1Var2.d[0]);
                }
                return q1Var;
            default:
                long[] jArr = (long[]) obj;
                Set set5 = Collectors.a;
                jArr[0] = jArr[0] + ((long[]) obj2)[0];
                return jArr;
        }
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        switch (this.a) {
            case 23:
                return Math.max(d, d2);
            default:
                return Math.min(d, d2);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.a) {
            case 1:
                break;
            case 5:
                break;
            case 8:
                break;
            case 11:
                break;
        }
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 2:
                return new HashSet();
            case 6:
                return new j$.util.z();
            case 12:
                return new HashMap();
            case 13:
                Set set = Collectors.a;
                return new long[1];
            case 16:
                return new LinkedHashSet();
            case 24:
                return new double[3];
            default:
                return new double[4];
        }
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case 0:
                break;
            case 4:
                break;
            case 7:
                break;
            case 10:
                break;
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        switch (this.a) {
            case 1:
                break;
            case 5:
                break;
            case 8:
                break;
            case 11:
                break;
        }
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        switch (this.a) {
            case 25:
                Collectors.b(dArr, d);
                dArr[2] = dArr[2] + d;
                break;
            default:
                dArr[2] = dArr[2] + 1.0d;
                Collectors.b(dArr, d);
                dArr[3] = dArr[3] + d;
                break;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Double[i];
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.a) {
            case 1:
                double[] dArr = (double[]) obj;
                Set set = Collectors.a;
                return Double.valueOf(dArr[2] != 0.0d ? Collectors.a(dArr) / dArr[2] : 0.0d);
            case 5:
                Set set2 = Collectors.a;
                return j$.com.android.tools.r8.a.I(((Set) obj).toArray());
            case 8:
                Set set3 = Collectors.a;
                return obj;
            case 11:
                return ((j$.util.q1) obj).toString();
            default:
                Set set4 = Collectors.a;
                return Long.valueOf(((long[]) obj)[0]);
        }
    }
}
