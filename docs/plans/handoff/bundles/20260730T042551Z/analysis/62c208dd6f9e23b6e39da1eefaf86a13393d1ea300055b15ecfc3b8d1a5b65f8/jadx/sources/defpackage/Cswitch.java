package defpackage;

import defpackage.Cthrows;

/* renamed from: switch, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cswitch<S extends Cthrows<?>> {

    /* renamed from: do, reason: not valid java name */
    public S[] f15570do;

    /* renamed from: for, reason: not valid java name */
    public int f15571for;

    /* renamed from: new, reason: not valid java name */
    public int f15572new;

    /* renamed from: if, reason: not valid java name */
    public final void m8172if(C2681eF c2681eF) {
        synchronized (this) {
            int i = this.f15571for - 1;
            this.f15571for = i;
            if (i == 0) {
                this.f15572new = 0;
            }
            C0173Do.m396for(c2681eF, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            c2681eF.m6533for((C2623dF) this);
        }
    }
}
