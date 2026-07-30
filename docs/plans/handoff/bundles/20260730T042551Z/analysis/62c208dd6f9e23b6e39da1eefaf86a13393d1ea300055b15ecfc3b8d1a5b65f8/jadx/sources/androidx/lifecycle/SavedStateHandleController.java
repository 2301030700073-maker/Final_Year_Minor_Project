package androidx.lifecycle;

import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;
import defpackage.C0173Do;
import defpackage.InterfaceC2714eq;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements Celse {

    /* renamed from: break, reason: not valid java name */
    public final String f7085break;

    /* renamed from: do, reason: not valid java name */
    public final Cconst f7086do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7087do;

    public SavedStateHandleController(String str, Cconst cconst) {
        this.f7085break = str;
        this.f7086do = cconst;
    }

    @Override // androidx.lifecycle.Celse
    /* renamed from: case */
    public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
        if (cdo == Ctry.Cdo.ON_DESTROY) {
            this.f7087do = false;
            interfaceC2714eq.getLifecycle().mo4261for(this);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4244for(Ctry ctry, Cdo cdo) {
        C0173Do.m401try(cdo, "registry");
        C0173Do.m401try(ctry, "lifecycle");
        if (!(!this.f7087do)) {
            throw new IllegalStateException("Already attached to lifecycleOwner".toString());
        }
        this.f7087do = true;
        ctry.mo4259do(this);
        cdo.m4581for(this.f7085break, this.f7086do.f7103do);
    }
}
