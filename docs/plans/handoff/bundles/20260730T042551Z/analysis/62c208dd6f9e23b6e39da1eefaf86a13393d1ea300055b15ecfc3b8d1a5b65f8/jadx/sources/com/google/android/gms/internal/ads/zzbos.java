package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbos implements zzgbo {
    private final String zza = "google.afma.activeView.handleUpdate";
    private final InterfaceFutureC3942wq zzb;

    public zzbos(InterfaceFutureC3942wq interfaceFutureC3942wq, String str, zzbnz zzbnzVar, zzbny zzbnyVar) {
        this.zzb = interfaceFutureC3942wq;
    }

    @Override // com.google.android.gms.internal.ads.zzgbo
    public final InterfaceFutureC3942wq zza(Object obj) {
        return zzb(obj);
    }

    public final InterfaceFutureC3942wq zzb(final Object obj) {
        return zzgch.zzn(this.zzb, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzboq
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj2) {
                return zzbos.this.zzc(obj, (zzbnt) obj2);
            }
        }, zzbzw.zzg);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(Object obj, zzbnt zzbntVar) {
        zzcab zzcabVar = new zzcab();
        com.google.android.gms.ads.internal.zzv.zzq();
        String uuid = UUID.randomUUID().toString();
        zzbjo.zzo.zzc(uuid, new zzbor(this, zzcabVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) obj);
        zzbntVar.zzl(this.zza, jSONObject);
        return zzcabVar;
    }
}
