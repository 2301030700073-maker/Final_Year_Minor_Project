package com.google.common.collect;

import com.google.common.collect.Cfinal;
import defpackage.TC;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.google.common.collect.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst extends Cfinal.Cdo<Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Set f11811do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Set f11812if;

    public Cconst(Set set, Set set2) {
        this.f11811do = set;
        this.f11812if = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f11811do.contains(obj) || this.f11812if.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f11811do.isEmpty() && this.f11812if.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new TC(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Set set = this.f11811do;
        int size = set.size();
        Iterator it = this.f11812if.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                size++;
            }
        }
        return size;
    }
}
