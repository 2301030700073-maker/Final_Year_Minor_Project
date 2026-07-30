package com.google.protobuf;

import c.b.b.M;
import c.b.b.P;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class MapFieldLite extends LinkedHashMap {

    /* renamed from: a, reason: collision with root package name */
    public static final MapFieldLite f3510a;
    public boolean isMutable;

    static {
        MapFieldLite mapFieldLite = new MapFieldLite();
        f3510a = mapFieldLite;
        mapFieldLite.isMutable = false;
    }

    public MapFieldLite() {
        this.isMutable = true;
    }

    public static int a(Object obj) {
        if (obj instanceof byte[]) {
            return P.d((byte[]) obj);
        }
        if (obj instanceof M) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    public final void b() {
        if (!this.isMutable) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        b();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof java.util.Map
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L5e
            java.util.Map r6 = (java.util.Map) r6
            if (r5 != r6) goto Lc
        La:
            r5 = r1
            goto L5b
        Lc:
            int r0 = r5.size()
            int r3 = r6.size()
            if (r0 == r3) goto L18
        L16:
            r5 = r2
            goto L5b
        L18:
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L20:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto La
            java.lang.Object r0 = r5.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r3 = r0.getKey()
            boolean r3 = r6.containsKey(r3)
            if (r3 != 0) goto L37
            goto L16
        L37:
            java.lang.Object r3 = r0.getValue()
            java.lang.Object r0 = r0.getKey()
            java.lang.Object r0 = r6.get(r0)
            boolean r4 = r3 instanceof byte[]
            if (r4 == 0) goto L54
            boolean r4 = r0 instanceof byte[]
            if (r4 == 0) goto L54
            byte[] r3 = (byte[]) r3
            byte[] r0 = (byte[]) r0
            boolean r0 = java.util.Arrays.equals(r3, r0)
            goto L58
        L54:
            boolean r0 = r3.equals(r0)
        L58:
            if (r0 != 0) goto L20
            goto L16
        L5b:
            if (r5 == 0) goto L5e
            goto L5f
        L5e:
            r1 = r2
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MapFieldLite.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int i = 0;
        for (Map.Entry entry : entrySet()) {
            i += a(entry.getValue()) ^ a(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        b();
        P.a(obj);
        if (obj2 != null) {
            return super.put(obj, obj2);
        }
        throw null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map map) {
        b();
        for (Object obj : map.keySet()) {
            P.a(obj);
            P.a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        b();
        return super.remove(obj);
    }

    public MapFieldLite(Map map) {
        super(map);
        this.isMutable = true;
    }
}
