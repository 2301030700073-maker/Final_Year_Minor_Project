package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Nm, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1407Nm implements InterfaceC2589ol {
    public final List<InterfaceC2590om> A00 = new ArrayList();

    @Override // com.facebook.ads.redexgen.core.InterfaceC2589ol
    public final InterfaceC2590om A6Y(int i) {
        this.A00.get(i);
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<InterfaceC2590om> iterator() {
        return this.A00.iterator();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2589ol
    public final int size() {
        return this.A00.size();
    }
}
