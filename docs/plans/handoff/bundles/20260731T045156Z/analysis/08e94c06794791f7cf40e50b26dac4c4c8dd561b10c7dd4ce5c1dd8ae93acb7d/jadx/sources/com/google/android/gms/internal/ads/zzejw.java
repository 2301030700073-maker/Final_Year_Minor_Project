package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.common.util.concurrent.ListenableFuture;
import io.sentry.protocol.Response;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzejw implements zzejq {
    private final zzdjz zza;
    private final zzgus zzb;
    private final zzdoj zzc;
    private final zzfhm zzd;
    private final zzdqz zze;
    private final zzdvc zzf;
    private final VersionInfoParcel zzg;
    private final Context zzh;
    private final zzbzp zzi;

    public zzejw(zzdjz zzdjzVar, zzgus zzgusVar, zzdoj zzdojVar, zzfhm zzfhmVar, zzdqz zzdqzVar, zzdvc zzdvcVar, VersionInfoParcel versionInfoParcel, Context context, zzbzp zzbzpVar) {
        this.zzg = versionInfoParcel;
        this.zzh = context;
        this.zzi = zzbzpVar;
        this.zza = zzdjzVar;
        this.zzb = zzgusVar;
        this.zzc = zzdojVar;
        this.zzd = zzfhmVar;
        this.zze = zzdqzVar;
        this.zzf = zzdvcVar;
    }

    private final ListenableFuture zzg(final zzfgf zzfgfVar, final zzffu zzffuVar, final JSONObject jSONObject) {
        final zzbzt zzbztVar;
        final com.google.android.gms.ads.internal.zzb zzbVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcy)).booleanValue()) {
            this.zzf.zze().putLong(zzduq.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        final ListenableFuture zzb = this.zzd.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoB)).booleanValue()) {
            Context context = this.zzh;
            zzbzt zza = zzcyj.zza(context, this.zzg, zzffuVar, this.zzi);
            zzbztVar = zza;
            zzbVar = new com.google.android.gms.ads.internal.zzb(context, zza, null);
        } else {
            zzbztVar = null;
            zzbVar = new com.google.android.gms.ads.internal.zzb(this.zzh, null, null);
        }
        final ListenableFuture zza2 = this.zzc.zza(zzfgfVar, zzffuVar, jSONObject, zzbVar, zzbztVar);
        return zzgui.zzo(zzb, zza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeju
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzejw.this.zzf(zza2, zzb, zzfgfVar, zzffuVar, jSONObject, zzbVar, zzbztVar);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final boolean zza(zzfgf zzfgfVar, zzffu zzffuVar) {
        zzffz zzffzVar = zzffuVar.zzs;
        return (zzffzVar == null || zzffzVar.zzc == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final ListenableFuture zzb(final zzfgf zzfgfVar, final zzffu zzffuVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcx)).booleanValue()) {
            this.zzf.zze().putLong(zzduq.RENDERING_NATIVE_ADS_NATIVE_JS_WEBVIEW_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        ListenableFuture zzb = this.zzd.zzb();
        zzgtq zzgtqVar = new zzgtq() { // from class: com.google.android.gms.internal.ads.zzejv
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzejw.this.zzc(zzffuVar, (zzdqt) obj);
            }
        };
        zzgus zzgusVar = this.zzb;
        return zzgui.zzj(zzgui.zzj(zzb, zzgtqVar, zzgusVar), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzejr
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzejw.this.zzd(zzfgfVar, zzffuVar, (JSONArray) obj);
            }
        }, zzgusVar);
    }

    final /* synthetic */ ListenableFuture zzc(zzffu zzffuVar, final zzdqt zzdqtVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcx)).booleanValue()) {
            this.zzf.zze().putLong(zzduq.RENDERING_NATIVE_ADS_PREPROCESS_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjA)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(Response.TYPE, zzffuVar.zzs.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzgui.zzj(zzdqtVar.zzc("google.afma.nativeAds.preProcessJson", jSONObject2), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzejs
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzejw.this.zze(zzdqtVar, (JSONObject) obj);
            }
        }, this.zzb);
    }

    final /* synthetic */ ListenableFuture zzd(zzfgf zzfgfVar, zzffu zzffuVar, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return zzgui.zzc(new zzdzv(3));
        }
        int i = zzfgfVar.zza.zza.zzl;
        if (i <= 1) {
            return zzgui.zzk(zzg(zzfgfVar, zzffuVar, jSONArray.getJSONObject(0)), zzejt.zza, this.zzb);
        }
        int length = jSONArray.length();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcz)).booleanValue()) {
            this.zzf.zzd("nsl", String.valueOf(length));
        }
        this.zzd.zza(Math.min(length, i));
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < length) {
                arrayList.add(zzg(zzfgfVar, zzffuVar, jSONArray.getJSONObject(i2)));
            } else {
                arrayList.add(zzgui.zzc(new zzdzv(3)));
            }
        }
        return zzgui.zza(arrayList);
    }

    final /* synthetic */ ListenableFuture zze(zzdqt zzdqtVar, JSONObject jSONObject) {
        this.zzd.zzc(zzgui.zza(zzdqtVar));
        if (!jSONObject.optBoolean("success")) {
            throw new zzbqe("process json failed");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcx)).booleanValue()) {
            this.zzf.zze().putLong(zzduq.RENDERING_NATIVE_ADS_PREPROCESS_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        return zzgui.zza(jSONObject.getJSONObject("json").getJSONArray("ads"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzdll zzf(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, zzfgf zzfgfVar, zzffu zzffuVar, JSONObject jSONObject, com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar) {
        zzdlq zzdlqVar = (zzdlq) listenableFuture.get();
        zzdqt zzdqtVar = (zzdqt) listenableFuture2.get();
        zzbel zzbelVar = zzbeu.zzcy;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            this.zzf.zze().putLong(zzduq.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzdlr zzd = this.zza.zzd(new zzcue(zzfgfVar, zzffuVar, null), new zzdmb(zzdlqVar), new zzdkm(jSONObject, zzdqtVar, zzbVar, zzbztVar));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            zzdvc zzdvcVar = this.zzf;
            zzdvcVar.zze().putLong(zzduq.RENDERING_AD_COMPONENT_CREATION_END.zza(), currentTimeMillis);
            zzdvcVar.zze().putLong(zzduq.RENDERING_CONFIGURE_WEBVIEW_START.zza(), currentTimeMillis);
        }
        zzd.zzi().zzb();
        zzd.zzj().zza(zzdqtVar);
        zzd.zzk().zza(zzdlqVar.zzT());
        zzd.zzl().zza(this.zze, zzdlqVar.zzU());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue()) {
            this.zzf.zze().putLong(zzduq.RENDERING_CONFIGURE_WEBVIEW_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        return zzd.zzh();
    }
}
