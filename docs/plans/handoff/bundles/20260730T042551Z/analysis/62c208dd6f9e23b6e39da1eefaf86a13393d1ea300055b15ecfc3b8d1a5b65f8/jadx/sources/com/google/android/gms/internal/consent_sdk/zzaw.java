package com.google.android.gms.internal.consent_sdk;

import defpackage.C3817uj;
import defpackage.HJ;
import defpackage.IJ;
import defpackage.InterfaceC3690sa;

/* loaded from: classes.dex */
final class zzaw implements IJ, HJ {
    private final IJ zza;
    private final HJ zzb;

    public /* synthetic */ zzaw(IJ ij, HJ hj, zzax zzaxVar) {
        this.zza = ij;
        this.zzb = hj;
    }

    @Override // defpackage.HJ
    public final void onConsentFormLoadFailure(C3817uj c3817uj) {
        this.zzb.onConsentFormLoadFailure(c3817uj);
    }

    @Override // defpackage.IJ
    public final void onConsentFormLoadSuccess(InterfaceC3690sa interfaceC3690sa) {
        this.zza.onConsentFormLoadSuccess(interfaceC3690sa);
    }
}
