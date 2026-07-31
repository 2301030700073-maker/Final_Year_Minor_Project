package com.google.android.gms.internal.ads;

import com.braze.ui.actions.brazeactions.steps.StepData;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbrb implements zzgtq {
    private final String zza = "google.afma.activeView.handleUpdate";
    private final ListenableFuture zzb;

    zzbrb(ListenableFuture listenableFuture, String str, zzbqi zzbqiVar, zzbqh zzbqhVar) {
        this.zzb = listenableFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgtq
    public final ListenableFuture zza(Object obj) throws Exception {
        return zzb(obj);
    }

    public final ListenableFuture zzb(final Object obj) {
        return zzgui.zzj(this.zzb, new zzgtq() { // from class: com.google.android.gms.internal.ads.zzbra
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                return zzbrb.this.zzc(obj, (zzbqc) obj2);
            }
        }, zzcbv.zzg);
    }

    final /* synthetic */ ListenableFuture zzc(Object obj, zzbqc zzbqcVar) {
        zzcca zzccaVar = new zzcca();
        com.google.android.gms.ads.internal.zzt.zzc();
        String uuid = UUID.randomUUID().toString();
        zzblw.zzo.zzb(uuid, new zzbqz(this, zzccaVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put(StepData.ARGS, (JSONObject) obj);
        zzbqcVar.zzb(this.zza, jSONObject);
        return zzccaVar;
    }
}
