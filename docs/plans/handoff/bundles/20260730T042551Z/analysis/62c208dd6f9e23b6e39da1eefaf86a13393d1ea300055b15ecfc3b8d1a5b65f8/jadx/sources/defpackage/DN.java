package defpackage;

/* loaded from: classes3.dex */
public final class DN extends EN {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ EN f611do;

    /* renamed from: for, reason: not valid java name */
    public final transient int f612for;

    /* renamed from: new, reason: not valid java name */
    public final transient int f613new;

    public DN(EN en, int i, int i2) {
        this.f611do = en;
        this.f612for = i;
        this.f613new = i2;
    }

    @Override // defpackage.BN
    /* renamed from: case */
    public final int mo182case() {
        return this.f611do.mo183else() + this.f612for + this.f613new;
    }

    @Override // defpackage.BN
    /* renamed from: else */
    public final int mo183else() {
        return this.f611do.mo183else() + this.f612for;
    }

    @Override // java.util.List, j$.util.List
    public final Object get(int i) {
        C4094zN.m8792do(i, this.f613new);
        return this.f611do.get(i + this.f612for);
    }

    @Override // defpackage.BN
    /* renamed from: goto */
    public final Object[] mo184goto() {
        return this.f611do.mo184goto();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int size() {
        return this.f613new;
    }

    @Override // defpackage.EN, java.util.List, j$.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public final EN subList(int i, int i2) {
        C4094zN.m8793for(i, i2, this.f613new);
        int i3 = this.f612for;
        return this.f611do.subList(i + i3, i2 + i3);
    }
}
