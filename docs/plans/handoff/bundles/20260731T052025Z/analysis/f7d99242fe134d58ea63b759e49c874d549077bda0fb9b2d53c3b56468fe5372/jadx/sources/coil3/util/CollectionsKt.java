package coil3.util;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CollectionsKt {
    /* renamed from: component1-wuMLFU8, reason: not valid java name */
    public static final int m910component1wuMLFU8(long j) {
        return IntPair.m917getFirstimpl(j);
    }

    /* renamed from: component2-wuMLFU8, reason: not valid java name */
    public static final int m911component2wuMLFU8(long j) {
        return IntPair.m918getSecondimpl(j);
    }

    public static final <R, T> T firstNotNullOfOrNullIndices(List<? extends R> list, Function1 function1) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = (T) function1.invoke(list.get(i));
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    public static final <T, R> List<R> flatMapIndices(List<? extends T> list, Function1 function1) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            kotlin.collections.CollectionsKt.addAll((Iterable) function1.invoke(list.get(i)), arrayList);
        }
        return arrayList;
    }

    public static final <T, R> R foldIndices(List<? extends T> list, R r, Function2 function2) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            r = (R) function2.invoke(r, list.get(i));
        }
        return r;
    }

    public static final <T> void forEachIndexedIndices(List<? extends T> list, Function2 function2) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            function2.invoke(Integer.valueOf(i), list.get(i));
        }
    }

    public static final <T> void forEachIndices(List<? extends T> list, Function1 function1) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            function1.invoke(list.get(i));
        }
    }

    public static final <T, R> List<R> mapNotNullIndices(List<? extends T> list, Function1 function1) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object invoke = function1.invoke(list.get(i));
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return arrayList;
    }

    public static final <T> void removeIfIndices(List<T> list, Function1 function1) {
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = i2 - i;
            if (((Boolean) function1.invoke(list.get(i3))).booleanValue()) {
                list.remove(i3);
                i++;
            }
        }
    }
}
