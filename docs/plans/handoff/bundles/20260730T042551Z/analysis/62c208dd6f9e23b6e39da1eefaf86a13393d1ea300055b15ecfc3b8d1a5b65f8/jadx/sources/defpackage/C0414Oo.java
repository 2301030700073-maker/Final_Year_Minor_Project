package defpackage;

import java.util.NoSuchElementException;

/* renamed from: Oo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0414Oo extends AbstractC3324mJ<Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2672do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2673do;

    public C0414Oo(Object obj) {
        this.f2672do = obj;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return !this.f2673do;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        if (this.f2673do) {
            throw new NoSuchElementException();
        }
        this.f2673do = true;
        return this.f2672do;
    }
}
