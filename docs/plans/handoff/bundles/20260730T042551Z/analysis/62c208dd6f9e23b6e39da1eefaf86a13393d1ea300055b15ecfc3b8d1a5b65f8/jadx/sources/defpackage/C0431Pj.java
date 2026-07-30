package defpackage;

import androidx.lifecycle.Cfor;
import androidx.lifecycle.Cgoto;
import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;
import defpackage.AbstractC3398nc;

/* renamed from: Pj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0431Pj implements Cfor, InterfaceC3552qB, InterfaceC2746fL {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2687eL f2819do;

    /* renamed from: do, reason: not valid java name */
    public Cgoto f2818do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3493pB f2820do = null;

    public C0431Pj(C2687eL c2687eL) {
        this.f2819do = c2687eL;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1795do(Ctry.Cdo cdo) {
        this.f2818do.m4258case(cdo);
    }

    @Override // androidx.lifecycle.Cfor
    public final AbstractC3398nc getDefaultViewModelCreationExtras() {
        return AbstractC3398nc.Cdo.f14538do;
    }

    @Override // defpackage.InterfaceC2714eq
    public final Ctry getLifecycle() {
        m1796new();
        return this.f2818do;
    }

    @Override // defpackage.InterfaceC3552qB
    public final Cdo getSavedStateRegistry() {
        m1796new();
        return this.f2820do.f14891do;
    }

    @Override // defpackage.InterfaceC2746fL
    public final C2687eL getViewModelStore() {
        m1796new();
        return this.f2819do;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1796new() {
        if (this.f2818do == null) {
            this.f2818do = new Cgoto(this);
            this.f2820do = new C3493pB(this);
        }
    }
}
