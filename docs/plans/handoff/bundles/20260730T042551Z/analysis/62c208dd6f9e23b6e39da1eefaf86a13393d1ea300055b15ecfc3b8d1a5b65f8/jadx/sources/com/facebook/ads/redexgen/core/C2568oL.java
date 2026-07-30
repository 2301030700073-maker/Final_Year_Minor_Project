package com.facebook.ads.redexgen.core;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.oL, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2568oL {
    public final InterfaceC2572oP A00;
    public final String A01;
    public final Collection<C2582oc> A02;
    public final Collection<C2582oc> A03;
    public final List<Rect> A04;

    public C2568oL(String str, InterfaceC2572oP interfaceC2572oP, List<Rect> rects, Collection<C2582oc> collection, Collection<C2582oc> collection2) {
        this.A01 = str;
        this.A00 = interfaceC2572oP;
        this.A04 = new ArrayList(rects);
        this.A02 = collection;
        this.A03 = collection2;
    }
}
