package com.facebook.ads.redexgen.core;

import java.util.AbstractSet;
import java.util.Collection;

/* renamed from: com.facebook.ads.redexgen.X.nt, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2553nt<E> extends AbstractSet<E> {
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nt != com.google.common.collect.Sets$ImprovedAbstractSet<E> */
    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> c) {
        return AbstractC2556nx.A0A(this, c);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nt != com.google.common.collect.Sets$ImprovedAbstractSet<E> */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> c) {
        return super.retainAll((Collection) AbstractC2212iD.A04(c));
    }
}
