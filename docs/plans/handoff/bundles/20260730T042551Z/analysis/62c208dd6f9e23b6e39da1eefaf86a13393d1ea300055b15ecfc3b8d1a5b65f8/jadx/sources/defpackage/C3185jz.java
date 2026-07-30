package defpackage;

import com.google.common.collect.Cif;
import j$.util.Objects;

/* renamed from: jz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3185jz<E> extends Cif<E> {

    /* renamed from: do, reason: not valid java name */
    public static final C3185jz f13859do = new C3185jz(new Object[0], 0);

    /* renamed from: for, reason: not valid java name */
    public final transient int f13860for;

    /* renamed from: if, reason: not valid java name */
    public final transient Object[] f13861if;

    public C3185jz(Object[] objArr, int i) {
        this.f13861if = objArr;
        this.f13860for = i;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: case */
    public final Object[] mo6034case() {
        return this.f13861if;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: else */
    public final int mo6035else() {
        return this.f13860for;
    }

    @Override // java.util.List
    public final E get(int i) {
        C0315Kc.m1181this(i, this.f13860for);
        E e = (E) this.f13861if[i];
        Objects.requireNonNull(e);
        return e;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: goto */
    public final int mo6036goto() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13860for;
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: this */
    public final boolean mo6038this() {
        return false;
    }

    @Override // com.google.common.collect.Cif, com.google.common.collect.Cdo
    /* renamed from: try */
    public final int mo6039try(Object[] objArr) {
        Object[] objArr2 = this.f13861if;
        int i = this.f13860for;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return 0 + i;
    }
}
