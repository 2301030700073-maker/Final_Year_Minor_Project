package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbqg extends zzbpm {
    private final MediationInterscrollerAd zza;

    public zzbqg(MediationInterscrollerAd mediationInterscrollerAd) {
        this.zza = mediationInterscrollerAd;
    }

    @Override // com.google.android.gms.internal.ads.zzbpn
    public final InterfaceC0456Qm zze() {
        return new BinderC3652rv(this.zza.getView());
    }

    @Override // com.google.android.gms.internal.ads.zzbpn
    public final boolean zzf() {
        return this.zza.shouldDelegateInterscrollerEffect();
    }
}
