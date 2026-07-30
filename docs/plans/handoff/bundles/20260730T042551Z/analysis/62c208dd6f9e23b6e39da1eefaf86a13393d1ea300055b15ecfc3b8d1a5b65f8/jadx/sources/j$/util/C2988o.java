package j$.util;

import java.util.Comparator;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* renamed from: j$.util.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C2988o extends C2986m implements java.util.List, List {
    private static final long serialVersionUID = -283967356065247728L;
    final java.util.List b;

    C2988o(java.util.List list) {
        super(list);
        this.b = list;
    }

    private Object readResolve() {
        java.util.List list = this.b;
        return list instanceof RandomAccess ? new C3122u(list) : this;
    }

    @Override // java.util.List, j$.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final boolean addAll(int i, java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean equals(Object obj) {
        return obj == this || this.b.equals(obj);
    }

    @Override // java.util.List, j$.util.List
    public final Object get(int i) {
        return this.b.get(i);
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // java.util.List, j$.util.List
    public final int indexOf(Object obj) {
        return this.b.indexOf(obj);
    }

    @Override // java.util.List, j$.util.List
    public final int lastIndexOf(Object obj) {
        return this.b.lastIndexOf(obj);
    }

    @Override // java.util.List, j$.util.List
    public final ListIterator listIterator() {
        return new C2987n(this, 0);
    }

    @Override // java.util.List, j$.util.List
    public final ListIterator listIterator(int i) {
        return new C2987n(this, i);
    }

    @Override // java.util.List, j$.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final void sort(Comparator comparator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public java.util.List subList(int i, int i2) {
        return new C2988o(this.b.subList(i, i2));
    }
}
