package defpackage;

import j$.util.Iterator;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Consumer;

/* renamed from: tq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3765tq<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f15771do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3765tq<K, V>.Cfor f15774do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3765tq<K, V>.Cnew f15775do;

    /* renamed from: for, reason: not valid java name */
    public int f15777for = 0;

    /* renamed from: new, reason: not valid java name */
    public int f15778new = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Comparator<? super K> f15772do = f15771do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase<K, V> f15773do = new Ccase<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase<K, V>[] f15776do = new Ccase[16];

    /* renamed from: try, reason: not valid java name */
    public int f15779try = 12;

    /* renamed from: tq$do, reason: invalid class name */
    public static class Cdo implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* renamed from: tq$for, reason: invalid class name */
    public final class Cfor extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: tq$for$do, reason: invalid class name */
        public class Cdo extends C3765tq<K, V>.Ctry<Map.Entry<K, V>> {
            public Cdo(Cfor cfor) {
                super();
            }

            @Override // java.util.Iterator, j$.util.Iterator
            public final Object next() {
                return m8315do();
            }
        }

        public Cfor() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C3765tq.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && C3765tq.this.m8311if((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new Cdo(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            C3765tq c3765tq;
            Ccase<K, V> m8311if;
            if (!(obj instanceof Map.Entry) || (m8311if = (c3765tq = C3765tq.this).m8311if((Map.Entry) obj)) == null) {
                return false;
            }
            c3765tq.m8312new(m8311if, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C3765tq.this.f15777for;
        }
    }

    /* renamed from: tq$if, reason: invalid class name */
    public static final class Cif<K, V> {

        /* renamed from: do, reason: not valid java name */
        public int f15790do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Ccase<K, V> f15791do;

        /* renamed from: for, reason: not valid java name */
        public int f15792for;

        /* renamed from: if, reason: not valid java name */
        public int f15793if;

        /* renamed from: do, reason: not valid java name */
        public final void m8314do(Ccase<K, V> ccase) {
            ccase.f15783for = null;
            ccase.f15781do = null;
            ccase.f15785if = null;
            ccase.f15786new = 1;
            int i = this.f15790do;
            if (i > 0) {
                int i2 = this.f15792for;
                if ((i2 & 1) == 0) {
                    this.f15792for = i2 + 1;
                    this.f15790do = i - 1;
                    this.f15793if++;
                }
            }
            ccase.f15781do = this.f15791do;
            this.f15791do = ccase;
            int i3 = this.f15792for + 1;
            this.f15792for = i3;
            int i4 = this.f15790do;
            if (i4 > 0 && (i3 & 1) == 0) {
                this.f15792for = i3 + 1;
                this.f15790do = i4 - 1;
                this.f15793if++;
            }
            int i5 = 4;
            while (true) {
                int i6 = i5 - 1;
                if ((this.f15792for & i6) != i6) {
                    return;
                }
                int i7 = this.f15793if;
                if (i7 == 0) {
                    Ccase<K, V> ccase2 = this.f15791do;
                    Ccase<K, V> ccase3 = ccase2.f15781do;
                    Ccase<K, V> ccase4 = ccase3.f15781do;
                    ccase3.f15781do = ccase4.f15781do;
                    this.f15791do = ccase3;
                    ccase3.f15785if = ccase4;
                    ccase3.f15783for = ccase2;
                    ccase3.f15786new = ccase2.f15786new + 1;
                    ccase4.f15781do = ccase3;
                    ccase2.f15781do = ccase3;
                } else if (i7 == 1) {
                    Ccase<K, V> ccase5 = this.f15791do;
                    Ccase<K, V> ccase6 = ccase5.f15781do;
                    this.f15791do = ccase6;
                    ccase6.f15783for = ccase5;
                    ccase6.f15786new = ccase5.f15786new + 1;
                    ccase5.f15781do = ccase6;
                    this.f15793if = 0;
                } else if (i7 == 2) {
                    this.f15793if = 0;
                }
                i5 *= 2;
            }
        }
    }

    /* renamed from: tq$new, reason: invalid class name */
    public final class Cnew extends AbstractSet<K> {

        /* renamed from: tq$new$do, reason: invalid class name */
        public class Cdo extends C3765tq<K, V>.Ctry<K> {
            public Cdo(Cnew cnew) {
                super();
            }

            @Override // java.util.Iterator, j$.util.Iterator
            public final K next() {
                return m8315do().f15780do;
            }
        }

        public Cnew() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C3765tq.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return C3765tq.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new Cdo(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0011  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0016 A[ORIG_RETURN, RETURN] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean remove(java.lang.Object r4) {
            /*
                r3 = this;
                tq r0 = defpackage.C3765tq.this
                r0.getClass()
                r1 = 0
                if (r4 == 0) goto Ld
                tq$case r4 = r0.m8308do(r4, r1)     // Catch: java.lang.ClassCastException -> Ld
                goto Le
            Ld:
                r4 = 0
            Le:
                r2 = 1
                if (r4 == 0) goto L14
                r0.m8312new(r4, r2)
            L14:
                if (r4 == 0) goto L17
                r1 = 1
            L17:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C3765tq.Cnew.remove(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C3765tq.this.f15777for;
        }
    }

    /* renamed from: tq$try, reason: invalid class name */
    public abstract class Ctry<T> implements Iterator<T>, j$.util.Iterator {

        /* renamed from: do, reason: not valid java name */
        public Ccase<K, V> f15795do;

        /* renamed from: for, reason: not valid java name */
        public int f15797for;

        /* renamed from: if, reason: not valid java name */
        public Ccase<K, V> f15798if = null;

        public Ctry() {
            this.f15795do = C3765tq.this.f15773do.f15787new;
            this.f15797for = C3765tq.this.f15778new;
        }

        /* renamed from: do, reason: not valid java name */
        public final Ccase<K, V> m8315do() {
            Ccase<K, V> ccase = this.f15795do;
            C3765tq c3765tq = C3765tq.this;
            if (ccase == c3765tq.f15773do) {
                throw new NoSuchElementException();
            }
            if (c3765tq.f15778new != this.f15797for) {
                throw new ConcurrentModificationException();
            }
            this.f15795do = ccase.f15787new;
            this.f15798if = ccase;
            return ccase;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f15795do != C3765tq.this.f15773do;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            Ccase<K, V> ccase = this.f15798if;
            if (ccase == null) {
                throw new IllegalStateException();
            }
            C3765tq c3765tq = C3765tq.this;
            c3765tq.m8312new(ccase, true);
            this.f15798if = null;
            this.f15797for = c3765tq.f15778new;
        }
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m8307case(Ccase<K, V> ccase) {
        Ccase<K, V> ccase2 = ccase.f15785if;
        Ccase<K, V> ccase3 = ccase.f15783for;
        Ccase<K, V> ccase4 = ccase3.f15785if;
        Ccase<K, V> ccase5 = ccase3.f15783for;
        ccase.f15783for = ccase4;
        if (ccase4 != null) {
            ccase4.f15781do = ccase;
        }
        m8313try(ccase, ccase3);
        ccase3.f15785if = ccase;
        ccase.f15781do = ccase3;
        int max = Math.max(ccase2 != null ? ccase2.f15786new : 0, ccase4 != null ? ccase4.f15786new : 0) + 1;
        ccase.f15786new = max;
        ccase3.f15786new = Math.max(max, ccase5 != null ? ccase5.f15786new : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.f15776do, (Object) null);
        this.f15777for = 0;
        this.f15778new++;
        Ccase<K, V> ccase = this.f15773do;
        Ccase<K, V> ccase2 = ccase.f15787new;
        while (ccase2 != ccase) {
            Ccase<K, V> ccase3 = ccase2.f15787new;
            ccase2.f15788try = null;
            ccase2.f15787new = null;
            ccase2 = ccase3;
        }
        ccase.f15788try = ccase;
        ccase.f15787new = ccase;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsKey(java.lang.Object r2) {
        /*
            r1 = this;
            r0 = 0
            if (r2 == 0) goto L8
            tq$case r2 = r1.m8308do(r2, r0)     // Catch: java.lang.ClassCastException -> L8
            goto L9
        L8:
            r2 = 0
        L9:
            if (r2 == 0) goto Lc
            r0 = 1
        Lc:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3765tq.containsKey(java.lang.Object):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public final Ccase<K, V> m8308do(K k, boolean z) {
        Ccase<K, V> ccase;
        int i;
        Ccase<K, V> ccase2;
        Ccase<K, V> ccase3;
        Ccase<K, V> ccase4;
        Ccase<K, V> ccase5;
        Ccase<K, V> ccase6;
        Ccase<K, V>[] ccaseArr = this.f15776do;
        int hashCode = k.hashCode();
        int i2 = hashCode ^ ((hashCode >>> 20) ^ (hashCode >>> 12));
        int i3 = (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
        int length = i3 & (ccaseArr.length - 1);
        Ccase<K, V> ccase7 = ccaseArr[length];
        Cdo cdo = f15771do;
        Ccase<K, V> ccase8 = null;
        Comparator<? super K> comparator = this.f15772do;
        if (ccase7 != null) {
            Comparable comparable = comparator == cdo ? (Comparable) k : null;
            while (true) {
                K k2 = ccase7.f15780do;
                int compareTo = comparable != null ? comparable.compareTo(k2) : comparator.compare(k, k2);
                if (compareTo == 0) {
                    return ccase7;
                }
                Ccase<K, V> ccase9 = compareTo < 0 ? ccase7.f15785if : ccase7.f15783for;
                if (ccase9 == null) {
                    i = compareTo;
                    ccase = ccase7;
                    break;
                }
                ccase7 = ccase9;
            }
        } else {
            ccase = ccase7;
            i = 0;
        }
        if (!z) {
            return null;
        }
        Ccase<K, V> ccase10 = this.f15773do;
        if (ccase != null) {
            Ccase<K, V> ccase11 = new Ccase<>(ccase, k, i3, ccase10, ccase10.f15788try);
            if (i < 0) {
                ccase.f15785if = ccase11;
            } else {
                ccase.f15783for = ccase11;
            }
            m8310for(ccase, true);
            ccase2 = ccase11;
        } else {
            if (comparator == cdo && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName().concat(" is not Comparable"));
            }
            ccase2 = new Ccase<>(ccase, k, i3, ccase10, ccase10.f15788try);
            ccaseArr[length] = ccase2;
        }
        int i4 = this.f15777for;
        this.f15777for = i4 + 1;
        if (i4 > this.f15779try) {
            Ccase<K, V>[] ccaseArr2 = this.f15776do;
            int length2 = ccaseArr2.length;
            int i5 = length2 * 2;
            Ccase<K, V>[] ccaseArr3 = new Ccase[i5];
            Cif cif = new Cif();
            Cif cif2 = new Cif();
            for (int i6 = 0; i6 < length2; i6++) {
                Ccase<K, V> ccase12 = ccaseArr2[i6];
                if (ccase12 != null) {
                    Ccase<K, V> ccase13 = ccase8;
                    for (Ccase<K, V> ccase14 = ccase12; ccase14 != null; ccase14 = ccase14.f15785if) {
                        ccase14.f15781do = ccase13;
                        ccase13 = ccase14;
                    }
                    int i7 = 0;
                    int i8 = 0;
                    while (true) {
                        if (ccase13 == null) {
                            ccase3 = ccase13;
                            ccase13 = ccase8;
                        } else {
                            ccase3 = ccase13.f15781do;
                            ccase13.f15781do = ccase8;
                            Ccase<K, V> ccase15 = ccase13.f15783for;
                            while (ccase15 != null) {
                                ccase15.f15781do = ccase3;
                                Ccase<K, V> ccase16 = ccase15;
                                ccase15 = ccase15.f15785if;
                                ccase3 = ccase16;
                            }
                        }
                        if (ccase13 == null) {
                            break;
                        }
                        if ((ccase13.f15782for & length2) == 0) {
                            i7++;
                        } else {
                            i8++;
                        }
                        ccase13 = ccase3;
                        ccase8 = null;
                    }
                    cif.f15790do = ((Integer.highestOneBit(i7) * 2) - 1) - i7;
                    cif.f15792for = 0;
                    cif.f15793if = 0;
                    cif.f15791do = null;
                    cif2.f15790do = ((Integer.highestOneBit(i8) * 2) - 1) - i8;
                    cif2.f15792for = 0;
                    cif2.f15793if = 0;
                    cif2.f15791do = null;
                    Ccase<K, V> ccase17 = null;
                    while (ccase12 != null) {
                        ccase12.f15781do = ccase17;
                        Ccase<K, V> ccase18 = ccase12;
                        ccase12 = ccase12.f15785if;
                        ccase17 = ccase18;
                    }
                    while (true) {
                        if (ccase17 != null) {
                            Ccase<K, V> ccase19 = ccase17.f15781do;
                            ccase8 = null;
                            ccase17.f15781do = null;
                            Ccase<K, V> ccase20 = ccase17.f15783for;
                            while (true) {
                                Ccase<K, V> ccase21 = ccase20;
                                ccase4 = ccase19;
                                ccase19 = ccase21;
                                if (ccase19 == null) {
                                    break;
                                }
                                ccase19.f15781do = ccase4;
                                ccase20 = ccase19.f15785if;
                            }
                        } else {
                            ccase4 = ccase17;
                            ccase17 = null;
                            ccase8 = null;
                        }
                        if (ccase17 == null) {
                            break;
                        }
                        if ((ccase17.f15782for & length2) == 0) {
                            cif.m8314do(ccase17);
                        } else {
                            cif2.m8314do(ccase17);
                        }
                        ccase17 = ccase4;
                    }
                    if (i7 > 0) {
                        ccase5 = cif.f15791do;
                        if (ccase5.f15781do != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        ccase5 = ccase8;
                    }
                    ccaseArr3[i6] = ccase5;
                    int i9 = i6 + length2;
                    if (i8 > 0) {
                        ccase6 = cif2.f15791do;
                        if (ccase6.f15781do != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        ccase6 = ccase8;
                    }
                    ccaseArr3[i9] = ccase6;
                }
            }
            this.f15776do = ccaseArr3;
            this.f15779try = (i5 / 4) + (i5 / 2);
        }
        this.f15778new++;
        return ccase2;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8309else(Ccase<K, V> ccase) {
        Ccase<K, V> ccase2 = ccase.f15785if;
        Ccase<K, V> ccase3 = ccase.f15783for;
        Ccase<K, V> ccase4 = ccase2.f15785if;
        Ccase<K, V> ccase5 = ccase2.f15783for;
        ccase.f15785if = ccase5;
        if (ccase5 != null) {
            ccase5.f15781do = ccase;
        }
        m8313try(ccase, ccase2);
        ccase2.f15783for = ccase;
        ccase.f15781do = ccase2;
        int max = Math.max(ccase3 != null ? ccase3.f15786new : 0, ccase5 != null ? ccase5.f15786new : 0) + 1;
        ccase.f15786new = max;
        ccase2.f15786new = Math.max(max, ccase4 != null ? ccase4.f15786new : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        C3765tq<K, V>.Cfor cfor = this.f15774do;
        if (cfor != null) {
            return cfor;
        }
        C3765tq<K, V>.Cfor cfor2 = new Cfor();
        this.f15774do = cfor2;
        return cfor2;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8310for(Ccase<K, V> ccase, boolean z) {
        while (ccase != null) {
            Ccase<K, V> ccase2 = ccase.f15785if;
            Ccase<K, V> ccase3 = ccase.f15783for;
            int i = ccase2 != null ? ccase2.f15786new : 0;
            int i2 = ccase3 != null ? ccase3.f15786new : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                Ccase<K, V> ccase4 = ccase3.f15785if;
                Ccase<K, V> ccase5 = ccase3.f15783for;
                int i4 = (ccase4 != null ? ccase4.f15786new : 0) - (ccase5 != null ? ccase5.f15786new : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    m8307case(ccase);
                } else {
                    m8309else(ccase3);
                    m8307case(ccase);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                Ccase<K, V> ccase6 = ccase2.f15785if;
                Ccase<K, V> ccase7 = ccase2.f15783for;
                int i5 = (ccase6 != null ? ccase6.f15786new : 0) - (ccase7 != null ? ccase7.f15786new : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    m8309else(ccase);
                } else {
                    m8307case(ccase2);
                    m8309else(ccase);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                ccase.f15786new = i + 1;
                if (z) {
                    return;
                }
            } else {
                ccase.f15786new = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            ccase = ccase.f15781do;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            tq$case r3 = r2.m8308do(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto Le
            V r0 = r3.f15784if
        Le:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3765tq.get(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0010  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3765tq.Ccase<K, V> m8311if(java.util.Map.Entry<?, ?> r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r6.getKey()
            r1 = 0
            r2 = 0
            if (r0 == 0) goto Ld
            tq$case r0 = r5.m8308do(r0, r2)     // Catch: java.lang.ClassCastException -> Ld
            goto Le
        Ld:
            r0 = r1
        Le:
            if (r0 == 0) goto L28
            V r3 = r0.f15784if
            java.lang.Object r6 = r6.getValue()
            r4 = 1
            if (r3 == r6) goto L24
            if (r3 == 0) goto L22
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L22
            goto L24
        L22:
            r6 = 0
            goto L25
        L24:
            r6 = 1
        L25:
            if (r6 == 0) goto L28
            r2 = 1
        L28:
            if (r2 == 0) goto L2b
            r1 = r0
        L2b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3765tq.m8311if(java.util.Map$Entry):tq$case");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        C3765tq<K, V>.Cnew cnew = this.f15775do;
        if (cnew != null) {
            return cnew;
        }
        C3765tq<K, V>.Cnew cnew2 = new Cnew();
        this.f15775do = cnew2;
        return cnew2;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8312new(Ccase<K, V> ccase, boolean z) {
        Ccase<K, V> ccase2;
        Ccase<K, V> ccase3;
        int i;
        if (z) {
            Ccase<K, V> ccase4 = ccase.f15788try;
            ccase4.f15787new = ccase.f15787new;
            ccase.f15787new.f15788try = ccase4;
            ccase.f15788try = null;
            ccase.f15787new = null;
        }
        Ccase<K, V> ccase5 = ccase.f15785if;
        Ccase<K, V> ccase6 = ccase.f15783for;
        Ccase<K, V> ccase7 = ccase.f15781do;
        int i2 = 0;
        if (ccase5 == null || ccase6 == null) {
            if (ccase5 != null) {
                m8313try(ccase, ccase5);
                ccase.f15785if = null;
            } else if (ccase6 != null) {
                m8313try(ccase, ccase6);
                ccase.f15783for = null;
            } else {
                m8313try(ccase, null);
            }
            m8310for(ccase7, false);
            this.f15777for--;
            this.f15778new++;
            return;
        }
        if (ccase5.f15786new > ccase6.f15786new) {
            Ccase<K, V> ccase8 = ccase5.f15783for;
            while (true) {
                Ccase<K, V> ccase9 = ccase8;
                ccase3 = ccase5;
                ccase5 = ccase9;
                if (ccase5 == null) {
                    break;
                } else {
                    ccase8 = ccase5.f15783for;
                }
            }
        } else {
            Ccase<K, V> ccase10 = ccase6.f15785if;
            while (true) {
                ccase2 = ccase6;
                ccase6 = ccase10;
                if (ccase6 == null) {
                    break;
                } else {
                    ccase10 = ccase6.f15785if;
                }
            }
            ccase3 = ccase2;
        }
        m8312new(ccase3, false);
        Ccase<K, V> ccase11 = ccase.f15785if;
        if (ccase11 != null) {
            i = ccase11.f15786new;
            ccase3.f15785if = ccase11;
            ccase11.f15781do = ccase3;
            ccase.f15785if = null;
        } else {
            i = 0;
        }
        Ccase<K, V> ccase12 = ccase.f15783for;
        if (ccase12 != null) {
            i2 = ccase12.f15786new;
            ccase3.f15783for = ccase12;
            ccase12.f15781do = ccase3;
            ccase.f15783for = null;
        }
        ccase3.f15786new = Math.max(i, i2) + 1;
        m8313try(ccase, ccase3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        Ccase<K, V> m8308do = m8308do(k, true);
        V v2 = m8308do.f15784if;
        m8308do.f15784if = v;
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V remove(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto La
            r1 = 0
            tq$case r3 = r2.m8308do(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto Lb
        L9:
        La:
            r3 = r0
        Lb:
            if (r3 == 0) goto L11
            r1 = 1
            r2.m8312new(r3, r1)
        L11:
            if (r3 == 0) goto L15
            V r0 = r3.f15784if
        L15:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3765tq.remove(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f15777for;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m8313try(Ccase<K, V> ccase, Ccase<K, V> ccase2) {
        Ccase<K, V> ccase3 = ccase.f15781do;
        ccase.f15781do = null;
        if (ccase2 != null) {
            ccase2.f15781do = ccase3;
        }
        if (ccase3 == null) {
            this.f15776do[ccase.f15782for & (r0.length - 1)] = ccase2;
        } else if (ccase3.f15785if == ccase) {
            ccase3.f15785if = ccase2;
        } else {
            ccase3.f15783for = ccase2;
        }
    }

    /* renamed from: tq$case, reason: invalid class name */
    public static final class Ccase<K, V> implements Map.Entry<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f15780do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Ccase<K, V> f15781do;

        /* renamed from: for, reason: not valid java name */
        public final int f15782for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public Ccase<K, V> f15783for;

        /* renamed from: if, reason: not valid java name */
        public V f15784if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Ccase<K, V> f15785if;

        /* renamed from: new, reason: not valid java name */
        public int f15786new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public Ccase<K, V> f15787new;

        /* renamed from: try, reason: not valid java name */
        public Ccase<K, V> f15788try;

        public Ccase() {
            this.f15780do = null;
            this.f15782for = -1;
            this.f15788try = this;
            this.f15787new = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f15780do;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.f15784if;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f15780do;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f15784if;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f15780do;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f15784if;
            return (v != null ? v.hashCode() : 0) ^ hashCode;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.f15784if;
            this.f15784if = v;
            return v2;
        }

        public final String toString() {
            return this.f15780do + "=" + this.f15784if;
        }

        public Ccase(Ccase<K, V> ccase, K k, int i, Ccase<K, V> ccase2, Ccase<K, V> ccase3) {
            this.f15781do = ccase;
            this.f15780do = k;
            this.f15782for = i;
            this.f15786new = 1;
            this.f15787new = ccase2;
            this.f15788try = ccase3;
            ccase3.f15787new = this;
            ccase2.f15788try = this;
        }
    }
}
