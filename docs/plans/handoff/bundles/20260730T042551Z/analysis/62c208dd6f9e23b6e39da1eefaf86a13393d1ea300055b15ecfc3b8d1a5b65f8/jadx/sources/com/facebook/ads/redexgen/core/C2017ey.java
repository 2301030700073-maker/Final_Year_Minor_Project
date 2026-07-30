package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.ey, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2017ey {
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static <T extends InterfaceC1398Nb> OI<T> A01(InterfaceC1397Na<T> interfaceC1397Na, List<Bundle> list) {
        C4T A01 = OI.A01();
        for (int i = 0; i < list.size(); i++) {
            A01.A04(interfaceC1397Na.A6V((Bundle) AbstractC2011es.A01(list.get(i))));
        }
        return A01.A05();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Na != com.google.android.exoplayer2.Bundleable$Creator<T extends com.facebook.ads.redexgen.X.Nb> */
    public static <T extends InterfaceC1398Nb> SparseArray<T> A00(InterfaceC1397Na<T> interfaceC1397Na, SparseArray<Bundle> bundleSparseArray) {
        SparseArray<T> sparseArray = new SparseArray<>(bundleSparseArray.size());
        for (int i = 0; i < bundleSparseArray.size(); i++) {
            int i2 = bundleSparseArray.keyAt(i);
            sparseArray.put(i2, interfaceC1397Na.A6V(bundleSparseArray.valueAt(i)));
        }
        return sparseArray;
    }

    public static void A02(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) AbstractC2094gE.A0f(C2017ey.class.getClassLoader()));
        }
    }
}
