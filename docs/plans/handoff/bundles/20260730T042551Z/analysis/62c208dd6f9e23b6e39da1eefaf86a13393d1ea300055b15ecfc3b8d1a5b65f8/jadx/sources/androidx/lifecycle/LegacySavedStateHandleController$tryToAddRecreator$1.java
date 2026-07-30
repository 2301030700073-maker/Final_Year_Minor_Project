package androidx.lifecycle;

import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;
import defpackage.InterfaceC2714eq;

/* loaded from: classes.dex */
public final class LegacySavedStateHandleController$tryToAddRecreator$1 implements Celse {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Ctry f7063do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cdo f7064do;

    public LegacySavedStateHandleController$tryToAddRecreator$1(Ctry ctry, Cdo cdo) {
        this.f7063do = ctry;
        this.f7064do = cdo;
    }

    @Override // androidx.lifecycle.Celse
    /* renamed from: case */
    public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
        if (cdo == Ctry.Cdo.ON_START) {
            this.f7063do.mo4261for(this);
            this.f7064do.m4583new();
        }
    }
}
