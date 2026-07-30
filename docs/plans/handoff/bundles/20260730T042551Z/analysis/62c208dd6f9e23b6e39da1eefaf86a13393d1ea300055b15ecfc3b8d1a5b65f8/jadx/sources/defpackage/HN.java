package defpackage;

import java.util.Iterator;

/* loaded from: classes3.dex */
public final class HN extends FN {

    /* renamed from: do, reason: not valid java name */
    public static final HN f1348do;

    /* renamed from: new, reason: not valid java name */
    public static final Object[] f1349new;

    /* renamed from: for, reason: not valid java name */
    public final transient Object[] f1350for;

    /* renamed from: if, reason: not valid java name */
    public final transient Object[] f1351if;

    static {
        Object[] objArr = new Object[0];
        f1349new = objArr;
        f1348do = new HN(objArr, objArr);
    }

    public HN(Object[] objArr, Object[] objArr2) {
        this.f1351if = objArr;
        this.f1350for = objArr2;
    }

    @Override // defpackage.FN
    /* renamed from: break */
    public final void mo612break() {
    }

    @Override // defpackage.BN
    /* renamed from: case */
    public final int mo182case() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f1350for.length;
        return false;
    }

    @Override // defpackage.BN
    /* renamed from: else */
    public final int mo183else() {
        return 0;
    }

    @Override // defpackage.BN
    /* renamed from: goto */
    public final Object[] mo184goto() {
        return this.f1351if;
    }

    @Override // defpackage.FN, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int hashCode() {
        return 0;
    }

    @Override // defpackage.FN, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    public final Iterator iterator() {
        EN en = this.f1048do;
        if (en == null) {
            CN cn = EN.f784do;
            en = GN.f1182do;
            this.f1048do = en;
        }
        return en.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int size() {
        return 0;
    }

    @Override // defpackage.FN
    /* renamed from: this */
    public final CN iterator() {
        EN en = this.f1048do;
        if (en == null) {
            CN cn = EN.f784do;
            en = GN.f1182do;
            this.f1048do = en;
        }
        return en.listIterator(0);
    }

    @Override // defpackage.BN
    /* renamed from: try */
    public final void mo185try(Object[] objArr) {
        System.arraycopy(this.f1351if, 0, objArr, 0, 0);
    }
}
