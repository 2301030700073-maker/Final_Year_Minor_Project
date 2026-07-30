package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class CN extends IN {

    /* renamed from: do, reason: not valid java name */
    public final EN f369do;

    /* renamed from: for, reason: not valid java name */
    public final int f370for;

    /* renamed from: new, reason: not valid java name */
    public int f371new;

    public CN(EN en, int i) {
        int size = en.size();
        C4094zN.m8794if(i, size);
        this.f370for = size;
        this.f371new = i;
        this.f369do = en;
    }

    @Override // java.util.ListIterator
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final boolean hasPrevious() {
        return this.f371new > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f371new < this.f370for;
    }

    @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f371new;
        this.f371new = i + 1;
        return this.f369do.get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f371new;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f371new - 1;
    }

    @Override // java.util.ListIterator
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f371new - 1;
        this.f371new = i;
        return this.f369do.get(i);
    }
}
