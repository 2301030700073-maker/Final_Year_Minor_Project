package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzdfb implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;
    private final zzhfj zzd;

    public zzdfb(zzdeu zzdeuVar, zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
        this.zzd = zzhfjVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.zza.zzb();
        final VersionInfoParcel zza = ((zzchs) this.zzb).zza();
        final zzfbo zza2 = ((zzcrq) this.zzc).zza();
        final zzfcj zza3 = ((zzcvk) this.zzd).zza();
        return new zzddk(new zzcxh() { // from class: com.google.android.gms.internal.ads.zzdes
            @Override // com.google.android.gms.internal.ads.zzcxh
            public final void zzs() {
                com.google.android.gms.ads.internal.util.zzay zzt = com.google.android.gms.ads.internal.zzv.zzt();
                Context context2 = context;
                zzfcj zzfcjVar = zza3;
                zzt.zzn(context2, zza.afmaVersion, zza2.zzC.toString(), zzfcjVar.zzf);
            }
        }, zzbzw.zzg);
    }
}
