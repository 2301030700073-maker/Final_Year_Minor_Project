package defpackage;

import defpackage.AbstractC3429o6;

/* renamed from: l6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3252l6 extends AbstractC3429o6.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC3429o6 f14092do;

    /* renamed from: for, reason: not valid java name */
    public int f14093for = 0;

    /* renamed from: new, reason: not valid java name */
    public final int f14094new;

    public C3252l6(AbstractC3429o6 abstractC3429o6) {
        this.f14092do = abstractC3429o6;
        this.f14094new = abstractC3429o6.size();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f14093for < this.f14094new;
    }
}
