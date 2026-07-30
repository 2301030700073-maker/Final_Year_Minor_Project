package com.google.common.collect;

import defpackage.AbstractC3324mJ;
import defpackage.C0315Kc;

/* renamed from: com.google.common.collect.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak<E> extends Ctry<E> {

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak<Object> f11799do;

    /* renamed from: new, reason: not valid java name */
    public static final Object[] f11800new;

    /* renamed from: case, reason: not valid java name */
    public final transient int f11801case;

    /* renamed from: for, reason: not valid java name */
    public final transient Object[] f11802for;

    /* renamed from: if, reason: not valid java name */
    public final transient Object[] f11803if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final transient int f11804new;

    /* renamed from: try, reason: not valid java name */
    public final transient int f11805try;

    static {
        Object[] objArr = new Object[0];
        f11800new = objArr;
        f11799do = new Cbreak<>(objArr, 0, objArr, 0, 0);
    }

    public Cbreak(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f11803if = objArr;
        this.f11804new = i;
        this.f11802for = objArr2;
        this.f11805try = i2;
        this.f11801case = i3;
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: break, reason: not valid java name */
    public final AbstractC3324mJ<E> iterator() {
        return mo6067catch().listIterator(0);
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: case, reason: not valid java name */
    public final Object[] mo6034case() {
        return this.f11803if;
    }

    @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f11802for;
            if (objArr.length != 0) {
                int m1159continue = C0315Kc.m1159continue(obj);
                while (true) {
                    int i = m1159continue & this.f11805try;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    m1159continue = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: else, reason: not valid java name */
    public final int mo6035else() {
        return this.f11801case;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: goto, reason: not valid java name */
    public final int mo6036goto() {
        return 0;
    }

    @Override // com.google.common.collect.Ctry, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f11804new;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f11801case;
    }

    @Override // com.google.common.collect.Ctry
    /* renamed from: super, reason: not valid java name */
    public final Cif<E> mo6037super() {
        return Cif.m6063catch(this.f11801case, this.f11803if);
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: this, reason: not valid java name */
    public final boolean mo6038this() {
        return false;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: try, reason: not valid java name */
    public final int mo6039try(Object[] objArr) {
        Object[] objArr2 = this.f11803if;
        int i = this.f11801case;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return 0 + i;
    }
}
