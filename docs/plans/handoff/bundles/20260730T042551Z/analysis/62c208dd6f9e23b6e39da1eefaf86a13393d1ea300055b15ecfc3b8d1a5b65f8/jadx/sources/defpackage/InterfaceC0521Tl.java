package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: Tl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public interface InterfaceC0521Tl {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f3743do = new Cdo();

    /* renamed from: Tl$do, reason: invalid class name */
    public static class Cdo implements InterfaceC0521Tl {
        /* renamed from: do, reason: not valid java name */
        public final HashMap m2286do(Object obj) {
            ConcurrentHashMap concurrentHashMap = C3129j1.f13629do;
            Class<?> cls = obj.getClass();
            HashMap hashMap = new HashMap();
            Map map = (Map) C3129j1.f13629do.get(cls);
            Map map2 = map;
            if (map == null) {
                HashMap hashMap2 = new HashMap();
                C3129j1.m7028do(cls, hashMap2, new HashMap());
                map2 = hashMap2;
            }
            if (!map2.isEmpty()) {
                for (Map.Entry entry : map2.entrySet()) {
                    hashMap.put(entry.getKey(), new C4050yg(obj, (Method) entry.getValue()));
                }
            }
            return hashMap;
        }

        /* renamed from: if, reason: not valid java name */
        public final HashMap m2287if(Object obj) {
            ConcurrentHashMap concurrentHashMap = C3129j1.f13629do;
            Class<?> cls = obj.getClass();
            HashMap hashMap = new HashMap();
            Map map = (Map) C3129j1.f13630if.get(cls);
            Map map2 = map;
            if (map == null) {
                HashMap hashMap2 = new HashMap();
                C3129j1.m7028do(cls, new HashMap(), hashMap2);
                map2 = hashMap2;
            }
            if (!map2.isEmpty()) {
                for (Map.Entry entry : map2.entrySet()) {
                    HashSet hashSet = new HashSet();
                    Iterator it = ((Set) entry.getValue()).iterator();
                    while (it.hasNext()) {
                        hashSet.add(new C3579qg(obj, (Method) it.next()));
                    }
                    hashMap.put(entry.getKey(), hashSet);
                }
            }
            return hashMap;
        }
    }
}
