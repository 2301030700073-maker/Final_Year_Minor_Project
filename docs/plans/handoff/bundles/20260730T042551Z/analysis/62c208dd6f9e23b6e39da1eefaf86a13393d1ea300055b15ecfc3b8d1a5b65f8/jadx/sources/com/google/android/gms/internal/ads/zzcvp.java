package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzcvp implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzcvp(zzcvo zzcvoVar, zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context context = (Context) this.zza.zzb();
        VersionInfoParcel zza = ((zzchs) this.zzb).zza();
        zzfbo zza2 = ((zzcrq) this.zzc).zza();
        zzbxq zzbxqVar = new zzbxq();
        zzbxr zzbxrVar = zza2.zzA;
        if (zzbxrVar == null) {
            return null;
        }
        zzfbt zzfbtVar = zza2.zzs;
        return new zzbxp(context, zza, zzbxrVar, zzfbtVar == null ? null : zzfbtVar.zzb, zzbxqVar);
    }
}
