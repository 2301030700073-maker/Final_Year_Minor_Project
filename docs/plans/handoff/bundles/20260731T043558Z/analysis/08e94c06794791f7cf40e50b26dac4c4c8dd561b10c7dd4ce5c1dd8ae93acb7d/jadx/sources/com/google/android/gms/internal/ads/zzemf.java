package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzemf implements zzehm {
    private final zzenj zza;
    private final zzdsy zzb;

    zzemf(zzenj zzenjVar, zzdsy zzdsyVar) {
        this.zza = zzenjVar;
        this.zzb = zzdsyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehm
    public final zzehn zza(String str, JSONObject jSONObject) throws zzfgu {
        zzbti zzbtiVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbV)).booleanValue()) {
            try {
                zzbtiVar = this.zzb.zzb(str);
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Coundn't create RTB adapter: ", e);
                zzbtiVar = null;
            }
        } else {
            zzbtiVar = this.zza.zzb(str);
        }
        if (zzbtiVar == null) {
            return null;
        }
        return new zzehn(zzbtiVar, new zzeiz(), str);
    }
}
