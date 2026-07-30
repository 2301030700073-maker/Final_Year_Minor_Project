package defpackage;

import j$.util.Iterator;
import java.util.AbstractList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.Consumer;

/* renamed from: oJ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3442oJ extends AbstractList<String> implements InterfaceC0569Vp, RandomAccess {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0569Vp f14723do;

    /* renamed from: oJ$do, reason: invalid class name */
    public class Cdo implements ListIterator<String>, Iterator {

        /* renamed from: do, reason: not valid java name */
        public final ListIterator<String> f14724do;

        public Cdo(C3442oJ c3442oJ, int i) {
            this.f14724do = c3442oJ.f14723do.listIterator(i);
        }

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f14724do.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f14724do.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
        public final Object next() {
            return this.f14724do.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f14724do.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return this.f14724do.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f14724do.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: oJ$if, reason: invalid class name */
    public class Cif implements java.util.Iterator<String>, Iterator {

        /* renamed from: do, reason: not valid java name */
        public final java.util.Iterator<String> f14725do;

        public Cif(C3442oJ c3442oJ) {
            this.f14725do = c3442oJ.f14723do.iterator();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f14725do.hasNext();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            return this.f14725do.next();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C3442oJ(InterfaceC0569Vp interfaceC0569Vp) {
        this.f14723do = interfaceC0569Vp;
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: for */
    public final List<?> mo2667for() {
        return this.f14723do.mo2667for();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return (String) this.f14723do.get(i);
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: interface */
    public final InterfaceC0569Vp mo2668interface() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final java.util.Iterator<String> iterator() {
        return new Cif(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new Cdo(this, i);
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: new */
    public final Object mo2669new(int i) {
        return this.f14723do.mo2669new(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14723do.size();
    }

    @Override // defpackage.InterfaceC0569Vp
    /* renamed from: strictfp */
    public final void mo2670strictfp(AbstractC3370n6 abstractC3370n6) {
        throw new UnsupportedOperationException();
    }
}
