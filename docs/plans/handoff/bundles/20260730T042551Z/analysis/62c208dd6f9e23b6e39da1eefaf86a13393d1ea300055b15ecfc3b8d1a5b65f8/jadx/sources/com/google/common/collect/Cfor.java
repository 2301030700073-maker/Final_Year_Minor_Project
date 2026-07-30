package com.google.common.collect;

import com.google.common.collect.Cdo;
import com.google.common.collect.Cthis;
import defpackage.AbstractC3324mJ;
import defpackage.C3850vF;
import j$.util.Map;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* renamed from: com.google.common.collect.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor<K, V> implements Map<K, V>, Serializable, j$.util.Map {

    /* renamed from: do, reason: not valid java name */
    public transient com.google.common.collect.Cdo<V> f11822do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient Ctry<Map.Entry<K, V>> f11823do;

    /* renamed from: if, reason: not valid java name */
    public transient Ctry<K> f11824if;

    /* renamed from: com.google.common.collect.for$do, reason: invalid class name */
    public static class Cdo<K, V> {

        /* renamed from: do, reason: not valid java name */
        public int f11825do = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0074do f11826do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object[] f11827do;

        /* renamed from: com.google.common.collect.for$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0074do {

            /* renamed from: do, reason: not valid java name */
            public final Object f11828do;

            /* renamed from: for, reason: not valid java name */
            public final Object f11829for;

            /* renamed from: if, reason: not valid java name */
            public final Object f11830if;

            public C0074do(Object obj, Object obj2, Object obj3) {
                this.f11828do = obj;
                this.f11830if = obj2;
                this.f11829for = obj3;
            }

            /* renamed from: do, reason: not valid java name */
            public final IllegalArgumentException m6062do() {
                Object obj = this.f11828do;
                String valueOf = String.valueOf(obj);
                String valueOf2 = String.valueOf(this.f11830if);
                String valueOf3 = String.valueOf(obj);
                String valueOf4 = String.valueOf(this.f11829for);
                StringBuilder sb = new StringBuilder(valueOf4.length() + valueOf3.length() + valueOf2.length() + valueOf.length() + 39);
                sb.append("Multiple entries with same key: ");
                sb.append(valueOf);
                sb.append("=");
                sb.append(valueOf2);
                sb.append(" and ");
                sb.append(valueOf3);
                sb.append("=");
                sb.append(valueOf4);
                return new IllegalArgumentException(sb.toString());
            }
        }

        public Cdo(int i) {
            this.f11827do = new Object[i * 2];
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:21:0x018b  */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r4v2, types: [int[]] */
        /* JADX WARN: Type inference failed for: r4v8 */
        /* JADX WARN: Type inference failed for: r6v11 */
        /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Object[]] */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.common.collect.Cthis m6060do() {
            /*
                Method dump skipped, instructions count: 442
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Cfor.Cdo.m6060do():com.google.common.collect.this");
        }

        /* renamed from: if, reason: not valid java name */
        public final void m6061if(Object obj, Object obj2) {
            int i = (this.f11825do + 1) * 2;
            Object[] objArr = this.f11827do;
            if (i > objArr.length) {
                this.f11827do = Arrays.copyOf(objArr, Cdo.Cif.m6051do(objArr.length, i));
            }
            if (obj == null) {
                String valueOf = String.valueOf(obj2);
                StringBuilder sb = new StringBuilder(valueOf.length() + 24);
                sb.append("null key in entry: null=");
                sb.append(valueOf);
                throw new NullPointerException(sb.toString());
            }
            if (obj2 == null) {
                String valueOf2 = String.valueOf(obj);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 26);
                sb2.append("null value in entry: ");
                sb2.append(valueOf2);
                sb2.append("=null");
                throw new NullPointerException(sb2.toString());
            }
            Object[] objArr2 = this.f11827do;
            int i2 = this.f11825do;
            int i3 = i2 * 2;
            objArr2[i3] = obj;
            objArr2[i3 + 1] = obj2;
            this.f11825do = i2 + 1;
        }
    }

    /* renamed from: com.google.common.collect.for$if, reason: invalid class name */
    public static class Cif<K, V> implements Serializable {

        /* renamed from: do, reason: not valid java name */
        public final Object[] f11831do;

        /* renamed from: if, reason: not valid java name */
        public final Object[] f11832if;

        public Cif(Cfor<K, V> cfor) {
            Object[] objArr = new Object[cfor.size()];
            Object[] objArr2 = new Object[cfor.size()];
            Cthis.Cdo cdo = cfor.f11823do;
            if (cdo == null) {
                cdo = cfor.mo6057do();
                cfor.f11823do = cdo;
            }
            AbstractC3324mJ<Map.Entry<K, V>> it = cdo.iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i] = next.getKey();
                objArr2[i] = next.getValue();
                i++;
            }
            this.f11831do = objArr;
            this.f11832if = objArr2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object readResolve() {
            Object[] objArr = this.f11831do;
            boolean z = objArr instanceof Ctry;
            Object[] objArr2 = this.f11832if;
            if (!z) {
                Cdo cdo = new Cdo(objArr.length);
                for (int i = 0; i < objArr.length; i++) {
                    cdo.m6061if(objArr[i], objArr2[i]);
                }
                return cdo.m6060do();
            }
            Ctry ctry = (Ctry) objArr;
            Cdo cdo2 = new Cdo(ctry.size());
            Iterator it = ctry.iterator();
            AbstractC3324mJ it2 = ((com.google.common.collect.Cdo) objArr2).iterator();
            while (it.hasNext()) {
                cdo2.m6061if(it.next(), it2.next());
            }
            return cdo2.m6060do();
        }
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean containsValue(Object obj) {
        com.google.common.collect.Cdo cdo = this.f11822do;
        if (cdo == null) {
            cdo = mo6058for();
            this.f11822do = cdo;
        }
        return cdo.contains(obj);
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Cthis.Cdo mo6057do();

    @Override // java.util.Map, j$.util.Map
    public final Set entrySet() {
        Ctry<Map.Entry<K, V>> ctry = this.f11823do;
        if (ctry != null) {
            return ctry;
        }
        Cthis.Cdo mo6057do = mo6057do();
        this.f11823do = mo6057do;
        return mo6057do;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            return entrySet().equals(((java.util.Map) obj).entrySet());
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract Cthis.Cfor mo6058for();

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map, j$.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map, j$.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map, j$.util.Map
    public final int hashCode() {
        Cthis.Cdo cdo = this.f11823do;
        if (cdo == null) {
            cdo = mo6057do();
            this.f11823do = cdo;
        }
        return Cfinal.m6056do(cdo);
    }

    /* renamed from: if, reason: not valid java name */
    public abstract Cthis.Cif mo6059if();

    @Override // java.util.Map, j$.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map, j$.util.Map
    public final Set keySet() {
        Ctry<K> ctry = this.f11824if;
        if (ctry != null) {
            return ctry;
        }
        Cthis.Cif mo6059if = mo6059if();
        this.f11824if = mo6059if;
        return mo6059if;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final void putAll(java.util.Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.CC.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public final String toString() {
        int size = size();
        C3850vF.m8465try(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map, j$.util.Map
    public final Collection values() {
        com.google.common.collect.Cdo<V> cdo = this.f11822do;
        if (cdo != null) {
            return cdo;
        }
        Cthis.Cfor mo6058for = mo6058for();
        this.f11822do = mo6058for;
        return mo6058for;
    }

    public Object writeReplace() {
        return new Cif(this);
    }
}
