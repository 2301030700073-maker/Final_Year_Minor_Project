package com.google.android.gms.internal.ads;

import android.view.View;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbdb extends zzbdc {
    private final com.google.android.gms.ads.internal.zzg zza;
    private final String zzb;
    private final String zzc;

    public zzbdb(com.google.android.gms.ads.internal.zzg zzgVar, String str, String str2) {
        this.zza = zzgVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final String zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzd(InterfaceC0456Qm interfaceC0456Qm) {
        if (interfaceC0456Qm == null) {
            return;
        }
        this.zza.zza((View) BinderC3652rv.o(interfaceC0456Qm));
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zze() {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzf() {
        this.zza.zzc();
    }
}
