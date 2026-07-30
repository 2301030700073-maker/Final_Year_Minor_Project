package com.google.common.collect;

import com.google.common.collect.Cdo;
import com.google.common.collect.Cif;
import defpackage.C0315Kc;
import defpackage.C3849vE;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.google.common.collect.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry<E> extends com.google.common.collect.Cdo<E> implements Set<E> {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f11857for = 0;

    /* renamed from: do, reason: not valid java name */
    public transient com.google.common.collect.Cif<E> f11858do;

    /* renamed from: com.google.common.collect.try$do, reason: invalid class name */
    public static class Cdo<E> extends Cdo.AbstractC0073do<E> {
        /* renamed from: new */
        public void mo6054new(Object obj) {
            obj.getClass();
            m6049for(((Cdo.AbstractC0073do) this).f11814do + 1);
            Object[] objArr = ((Cdo.AbstractC0073do) this).f11816do;
            int i = ((Cdo.AbstractC0073do) this).f11814do;
            ((Cdo.AbstractC0073do) this).f11814do = i + 1;
            objArr[i] = obj;
        }

        /* renamed from: try */
        public Ctry<E> mo6055try() {
            int i = ((Cdo.AbstractC0073do) this).f11814do;
            if (i == 0) {
                int i2 = Ctry.f11857for;
                return Cbreak.f11799do;
            }
            if (i != 1) {
                Ctry<E> m6069final = Ctry.m6069final(i, ((Cdo.AbstractC0073do) this).f11816do);
                ((Cdo.AbstractC0073do) this).f11814do = m6069final.size();
                ((Cdo.AbstractC0073do) this).f11815do = true;
                return m6069final;
            }
            Object obj = ((Cdo.AbstractC0073do) this).f11816do[0];
            Objects.requireNonNull(obj);
            int i3 = Ctry.f11857for;
            return new C3849vE(obj);
        }
    }

    /* renamed from: com.google.common.collect.try$if, reason: invalid class name */
    public static class Cif implements Serializable {

        /* renamed from: do, reason: not valid java name */
        public final Object[] f11859do;

        public Cif(Object[] objArr) {
            this.f11859do = objArr;
        }

        public Object readResolve() {
            int i = Ctry.f11857for;
            Object[] objArr = this.f11859do;
            int length = objArr.length;
            return length != 0 ? length != 1 ? Ctry.m6069final(objArr.length, (Object[]) objArr.clone()) : new C3849vE(objArr[0]) : Cbreak.f11799do;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static int m6068const(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            if (max < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    /* renamed from: final, reason: not valid java name */
    public static <E> Ctry<E> m6069final(int i, Object... objArr) {
        if (i == 0) {
            return Cbreak.f11799do;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new C3849vE(obj);
        }
        int m6068const = m6068const(i);
        Object[] objArr2 = new Object[m6068const];
        int i2 = m6068const - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            if (obj2 == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i5);
                throw new NullPointerException(sb.toString());
            }
            int hashCode = obj2.hashCode();
            int m1153abstract = C0315Kc.m1153abstract(hashCode);
            while (true) {
                int i6 = m1153abstract & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += hashCode;
                    i4++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                m1153abstract++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new C3849vE(obj4);
        }
        if (m6068const(i4) < m6068const / 2) {
            return m6069final(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new Cbreak(objArr, i3, objArr2, i2, i4);
    }

    /* renamed from: catch */
    public com.google.common.collect.Cif<E> mo6067catch() {
        com.google.common.collect.Cif<E> cif = this.f11858do;
        if (cif != null) {
            return cif;
        }
        com.google.common.collect.Cif<E> mo6037super = mo6037super();
        this.f11858do = mo6037super;
        return mo6037super;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof Ctry) && (this instanceof Cbreak)) {
            Ctry ctry = (Ctry) obj;
            ctry.getClass();
            if ((ctry instanceof Cbreak) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Cfinal.m6056do(this);
    }

    @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    /* renamed from: super */
    public com.google.common.collect.Cif<E> mo6037super() {
        Object[] array = toArray();
        Cif.C0075if c0075if = com.google.common.collect.Cif.f11833do;
        return com.google.common.collect.Cif.m6063catch(array.length, array);
    }

    @Override // com.google.common.collect.Cdo
    Object writeReplace() {
        return new Cif(toArray());
    }
}
