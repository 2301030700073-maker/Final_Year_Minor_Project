package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: jB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3139jB<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: do, reason: not valid java name */
    public Cfor<K, V> f13645do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakHashMap<Ccase<K, V>, Boolean> f13646do = new WeakHashMap<>();

    /* renamed from: for, reason: not valid java name */
    public int f13647for = 0;

    /* renamed from: if, reason: not valid java name */
    public Cfor<K, V> f13648if;

    /* renamed from: jB$case, reason: invalid class name */
    public static abstract class Ccase<K, V> {
        /* renamed from: do, reason: not valid java name */
        public abstract void mo7043do(Cfor<K, V> cfor);
    }

    /* renamed from: jB$do, reason: invalid class name */
    public static class Cdo<K, V> extends Ctry<K, V> {
        public Cdo(Cfor<K, V> cfor, Cfor<K, V> cfor2) {
            super(cfor, cfor2);
        }

        @Override // defpackage.C3139jB.Ctry
        /* renamed from: for, reason: not valid java name */
        public final Cfor<K, V> mo7044for(Cfor<K, V> cfor) {
            return cfor.f13649do;
        }

        @Override // defpackage.C3139jB.Ctry
        /* renamed from: if, reason: not valid java name */
        public final Cfor<K, V> mo7045if(Cfor<K, V> cfor) {
            return cfor.f13651if;
        }
    }

    /* renamed from: jB$for, reason: invalid class name */
    public static class Cfor<K, V> implements Map.Entry<K, V> {

        /* renamed from: do, reason: not valid java name */
        public Cfor<K, V> f13649do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final K f13650do;

        /* renamed from: if, reason: not valid java name */
        public Cfor<K, V> f13651if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final V f13652if;

        public Cfor(K k, V v) {
            this.f13650do = k;
            this.f13652if = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cfor)) {
                return false;
            }
            Cfor cfor = (Cfor) obj;
            return this.f13650do.equals(cfor.f13650do) && this.f13652if.equals(cfor.f13652if);
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f13650do;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f13652if;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f13650do.hashCode() ^ this.f13652if.hashCode();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.f13650do + "=" + this.f13652if;
        }
    }

    /* renamed from: jB$if, reason: invalid class name */
    public static class Cif<K, V> extends Ctry<K, V> {
        public Cif(Cfor<K, V> cfor, Cfor<K, V> cfor2) {
            super(cfor, cfor2);
        }

        @Override // defpackage.C3139jB.Ctry
        /* renamed from: for */
        public final Cfor<K, V> mo7044for(Cfor<K, V> cfor) {
            return cfor.f13651if;
        }

        @Override // defpackage.C3139jB.Ctry
        /* renamed from: if */
        public final Cfor<K, V> mo7045if(Cfor<K, V> cfor) {
            return cfor.f13649do;
        }
    }

    /* renamed from: jB$new, reason: invalid class name */
    public class Cnew extends Ccase<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public Cfor<K, V> f13653do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13655do = true;

        public Cnew() {
        }

        @Override // defpackage.C3139jB.Ccase
        /* renamed from: do */
        public final void mo7043do(Cfor<K, V> cfor) {
            Cfor<K, V> cfor2 = this.f13653do;
            if (cfor == cfor2) {
                Cfor<K, V> cfor3 = cfor2.f13651if;
                this.f13653do = cfor3;
                this.f13655do = cfor3 == null;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f13655do) {
                return C3139jB.this.f13645do != null;
            }
            Cfor<K, V> cfor = this.f13653do;
            return (cfor == null || cfor.f13649do == null) ? false : true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f13655do) {
                this.f13655do = false;
                this.f13653do = C3139jB.this.f13645do;
            } else {
                Cfor<K, V> cfor = this.f13653do;
                this.f13653do = cfor != null ? cfor.f13649do : null;
            }
            return this.f13653do;
        }
    }

    /* renamed from: jB$try, reason: invalid class name */
    public static abstract class Ctry<K, V> extends Ccase<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public Cfor<K, V> f13656do;

        /* renamed from: if, reason: not valid java name */
        public Cfor<K, V> f13657if;

        public Ctry(Cfor<K, V> cfor, Cfor<K, V> cfor2) {
            this.f13656do = cfor2;
            this.f13657if = cfor;
        }

        @Override // defpackage.C3139jB.Ccase
        /* renamed from: do */
        public final void mo7043do(Cfor<K, V> cfor) {
            Cfor<K, V> cfor2 = null;
            if (this.f13656do == cfor && cfor == this.f13657if) {
                this.f13657if = null;
                this.f13656do = null;
            }
            Cfor<K, V> cfor3 = this.f13656do;
            if (cfor3 == cfor) {
                this.f13656do = mo7045if(cfor3);
            }
            Cfor<K, V> cfor4 = this.f13657if;
            if (cfor4 == cfor) {
                Cfor<K, V> cfor5 = this.f13656do;
                if (cfor4 != cfor5 && cfor5 != null) {
                    cfor2 = mo7044for(cfor4);
                }
                this.f13657if = cfor2;
            }
        }

        /* renamed from: for */
        public abstract Cfor<K, V> mo7044for(Cfor<K, V> cfor);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f13657if != null;
        }

        /* renamed from: if */
        public abstract Cfor<K, V> mo7045if(Cfor<K, V> cfor);

        @Override // java.util.Iterator
        public final Object next() {
            Cfor<K, V> cfor = this.f13657if;
            Cfor<K, V> cfor2 = this.f13656do;
            this.f13657if = (cfor == cfor2 || cfor2 == null) ? null : mo7044for(cfor);
            return cfor;
        }
    }

    /* renamed from: case */
    public V mo492case(K k, V v) {
        Cfor<K, V> mo494try = mo494try(k);
        if (mo494try != null) {
            return mo494try.f13652if;
        }
        Cfor<K, V> cfor = new Cfor<>(k, v);
        this.f13647for++;
        Cfor<K, V> cfor2 = this.f13648if;
        if (cfor2 == null) {
            this.f13645do = cfor;
            this.f13648if = cfor;
            return null;
        }
        cfor2.f13649do = cfor;
        cfor.f13651if = cfor2;
        this.f13648if = cfor;
        return null;
    }

    /* renamed from: else */
    public V mo493else(K k) {
        Cfor<K, V> mo494try = mo494try(k);
        if (mo494try == null) {
            return null;
        }
        this.f13647for--;
        WeakHashMap<Ccase<K, V>, Boolean> weakHashMap = this.f13646do;
        if (!weakHashMap.isEmpty()) {
            Iterator<Ccase<K, V>> it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                it.next().mo7043do(mo494try);
            }
        }
        Cfor<K, V> cfor = mo494try.f13651if;
        if (cfor != null) {
            cfor.f13649do = mo494try.f13649do;
        } else {
            this.f13645do = mo494try.f13649do;
        }
        Cfor<K, V> cfor2 = mo494try.f13649do;
        if (cfor2 != null) {
            cfor2.f13651if = cfor;
        } else {
            this.f13648if = cfor;
        }
        mo494try.f13649do = null;
        mo494try.f13651if = null;
        return mo494try.f13652if;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((defpackage.C3139jB.Ctry) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof defpackage.C3139jB
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            jB r7 = (defpackage.C3139jB) r7
            int r1 = r6.f13647for
            int r3 = r7.f13647for
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            jB$try r3 = (defpackage.C3139jB.Ctry) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            jB$try r4 = (defpackage.C3139jB.Ctry) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            jB$try r7 = (defpackage.C3139jB.Ctry) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            goto L54
        L53:
            r0 = 0
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3139jB.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (true) {
            Ctry ctry = (Ctry) it;
            if (!ctry.hasNext()) {
                return i;
            }
            i += ((Map.Entry) ctry.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<Map.Entry<K, V>> iterator() {
        Cdo cdo = new Cdo(this.f13645do, this.f13648if);
        this.f13646do.put(cdo, Boolean.FALSE);
        return cdo;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            Ctry ctry = (Ctry) it;
            if (!ctry.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) ctry.next()).toString());
            if (ctry.hasNext()) {
                sb.append(", ");
            }
        }
    }

    /* renamed from: try */
    public Cfor<K, V> mo494try(K k) {
        Cfor<K, V> cfor = this.f13645do;
        while (cfor != null && !cfor.f13650do.equals(k)) {
            cfor = cfor.f13649do;
        }
        return cfor;
    }
}
