package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Gs, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1242Gs {
    public static String[] A00 = {"M7M7680JiQXMJzeuHBUdBK3CqcsunIE3", "7YJQc0MEUr6fNb1HoLhvfznehf2fNPi1", "fqXve0BGHc", "EJDyhBK8ScH8NN0H4G45MCvGKFSIU6i3", "lE5hsHUrpnTpaSUAUiDOdKdDJm2EXpBt", "fXhWa5fzMs", "jGMjXmbPjJmsUXbAj46daPhZmilD9JtA", "gy7nSuWAyo"};
    public static final Map<String, WeakReference<C1241Gr>> A01 = new HashMap();

    public static int A00() {
        Map<String, WeakReference<C1241Gr>> map = A01;
        if (A00[4].charAt(3) != 'h') {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[3] = "KcOG1rzwVGm5OqslsWQoAqhkYEC7FRij";
        strArr[1] = "Dhj4Lprngz6YVn4AutwbBiUWJOZdaDii";
        return map.size();
    }

    public static C1241Gr A01(C2322k1 c2322k1, AbstractC2478md abstractC2478md, int i, InterfaceC1239Gp interfaceC1239Gp) {
        C1241Gr c1241Gr = new C1241Gr(c2322k1, abstractC2478md, c2322k1.A02().A0A(), i);
        c1241Gr.A0b(interfaceC1239Gp);
        c1241Gr.A0X();
        A01.put(abstractC2478md.A0r(), new WeakReference<>(c1241Gr));
        return c1241Gr;
    }

    public static C1241Gr A02(String str) {
        WeakReference<C1241Gr> weakReference = A01.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(AbstractC2478md abstractC2478md, C1241Gr c1241Gr) {
        A01.put(abstractC2478md.A0r(), new WeakReference<>(c1241Gr));
    }

    public static void A04(String str) {
        A01.remove(str);
    }
}
