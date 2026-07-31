package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcks implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;

    private zzcks(zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
    }

    public static zzcks zzc(zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzcks(zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzbxd zzb() {
        Context zza = ((zzcjv) this.zza).zza();
        zzflp zzflpVar = (zzflp) this.zzb.zzb();
        zzbqp zza2 = com.google.android.gms.ads.internal.zzt.zzr().zza(zza, VersionInfoParcel.forPackage(), zzflpVar);
        zzbqj zzbqjVar = zzbqm.zza;
        zza2.zza("google.afma.request.getAdDictionary", zzbqjVar, zzbqjVar);
        return new zzbxf(zza, com.google.android.gms.ads.internal.zzt.zzr().zza(zza, VersionInfoParcel.forPackage(), zzflpVar).zza("google.afma.sdkConstants.getSdkConstants", zzbqjVar, zzbqjVar), VersionInfoParcel.forPackage());
    }
}
