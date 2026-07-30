package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbok implements zzbnw {
    private final zzbny zza;
    private final zzbnz zzb;
    private final zzbns zzc;
    private final String zzd;

    public zzbok(zzbns zzbnsVar, String str, zzbnz zzbnzVar, zzbny zzbnyVar) {
        this.zzc = zzbnsVar;
        this.zzd = str;
        this.zzb = zzbnzVar;
        this.zza = zzbnyVar;
    }

    public static /* bridge */ /* synthetic */ void zzd(zzbok zzbokVar, zzbnm zzbnmVar, zzbnt zzbntVar, Object obj, zzcab zzcabVar) {
        try {
            com.google.android.gms.ads.internal.zzv.zzq();
            String uuid = UUID.randomUUID().toString();
            zzbjo.zzo.zzc(uuid, new zzboj(zzbokVar, zzbnmVar, zzcabVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put("args", zzbokVar.zzb.zzb(obj));
            zzbntVar.zzl(zzbokVar.zzd, jSONObject);
        } catch (Exception e) {
            try {
                zzcabVar.zzd(e);
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to invokeJavascript", e);
            } finally {
                zzbnmVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgbo
    public final InterfaceFutureC3942wq zza(Object obj) {
        return zzb(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbnw
    public final InterfaceFutureC3942wq zzb(Object obj) {
        zzcab zzcabVar = new zzcab();
        zzbnm zzb = this.zzc.zzb(null);
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise created");
        zzb.zzj(new zzboh(this, zzb, obj, zzcabVar), new zzboi(this, zzcabVar, zzb));
        return zzcabVar;
    }
}
