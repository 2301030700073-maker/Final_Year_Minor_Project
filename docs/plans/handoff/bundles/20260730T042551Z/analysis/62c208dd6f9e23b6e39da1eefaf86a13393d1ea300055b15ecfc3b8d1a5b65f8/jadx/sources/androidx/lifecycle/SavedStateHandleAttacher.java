package androidx.lifecycle;

import androidx.lifecycle.Ctry;
import defpackage.C3316mB;
import defpackage.InterfaceC2714eq;

/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements Celse {

    /* renamed from: do, reason: not valid java name */
    public final C3316mB f7084do;

    public SavedStateHandleAttacher(C3316mB c3316mB) {
        this.f7084do = c3316mB;
    }

    @Override // androidx.lifecycle.Celse
    /* renamed from: case */
    public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
        if (cdo == Ctry.Cdo.ON_CREATE) {
            interfaceC2714eq.getLifecycle().mo4261for(this);
            this.f7084do.m7447if();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + cdo).toString());
        }
    }
}
