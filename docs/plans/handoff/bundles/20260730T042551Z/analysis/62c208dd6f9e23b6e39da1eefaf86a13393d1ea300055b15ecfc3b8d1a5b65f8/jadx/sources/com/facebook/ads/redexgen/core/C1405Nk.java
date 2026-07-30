package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* renamed from: com.facebook.ads.redexgen.X.Nk, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1405Nk implements InterfaceC2576oW {
    public final /* synthetic */ C1404Nj A00;

    public C1405Nk(C1404Nj c1404Nj) {
        this.A00 = c1404Nj;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2576oW
    public final void AF0() {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        ArrayList arrayList;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        InterfaceC2576oW interfaceC2576oW;
        InterfaceC2576oW interfaceC2576oW2;
        linkedHashMap = this.A00.A07;
        synchronized (linkedHashMap) {
            linkedHashMap2 = this.A00.A07;
            arrayList = new ArrayList(linkedHashMap2.size());
            linkedHashMap3 = this.A00.A07;
            for (Runnable runnable : linkedHashMap3.values()) {
                if (runnable != null) {
                    arrayList.add(runnable);
                }
            }
            linkedHashMap4 = this.A00.A07;
            linkedHashMap4.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        interfaceC2576oW = this.A00.A00;
        if (interfaceC2576oW != null) {
            interfaceC2576oW2 = this.A00.A00;
            interfaceC2576oW2.AF0();
        }
    }
}
