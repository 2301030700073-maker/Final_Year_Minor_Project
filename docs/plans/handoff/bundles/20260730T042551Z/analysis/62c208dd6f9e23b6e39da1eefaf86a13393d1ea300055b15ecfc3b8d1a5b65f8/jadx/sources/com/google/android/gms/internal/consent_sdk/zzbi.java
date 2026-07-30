package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import defpackage.IJ;
import defpackage.InterfaceC3690sa;

/* loaded from: classes.dex */
public final /* synthetic */ class zzbi implements IJ {
    public final /* synthetic */ Activity zza;
    public final /* synthetic */ InterfaceC3690sa.Cdo zzb;

    public /* synthetic */ zzbi(Activity activity, InterfaceC3690sa.Cdo cdo) {
        this.zza = activity;
        this.zzb = cdo;
    }

    @Override // defpackage.IJ
    public final void onConsentFormLoadSuccess(InterfaceC3690sa interfaceC3690sa) {
        interfaceC3690sa.show(this.zza, this.zzb);
    }
}
