package defpackage;

import android.os.Bundle;
import androidx.lifecycle.Celse;
import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;
import androidx.savedstate.Recreator;
import defpackage.C3139jB;
import java.util.Map;

/* renamed from: pB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3493pB {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f14891do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3552qB f14892do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14893do;

    public C3493pB(InterfaceC3552qB interfaceC3552qB) {
        this.f14892do = interfaceC3552qB;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7787do() {
        InterfaceC3552qB interfaceC3552qB = this.f14892do;
        Ctry lifecycle = interfaceC3552qB.getLifecycle();
        if (!(lifecycle.mo4263if() == Ctry.Cif.INITIALIZED)) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        lifecycle.mo4259do(new Recreator(interfaceC3552qB));
        final Cdo cdo = this.f14891do;
        cdo.getClass();
        if (!(!cdo.f7708do)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        lifecycle.mo4259do(new Celse() { // from class: oB
            @Override // androidx.lifecycle.Celse
            /* renamed from: case */
            public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo2) {
                Cdo cdo3 = Cdo.this;
                C0173Do.m401try(cdo3, "this$0");
                if (cdo2 == Ctry.Cdo.ON_START) {
                    cdo3.f7709for = true;
                } else if (cdo2 == Ctry.Cdo.ON_STOP) {
                    cdo3.f7709for = false;
                }
            }
        });
        cdo.f7708do = true;
        this.f14893do = true;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7788for(Bundle bundle) {
        C0173Do.m401try(bundle, "outBundle");
        Cdo cdo = this.f14891do;
        cdo.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = cdo.f7705do;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C3139jB<String, Cdo.Cif> c3139jB = cdo.f7707do;
        c3139jB.getClass();
        C3139jB.Cnew cnew = new C3139jB.Cnew();
        c3139jB.f13646do.put(cnew, Boolean.FALSE);
        while (cnew.hasNext()) {
            Map.Entry entry = (Map.Entry) cnew.next();
            bundle2.putBundle((String) entry.getKey(), ((Cdo.Cif) entry.getValue()).mo94do());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7789if(Bundle bundle) {
        if (!this.f14893do) {
            m7787do();
        }
        Ctry lifecycle = this.f14892do.getLifecycle();
        if (!(!(lifecycle.mo4263if().compareTo(Ctry.Cif.STARTED) >= 0))) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.mo4263if()).toString());
        }
        Cdo cdo = this.f14891do;
        if (!cdo.f7708do) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!cdo.f7710if)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        cdo.f7705do = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        cdo.f7710if = true;
    }
}
