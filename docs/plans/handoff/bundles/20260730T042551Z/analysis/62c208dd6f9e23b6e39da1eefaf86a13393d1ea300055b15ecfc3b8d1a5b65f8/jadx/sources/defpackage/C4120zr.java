package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: zr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C4120zr extends C0315Kc {
    public static final void a(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C3653rw c3653rw = (C3653rw) it.next();
            linkedHashMap.put(c3653rw.f15340do, c3653rw.f15341if);
        }
    }

    public static final LinkedHashMap b(Map map) {
        C0173Do.m401try(map, "<this>");
        return new LinkedHashMap(map);
    }

    /* renamed from: implements, reason: not valid java name */
    public static final Map m8813implements(C3653rw... c3653rwArr) {
        if (c3653rwArr.length <= 0) {
            return C0493Sf.f3532do;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(C0315Kc.m1180switch(c3653rwArr.length));
        for (C3653rw c3653rw : c3653rwArr) {
            linkedHashMap.put(c3653rw.f15340do, c3653rw.f15341if);
        }
        return linkedHashMap;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static final Map m8814instanceof(ArrayList arrayList) {
        C0493Sf c0493Sf = C0493Sf.f3532do;
        int size = arrayList.size();
        if (size == 0) {
            return c0493Sf;
        }
        if (size != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(C0315Kc.m1180switch(arrayList.size()));
            a(arrayList, linkedHashMap);
            return linkedHashMap;
        }
        C3653rw c3653rw = (C3653rw) arrayList.get(0);
        C0173Do.m401try(c3653rw, "pair");
        Map singletonMap = Collections.singletonMap(c3653rw.f15340do, c3653rw.f15341if);
        C0173Do.m399new(singletonMap, "singletonMap(pair.first, pair.second)");
        return singletonMap;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static final Map m8815synchronized(Map map) {
        C0173Do.m401try(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? b(map) : C0315Kc.m1178strictfp(map) : C0493Sf.f3532do;
    }

    /* renamed from: transient, reason: not valid java name */
    public static final HashMap m8816transient(C3653rw... c3653rwArr) {
        HashMap hashMap = new HashMap(C0315Kc.m1180switch(c3653rwArr.length));
        for (C3653rw c3653rw : c3653rwArr) {
            hashMap.put(c3653rw.f15340do, c3653rw.f15341if);
        }
        return hashMap;
    }
}
