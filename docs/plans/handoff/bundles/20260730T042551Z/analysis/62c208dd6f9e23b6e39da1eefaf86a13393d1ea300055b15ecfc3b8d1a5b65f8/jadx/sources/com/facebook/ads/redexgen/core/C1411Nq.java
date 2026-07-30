package com.facebook.ads.redexgen.core;

import java.util.Set;
import javax.annotation.CheckForNull;

/* renamed from: com.facebook.ads.redexgen.X.Nq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1411Nq<E> extends C2372kp<E> implements Set<E> {
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Nq != com.google.common.collect.Sets$FilteredSet<E> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.iE != com.google.common.base.Predicate<? super E> */
    public C1411Nq(Set<E> unfiltered, InterfaceC2213iE<? super E> predicate) {
        super(unfiltered, predicate);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Nq != com.google.common.collect.Sets$FilteredSet<E> */
    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object object) {
        return AbstractC2556nx.A09(this, object);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Nq != com.google.common.collect.Sets$FilteredSet<E> */
    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return AbstractC2556nx.A00(this);
    }
}
