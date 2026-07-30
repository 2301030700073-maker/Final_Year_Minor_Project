package defpackage;

import android.util.SparseArray;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class Gx {

    /* renamed from: do, reason: not valid java name */
    public static final SparseArray<Ex> f1276do = new SparseArray<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashMap<Ex, Integer> f1277do;

    static {
        HashMap<Ex, Integer> hashMap = new HashMap<>();
        f1277do = hashMap;
        hashMap.put(Ex.DEFAULT, 0);
        hashMap.put(Ex.VERY_LOW, 1);
        hashMap.put(Ex.HIGHEST, 2);
        for (Ex ex : hashMap.keySet()) {
            f1276do.append(f1277do.get(ex).intValue(), ex);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m775do(Ex ex) {
        Integer num = f1277do.get(ex);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + ex);
    }

    /* renamed from: if, reason: not valid java name */
    public static Ex m776if(int i) {
        Ex ex = f1276do.get(i);
        if (ex != null) {
            return ex;
        }
        throw new IllegalArgumentException(V1.m2494case("Unknown Priority for value ", i));
    }
}
