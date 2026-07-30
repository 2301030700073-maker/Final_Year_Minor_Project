package defpackage;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class GN extends EN {

    /* renamed from: do, reason: not valid java name */
    public static final GN f1182do = new GN(new Object[0]);

    /* renamed from: if, reason: not valid java name */
    public final transient Object[] f1183if;

    public GN(Object[] objArr) {
        this.f1183if = objArr;
    }

    @Override // defpackage.BN
    /* renamed from: case */
    public final int mo182case() {
        return 0;
    }

    @Override // defpackage.BN
    /* renamed from: else */
    public final int mo183else() {
        return 0;
    }

    @Override // java.util.List, j$.util.List
    public final Object get(int i) {
        C4094zN.m8792do(i, 0);
        Object obj = this.f1183if[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // defpackage.BN
    /* renamed from: goto */
    public final Object[] mo184goto() {
        return this.f1183if;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int size() {
        return 0;
    }

    @Override // defpackage.EN, defpackage.BN
    /* renamed from: try */
    public final void mo185try(Object[] objArr) {
        System.arraycopy(this.f1183if, 0, objArr, 0, 0);
    }
}
