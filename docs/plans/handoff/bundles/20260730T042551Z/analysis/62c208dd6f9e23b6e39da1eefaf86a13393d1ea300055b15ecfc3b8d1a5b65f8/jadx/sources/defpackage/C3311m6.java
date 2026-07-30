package defpackage;

import defpackage.AbstractC3370n6;

/* renamed from: m6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3311m6 extends AbstractC3370n6.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC3370n6 f14311do;

    /* renamed from: for, reason: not valid java name */
    public int f14312for = 0;

    /* renamed from: new, reason: not valid java name */
    public final int f14313new;

    public C3311m6(AbstractC3370n6 abstractC3370n6) {
        this.f14311do = abstractC3370n6;
        this.f14313new = abstractC3370n6.size();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f14312for < this.f14313new;
    }
}
