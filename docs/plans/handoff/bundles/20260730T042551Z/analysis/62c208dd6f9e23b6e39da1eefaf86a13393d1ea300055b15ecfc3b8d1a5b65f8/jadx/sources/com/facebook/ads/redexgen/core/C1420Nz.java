package com.facebook.ads.redexgen.core;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: Add missing generic type declarations: [K0] */
/* renamed from: com.facebook.ads.redexgen.X.Nz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1420Nz<K0> extends AbstractC2519nI<K0> {
    public final /* synthetic */ Comparator A00;

    public C1420Nz(final Comparator val$comparator) {
        this.A00 = val$comparator;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2519nI
    public final <K extends K0, V> Map<K, Collection<V>> A04() {
        return new TreeMap(this.A00);
    }
}
