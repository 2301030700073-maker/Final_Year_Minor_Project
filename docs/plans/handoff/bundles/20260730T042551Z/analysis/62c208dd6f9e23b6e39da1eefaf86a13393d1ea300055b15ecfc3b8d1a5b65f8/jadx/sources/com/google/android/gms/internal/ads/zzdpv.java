package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbbq;

/* loaded from: classes.dex */
public final class zzdpv implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;
    private final zzhfj zzd;
    private final zzhfj zze;

    public zzdpv(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4, zzhfj zzhfjVar5) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
        this.zzd = zzhfjVar4;
        this.zze = zzhfjVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzche) this.zza).zza();
        final String zzb = ((zzdws) this.zzb).zzb();
        VersionInfoParcel zza2 = ((zzchs) this.zzc).zza();
        final zzbbq.zza.EnumC0054zza enumC0054zza = (zzbbq.zza.EnumC0054zza) this.zzd.zzb();
        final String str = (String) this.zze.zzb();
        zzbbj zzbbjVar = new zzbbj(new zzbbp(zza));
        zzbbq.zzar.zza zzd = zzbbq.zzar.zzd();
        zzd.zzg(zza2.buddyApkVersion);
        zzd.zzi(zza2.clientJarVersion);
        zzd.zzh(true != zza2.isClientJar ? 2 : 0);
        final zzbbq.zzar zzbr = zzd.zzbr();
        zzbbjVar.zzb(new zzbbi() { // from class: com.google.android.gms.internal.ads.zzdpu
            @Override // com.google.android.gms.internal.ads.zzbbi
            public final void zza(zzbbq.zzt.zza zzaVar) {
                zzbbq.zza.zzb zzbM = zzaVar.zze().zzbM();
                zzbM.zzH(zzbbq.zza.EnumC0054zza.this);
                zzaVar.zzG(zzbM);
                zzbbq.zzm.zza zzbM2 = zzaVar.zzg().zzbM();
                zzbM2.zzm(zzb);
                zzbM2.zzw(zzbr);
                zzaVar.zzK(zzbM2);
                zzaVar.zzO(str);
            }
        });
        return zzbbjVar;
    }
}
