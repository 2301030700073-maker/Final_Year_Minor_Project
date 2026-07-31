package com.google.android.gms.internal.ads;

import com.braze.ui.actions.brazeactions.steps.StepData;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbqt implements zzbqf {
    private final zzbqh zza;
    private final zzbqi zzb;
    private final zzbqb zzc;
    private final String zzd;

    zzbqt(zzbqb zzbqbVar, String str, zzbqi zzbqiVar, zzbqh zzbqhVar) {
        this.zzc = zzbqbVar;
        this.zzd = str;
        this.zzb = zzbqiVar;
        this.zza = zzbqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgtq
    public final ListenableFuture zza(Object obj) throws Exception {
        return zzb(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final ListenableFuture zzb(Object obj) {
        zzcca zzccaVar = new zzcca();
        zzbpv zzb = this.zzc.zzb(null);
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise created");
        zzb.zze(new zzbqq(this, zzb, obj, zzccaVar), new zzbqr(this, zzccaVar, zzb));
        return zzccaVar;
    }

    final /* synthetic */ void zzc(zzbpv zzbpvVar, zzbqc zzbqcVar, Object obj, zzcca zzccaVar) {
        try {
            com.google.android.gms.ads.internal.zzt.zzc();
            String uuid = UUID.randomUUID().toString();
            zzblw.zzo.zzb(uuid, new zzbqs(this, zzbpvVar, zzccaVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put(StepData.ARGS, this.zzb.zzb(obj));
            zzbqcVar.zzb(this.zzd, jSONObject);
        } catch (Exception e) {
            try {
                zzccaVar.zzd(e);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to invokeJavascript", e);
            } finally {
                zzbpvVar.zza();
            }
        }
    }

    final /* synthetic */ zzbqh zzd() {
        return this.zza;
    }
}
