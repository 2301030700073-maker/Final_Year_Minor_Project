package com.google.common.collect;

import defpackage.AbstractC3324mJ;
import defpackage.C0315Kc;
import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Map;

/* renamed from: com.google.common.collect.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<K, V> extends com.google.common.collect.Cfor<K, V> {

    /* renamed from: do, reason: not valid java name */
    public static final Cthis f11843do = new Cthis(null, new Object[0], 0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final transient Object f11844do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final transient Object[] f11845do;

    /* renamed from: for, reason: not valid java name */
    public final transient int f11846for;

    /* renamed from: com.google.common.collect.this$do, reason: invalid class name */
    public static class Cdo<K, V> extends Ctry<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final transient com.google.common.collect.Cfor<K, V> f11847do;

        /* renamed from: if, reason: not valid java name */
        public final transient Object[] f11848if;

        /* renamed from: new, reason: not valid java name */
        public final transient int f11849new = 0;

        /* renamed from: try, reason: not valid java name */
        public final transient int f11850try;

        /* renamed from: com.google.common.collect.this$do$do, reason: invalid class name and collision with other inner class name */
        public class C0076do extends com.google.common.collect.Cif<Map.Entry<K, V>> {
            public C0076do() {
            }

            @Override // java.util.List
            public final Object get(int i) {
                Cdo cdo = Cdo.this;
                C0315Kc.m1181this(i, cdo.f11850try);
                int i2 = i * 2;
                int i3 = cdo.f11849new;
                Object[] objArr = cdo.f11848if;
                Object obj = objArr[i3 + i2];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i2 + (i3 ^ 1)];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return Cdo.this.f11850try;
            }

            @Override // com.google.common.collect.Cdo
            /* renamed from: this */
            public final boolean mo6038this() {
                return true;
            }
        }

        public Cdo(com.google.common.collect.Cfor cfor, Object[] objArr, int i) {
            this.f11847do = cfor;
            this.f11848if = objArr;
            this.f11850try = i;
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: break */
        public final AbstractC3324mJ<Map.Entry<K, V>> iterator() {
            return mo6067catch().listIterator(0);
        }

        @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f11847do.get(key));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f11850try;
        }

        @Override // com.google.common.collect.Ctry
        /* renamed from: super */
        public final com.google.common.collect.Cif<Map.Entry<K, V>> mo6037super() {
            return new C0076do();
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: this */
        public final boolean mo6038this() {
            return true;
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: try */
        public final int mo6039try(Object[] objArr) {
            return mo6067catch().mo6039try(objArr);
        }
    }

    /* renamed from: com.google.common.collect.this$for, reason: invalid class name */
    public static final class Cfor extends com.google.common.collect.Cif<Object> {

        /* renamed from: for, reason: not valid java name */
        public final transient int f11852for;

        /* renamed from: if, reason: not valid java name */
        public final transient Object[] f11853if;

        /* renamed from: new, reason: not valid java name */
        public final transient int f11854new;

        public Cfor(Object[] objArr, int i, int i2) {
            this.f11853if = objArr;
            this.f11852for = i;
            this.f11854new = i2;
        }

        @Override // java.util.List
        public final Object get(int i) {
            C0315Kc.m1181this(i, this.f11854new);
            Object obj = this.f11853if[(i * 2) + this.f11852for];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f11854new;
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: this */
        public final boolean mo6038this() {
            return true;
        }
    }

    /* renamed from: com.google.common.collect.this$if, reason: invalid class name */
    public static final class Cif<K> extends Ctry<K> {

        /* renamed from: do, reason: not valid java name */
        public final transient com.google.common.collect.Cfor<K, ?> f11855do;

        /* renamed from: if, reason: not valid java name */
        public final transient com.google.common.collect.Cif<K> f11856if;

        public Cif(com.google.common.collect.Cfor cfor, Cfor cfor2) {
            this.f11855do = cfor;
            this.f11856if = cfor2;
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: break */
        public final AbstractC3324mJ<K> iterator() {
            return this.f11856if.listIterator(0);
        }

        @Override // com.google.common.collect.Ctry
        /* renamed from: catch, reason: not valid java name */
        public final com.google.common.collect.Cif<K> mo6067catch() {
            throw null;
        }

        @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f11855do.get(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f11855do.size();
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: this */
        public final boolean mo6038this() {
            return true;
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: try */
        public final int mo6039try(Object[] objArr) {
            return this.f11856if.mo6039try(objArr);
        }
    }

    public Cthis(Object obj, Object[] objArr, int i) {
        this.f11844do = obj;
        this.f11845do = objArr;
        this.f11846for = i;
    }

    @Override // com.google.common.collect.Cfor
    /* renamed from: do */
    public final Cdo mo6057do() {
        return new Cdo(this, this.f11845do, this.f11846for);
    }

    @Override // com.google.common.collect.Cfor
    /* renamed from: for */
    public final Cfor mo6058for() {
        return new Cfor(this.f11845do, 1, this.f11846for);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x009e A[RETURN] */
    @Override // com.google.common.collect.Cfor, java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L4
            goto L1e
        L4:
            r1 = 1
            java.lang.Object[] r2 = r9.f11845do
            int r3 = r9.f11846for
            if (r3 != r1) goto L21
            r3 = 0
            r3 = r2[r3]
            j$.util.Objects.requireNonNull(r3)
            boolean r10 = r3.equals(r10)
            if (r10 == 0) goto L1e
            r10 = r2[r1]
            j$.util.Objects.requireNonNull(r10)
            goto L9c
        L1e:
            r10 = r0
            goto L9c
        L21:
            java.lang.Object r3 = r9.f11844do
            if (r3 != 0) goto L26
            goto L1e
        L26:
            boolean r4 = r3 instanceof byte[]
            r5 = -1
            if (r4 == 0) goto L52
            r4 = r3
            byte[] r4 = (byte[]) r4
            int r3 = r4.length
            int r6 = r3 + (-1)
            int r3 = r10.hashCode()
            int r3 = defpackage.C0315Kc.m1153abstract(r3)
        L39:
            r3 = r3 & r6
            r5 = r4[r3]
            r7 = 255(0xff, float:3.57E-43)
            r5 = r5 & r7
            if (r5 != r7) goto L42
            goto L1e
        L42:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L4f
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L4f:
            int r3 = r3 + 1
            goto L39
        L52:
            boolean r4 = r3 instanceof short[]
            if (r4 == 0) goto L7e
            r4 = r3
            short[] r4 = (short[]) r4
            int r3 = r4.length
            int r6 = r3 + (-1)
            int r3 = r10.hashCode()
            int r3 = defpackage.C0315Kc.m1153abstract(r3)
        L64:
            r3 = r3 & r6
            short r5 = r4[r3]
            r7 = 65535(0xffff, float:9.1834E-41)
            r5 = r5 & r7
            if (r5 != r7) goto L6e
            goto L1e
        L6e:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L7b
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L7b:
            int r3 = r3 + 1
            goto L64
        L7e:
            int[] r3 = (int[]) r3
            int r4 = r3.length
            int r4 = r4 - r1
            int r6 = r10.hashCode()
            int r6 = defpackage.C0315Kc.m1153abstract(r6)
        L8a:
            r6 = r6 & r4
            r7 = r3[r6]
            if (r7 != r5) goto L90
            goto L1e
        L90:
            r8 = r2[r7]
            boolean r8 = r10.equals(r8)
            if (r8 == 0) goto La0
            r10 = r7 ^ 1
            r10 = r2[r10]
        L9c:
            if (r10 != 0) goto L9f
            return r0
        L9f:
            return r10
        La0:
            int r6 = r6 + 1
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Cthis.get(java.lang.Object):java.lang.Object");
    }

    @Override // com.google.common.collect.Cfor
    /* renamed from: if */
    public final Cif mo6059if() {
        return new Cif(this, new Cfor(this.f11845do, 0, this.f11846for));
    }

    @Override // java.util.Map, j$.util.Map
    public final int size() {
        return this.f11846for;
    }
}
