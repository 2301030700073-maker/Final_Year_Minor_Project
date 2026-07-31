package timber.log;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Timber {
    public static final Forest Forest;
    public static volatile Forest[] treeArray;
    public static final ArrayList trees;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Forest {
        public static void d(Object... objArr) {
            for (Forest forest : Timber.treeArray) {
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                forest.getClass();
                d(copyOf);
            }
        }
    }

    static {
        Forest forest = new Forest();
        new ThreadLocal();
        Forest = forest;
        trees = new ArrayList();
        treeArray = new Forest[0];
    }

    public static final void plant(Forest... forestArr) {
        Forest forest = Forest;
        forest.getClass();
        int length = forestArr.length;
        int i = 0;
        while (i < length) {
            Forest forest2 = forestArr[i];
            i++;
            if (forest2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("trees contained null");
                return;
            } else if (forest2 == forest) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot plant Timber into itself.");
                return;
            }
        }
        ArrayList arrayList = trees;
        synchronized (arrayList) {
            Collections.addAll(arrayList, Arrays.copyOf(forestArr, forestArr.length));
            Object[] array = arrayList.toArray(new Forest[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            treeArray = (Forest[]) array;
        }
    }
}
