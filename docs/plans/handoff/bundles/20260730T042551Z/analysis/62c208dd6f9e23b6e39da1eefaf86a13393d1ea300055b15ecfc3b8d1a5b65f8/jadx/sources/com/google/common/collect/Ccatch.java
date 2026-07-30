package com.google.common.collect;

import com.google.common.collect.Cif;
import defpackage.A3;
import defpackage.AbstractC3324mJ;
import defpackage.C2601cu;
import defpackage.C3185jz;
import defpackage.Cconst;
import defpackage.InterfaceC0375Mt;
import defpackage.O4;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* renamed from: com.google.common.collect.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<E> extends Celse<E> {

    /* renamed from: do, reason: not valid java name */
    public static final Ccatch<Comparable> f11808do;

    /* renamed from: if, reason: not valid java name */
    public final transient Cif<E> f11809if;

    static {
        Cif.C0075if c0075if = Cif.f11833do;
        f11808do = new Ccatch<>(C3185jz.f13859do, C2601cu.f12393do);
    }

    public Ccatch(Cif<E> cif, Comparator<? super E> comparator) {
        super(comparator);
        this.f11809if = cif;
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Ctry, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: break */
    public final AbstractC3324mJ<E> iterator() {
        return this.f11809if.listIterator(0);
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: case */
    public final Object[] mo6034case() {
        return this.f11809if.mo6034case();
    }

    @Override // com.google.common.collect.Celse, java.util.NavigableSet
    public final E ceiling(E e) {
        int m6042finally = m6042finally(e, true);
        if (m6042finally == size()) {
            return null;
        }
        return this.f11809if.get(m6042finally);
    }

    @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return Collections.binarySearch(this.f11809if, obj, ((Celse) this).f11818do) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        if (collection instanceof InterfaceC0375Mt) {
            collection = ((InterfaceC0375Mt) collection).m1467package();
        }
        Comparator<? super E> comparator = ((Celse) this).f11818do;
        if (!O4.m1622static(comparator, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        AbstractC3324mJ<E> it = iterator();
        Iterator<?> it2 = collection.iterator();
        Cconst cconst = (Cconst) it;
        if (!cconst.hasNext()) {
            return false;
        }
        A3.Cdo cdo = (Object) it2.next();
        A3.Cdo cdo2 = (Object) cconst.next();
        while (true) {
            try {
                int compare = comparator.compare(cdo2, cdo);
                if (compare < 0) {
                    if (!cconst.hasNext()) {
                        return false;
                    }
                    cdo2 = (Object) cconst.next();
                } else if (compare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    cdo = (Object) it2.next();
                } else if (compare > 0) {
                    break;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public final Ccatch<E> m6040default(int i, int i2) {
        if (i == 0 && i2 == size()) {
            return this;
        }
        Comparator<? super E> comparator = ((Celse) this).f11818do;
        return i < i2 ? new Ccatch<>(this.f11809if.subList(i, i2), comparator) : Celse.m6052native(comparator);
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: else */
    public final int mo6035else() {
        return this.f11809if.mo6035else();
    }

    @Override // com.google.common.collect.Ctry, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        A3.Cdo cdo;
        E next;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        Comparator<? super E> comparator = ((Celse) this).f11818do;
        if (!O4.m1622static(comparator, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            AbstractC3324mJ<E> it2 = iterator();
            do {
                Cconst cconst = (Cconst) it2;
                if (!cconst.hasNext()) {
                    return true;
                }
                cdo = (Object) cconst.next();
                next = it.next();
                if (next == null) {
                    break;
                }
            } while (comparator.compare(cdo, next) == 0);
            return false;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final int m6041extends(E e, boolean z) {
        e.getClass();
        int binarySearch = Collections.binarySearch(this.f11809if, e, ((Celse) this).f11818do);
        return binarySearch >= 0 ? z ? binarySearch + 1 : binarySearch : ~binarySearch;
    }

    /* renamed from: finally, reason: not valid java name */
    public final int m6042finally(E e, boolean z) {
        e.getClass();
        int binarySearch = Collections.binarySearch(this.f11809if, e, ((Celse) this).f11818do);
        return binarySearch >= 0 ? z ? binarySearch : binarySearch + 1 : ~binarySearch;
    }

    @Override // com.google.common.collect.Celse, java.util.SortedSet
    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f11809if.get(0);
    }

    @Override // com.google.common.collect.Celse, java.util.NavigableSet
    public final E floor(E e) {
        int m6041extends = m6041extends(e, true) - 1;
        if (m6041extends == -1) {
            return null;
        }
        return this.f11809if.get(m6041extends);
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: goto */
    public final int mo6036goto() {
        return this.f11809if.mo6036goto();
    }

    @Override // com.google.common.collect.Celse, java.util.NavigableSet
    public final E higher(E e) {
        int m6042finally = m6042finally(e, false);
        if (m6042finally == size()) {
            return null;
        }
        return this.f11809if.get(m6042finally);
    }

    @Override // com.google.common.collect.Celse, java.util.NavigableSet
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Cif.C0075if descendingIterator() {
        return this.f11809if.mo6065final().listIterator(0);
    }

    @Override // com.google.common.collect.Celse, java.util.SortedSet
    public final E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f11809if.get(size() - 1);
    }

    @Override // com.google.common.collect.Celse, java.util.NavigableSet
    public final E lower(E e) {
        int m6041extends = m6041extends(e, false) - 1;
        if (m6041extends == -1) {
            return null;
        }
        return this.f11809if.get(m6041extends);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Celse
    /* renamed from: return, reason: not valid java name */
    public final Ccatch mo6044return(Object obj, boolean z) {
        return m6040default(0, m6041extends(obj, z));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f11809if.size();
    }

    @Override // com.google.common.collect.Celse
    /* renamed from: static, reason: not valid java name */
    public final Ccatch mo6045static(Object obj, boolean z, Object obj2, boolean z2) {
        Ccatch mo6046switch = mo6046switch(obj, z);
        return mo6046switch.m6040default(0, mo6046switch.m6041extends(obj2, z2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Celse
    /* renamed from: switch, reason: not valid java name */
    public final Ccatch mo6046switch(Object obj, boolean z) {
        return m6040default(m6042finally(obj, z), size());
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: this */
    public final boolean mo6038this() {
        return this.f11809if.mo6038this();
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: try */
    public final int mo6039try(Object[] objArr) {
        return this.f11809if.mo6039try(objArr);
    }

    @Override // com.google.common.collect.Celse
    /* renamed from: while, reason: not valid java name */
    public final Ccatch mo6047while() {
        Comparator reverseOrder = Collections.reverseOrder(((Celse) this).f11818do);
        return isEmpty() ? Celse.m6052native(reverseOrder) : new Ccatch(this.f11809if.mo6065final(), reverseOrder);
    }
}
