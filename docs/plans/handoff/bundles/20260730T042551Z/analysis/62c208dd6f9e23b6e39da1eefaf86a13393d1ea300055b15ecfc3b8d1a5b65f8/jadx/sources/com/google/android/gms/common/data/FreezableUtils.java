package com.google.android.gms.common.data;

import com.amazonaws.internal.ListWithAutoConstructFlag;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        ListWithAutoConstructFlag listWithAutoConstructFlag = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            listWithAutoConstructFlag.add(arrayList.get(i).freeze());
        }
        return listWithAutoConstructFlag;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        ListWithAutoConstructFlag listWithAutoConstructFlag = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            listWithAutoConstructFlag.add(it.next().freeze());
        }
        return listWithAutoConstructFlag;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        ListWithAutoConstructFlag listWithAutoConstructFlag = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            listWithAutoConstructFlag.add(e.freeze());
        }
        return listWithAutoConstructFlag;
    }
}
