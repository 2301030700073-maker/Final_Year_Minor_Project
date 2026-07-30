package defpackage;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes3.dex */
public class E8 extends D8 {
    public static final <T> boolean d(Iterable<? extends T> iterable, T t) {
        int i;
        C0173Do.m401try(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t);
        }
        if (!(iterable instanceof List)) {
            Iterator<? extends T> it = iterable.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                T next = it.next();
                if (i2 < 0) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                if (C0173Do.m394do(t, next)) {
                    i = i2;
                    break;
                }
                i2++;
            }
        } else {
            i = ((List) iterable).indexOf(t);
        }
        return i >= 0;
    }

    public static final ArrayList e(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final void f(Collection collection, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, InterfaceC2650dk interfaceC2650dk) {
        C0173Do.m401try(charSequence, "separator");
        C0173Do.m401try(charSequence2, "prefix");
        C0173Do.m401try(charSequence3, "postfix");
        C0173Do.m401try(charSequence4, "truncated");
        sb.append(charSequence2);
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2++;
            if (i2 > 1) {
                sb.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            if (interfaceC2650dk != null) {
                sb.append((CharSequence) interfaceC2650dk.mo364this(next));
            } else {
                if (next != null ? next instanceof CharSequence : true) {
                    sb.append((CharSequence) next);
                } else if (next instanceof Character) {
                    sb.append(((Character) next).charValue());
                } else {
                    sb.append((CharSequence) String.valueOf(next));
                }
            }
        }
        if (i >= 0 && i2 > i) {
            sb.append(charSequence4);
        }
        sb.append(charSequence3);
    }

    public static final <T> T g(List<? extends T> list) {
        C0173Do.m401try(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(O4.m1633while(list));
    }

    public static final List h(Comparator comparator, ArrayList arrayList) {
        if (arrayList.size() <= 1) {
            return j(arrayList);
        }
        Object[] array = arrayList.toArray(new Object[0]);
        C0173Do.m401try(array, "<this>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return J2.d(array);
    }

    public static final void i(Iterable iterable, AbstractCollection abstractCollection) {
        C0173Do.m401try(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static final <T> List<T> j(Iterable<? extends T> iterable) {
        ArrayList arrayList;
        C0173Do.m401try(iterable, "<this>");
        boolean z = iterable instanceof Collection;
        if (!z) {
            if (z) {
                arrayList = k((Collection) iterable);
            } else {
                ArrayList arrayList2 = new ArrayList();
                i(iterable, arrayList2);
                arrayList = arrayList2;
            }
            return O4.m1632volatile(arrayList);
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return C0471Rf.f3217do;
        }
        if (size != 1) {
            return k(collection);
        }
        return O4.m1617package(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final ArrayList k(Collection collection) {
        C0173Do.m401try(collection, "<this>");
        return new ArrayList(collection);
    }

    public static final <T> Set<T> l(Iterable<? extends T> iterable) {
        C0173Do.m401try(iterable, "<this>");
        boolean z = iterable instanceof Collection;
        C0515Tf c0515Tf = C0515Tf.f3720do;
        if (!z) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            i(iterable, linkedHashSet);
            int size = linkedHashSet.size();
            if (size == 0) {
                return c0515Tf;
            }
            if (size != 1) {
                return linkedHashSet;
            }
            Set<T> singleton = Collections.singleton(linkedHashSet.iterator().next());
            C0173Do.m399new(singleton, "singleton(element)");
            return singleton;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return c0515Tf;
        }
        if (size2 != 1) {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(C0315Kc.m1180switch(collection.size()));
            i(iterable, linkedHashSet2);
            return linkedHashSet2;
        }
        Set<T> singleton2 = Collections.singleton(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        C0173Do.m399new(singleton2, "singleton(element)");
        return singleton2;
    }
}
