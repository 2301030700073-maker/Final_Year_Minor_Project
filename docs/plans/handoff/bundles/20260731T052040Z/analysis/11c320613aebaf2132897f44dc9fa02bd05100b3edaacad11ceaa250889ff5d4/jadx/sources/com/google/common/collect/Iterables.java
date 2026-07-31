package com.google.common.collect;

import com.google.common.base.Predicate;
import j$.util.Collection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Iterables {
    public static Object getFirst(Collection collection, String str) {
        Iterator it = collection.iterator();
        return it.hasNext() ? it.next() : str;
    }

    public static Object getLast(Iterable iterable) {
        Object next;
        if (!(iterable instanceof List)) {
            Iterator it = iterable.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            return next;
        }
        List list = (List) iterable;
        if (!list.isEmpty()) {
            return list.get(list.size() - 1);
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
        return null;
    }

    public static Object getLast$1(Iterable iterable) {
        Object next;
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return null;
            }
            if (iterable instanceof List) {
                return ((List) iterable).get(r2.size() - 1);
            }
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object getOnlyElement(Set set) {
        Iterator it = set.iterator();
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder("expected one element but was: <");
        sb.append(next);
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            sb.append(", ");
            sb.append(it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    public static void removeIf(Iterable iterable, Predicate predicate) {
        if (iterable instanceof Collection) {
            Collection.EL.removeIf((java.util.Collection) iterable, predicate);
            return;
        }
        Iterator it = iterable.iterator();
        predicate.getClass();
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
            }
        }
    }
}
