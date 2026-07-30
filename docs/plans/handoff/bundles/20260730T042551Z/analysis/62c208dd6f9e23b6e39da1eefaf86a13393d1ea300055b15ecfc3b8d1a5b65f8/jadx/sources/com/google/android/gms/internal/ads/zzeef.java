package com.google.android.gms.internal.ads;

import android.view.View;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
final class zzeef extends zzbqq {
    final /* synthetic */ zzeeh zza;
    private final zzecz zzb;

    public /* synthetic */ zzeef(zzeeh zzeehVar, zzecz zzeczVar, zzeeg zzeegVar) {
        this.zza = zzeehVar;
        this.zzb = zzeczVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqr
    public final void zze(String str) {
        ((zzees) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbqr
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        ((zzees) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqr
    public final void zzg(InterfaceC0456Qm interfaceC0456Qm) {
        this.zza.zzc = (View) BinderC3652rv.o(interfaceC0456Qm);
        ((zzees) this.zzb.zzc).zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbqr
    public final void zzh(zzbpn zzbpnVar) {
        this.zza.zzd = zzbpnVar;
        ((zzees) this.zzb.zzc).zzo();
    }
}
