package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdih implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;
    private final zzifq zzc;
    private final zzifq zzd;

    private zzdih(zzdia zzdiaVar, zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
        this.zzc = zzifqVar3;
        this.zzd = zzifqVar4;
    }

    public static zzdih zza(zzdia zzdiaVar, zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4) {
        return new zzdih(zzdiaVar, zzifqVar, zzifqVar2, zzifqVar3, zzifqVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.zza.zzb();
        final VersionInfoParcel zza = ((zzckk) this.zzb).zza();
        final zzffu zza2 = ((zzcuf) this.zzc).zza();
        final zzfgn zza3 = ((zzcyf) this.zzd).zza();
        return new zzdgn(new zzdac() { // from class: com.google.android.gms.internal.ads.zzdhz
            @Override // com.google.android.gms.internal.ads.zzdac
            public final /* synthetic */ void zzg() {
                zzfgn zzfgnVar = zza3;
                JSONObject jSONObject = zza2.zzC;
                com.google.android.gms.ads.internal.zzt.zzo().zzg(context, zza.afmaVersion, jSONObject.toString(), zzfgnVar.zzg);
            }
        }, zzcbv.zzg);
    }
}
