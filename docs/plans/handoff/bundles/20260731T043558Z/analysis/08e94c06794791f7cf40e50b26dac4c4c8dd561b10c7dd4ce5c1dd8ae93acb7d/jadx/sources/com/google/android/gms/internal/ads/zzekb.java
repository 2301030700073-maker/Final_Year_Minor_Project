package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzekb implements zzehq {
    private final Context zza;
    private final zzdjz zzb;
    private zzbry zzc;
    private final VersionInfoParcel zzd;

    public zzekb(Context context, zzdjz zzdjzVar, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = zzdjzVar;
        this.zzd = versionInfoParcel;
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final void zza(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu {
        try {
            zzbti zzbtiVar = (zzbti) zzehnVar.zzb;
            zzbtiVar.zzo(zzffuVar.zzZ);
            if (this.zzd.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbY)).intValue()) {
                zzbtiVar.zzn(zzffuVar.zzU, zzffuVar.zzv.toString(), zzfgfVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeka(this, zzehnVar, null), (zzbrp) zzehnVar.zzc);
                return;
            }
            String str = zzffuVar.zzU;
            String jSONObject = zzffuVar.zzv.toString();
            zzfgn zzfgnVar = zzfgfVar.zza.zza;
            zzbtiVar.zzr(str, jSONObject, zzfgnVar.zzd, ObjectWrapper.wrap(this.zza), new zzeka(this, zzehnVar, null), (zzbrp) zzehnVar.zzc, zzfgnVar.zzj);
        } catch (RemoteException e) {
            throw new zzfgu(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final /* bridge */ /* synthetic */ Object zzb(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu, zzekz {
        ArrayList arrayList = zzfgfVar.zza.zza.zzh;
        if (!arrayList.contains(Integer.toString(6))) {
            throw new zzekz(2, "Unified must be used for RTB.");
        }
        zzdlq zzaf = zzdlq.zzaf(this.zzc);
        if (!arrayList.contains(Integer.toString(zzaf.zzx()))) {
            throw new zzekz(1, "No corresponding native ad listener");
        }
        zzdls zze = this.zzb.zze(new zzcue(zzfgfVar, zzffuVar, zzehnVar.zza), new zzdmb(zzaf), new zzdnu(null, null, this.zzc));
        ((zzeiz) zzehnVar.zzc).zzc(zze.zzg());
        return zze.zzh();
    }

    final /* synthetic */ void zzc(zzbry zzbryVar) {
        this.zzc = zzbryVar;
    }
}
