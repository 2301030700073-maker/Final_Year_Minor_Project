package defpackage;

import androidx.lifecycle.Cimport;

/* renamed from: Jn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0304Jn implements Cimport.Cif {

    /* renamed from: do, reason: not valid java name */
    public final C2629dL<?>[] f1689do;

    public C0304Jn(C2629dL<?>... c2629dLArr) {
        C0173Do.m401try(c2629dLArr, "initializers");
        this.f1689do = c2629dLArr;
    }

    @Override // androidx.lifecycle.Cimport.Cif
    /* renamed from: do, reason: not valid java name */
    public final AbstractC0805cL mo1068do(Class cls) {
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    @Override // androidx.lifecycle.Cimport.Cif
    /* renamed from: if, reason: not valid java name */
    public final AbstractC0805cL mo1069if(Class cls, C0397Nt c0397Nt) {
        AbstractC0805cL abstractC0805cL = null;
        for (C2629dL<?> c2629dL : this.f1689do) {
            if (C0173Do.m394do(c2629dL.f12472do, cls)) {
                Object mo364this = c2629dL.f12471do.mo364this(c0397Nt);
                abstractC0805cL = mo364this instanceof AbstractC0805cL ? (AbstractC0805cL) mo364this : null;
            }
        }
        if (abstractC0805cL != null) {
            return abstractC0805cL;
        }
        throw new IllegalArgumentException("No initializer set for given class ".concat(cls.getName()));
    }
}
