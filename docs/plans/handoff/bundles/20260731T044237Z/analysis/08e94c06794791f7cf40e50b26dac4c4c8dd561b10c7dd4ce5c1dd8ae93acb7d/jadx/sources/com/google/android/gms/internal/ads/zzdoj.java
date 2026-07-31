package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.sentry.protocol.DebugMeta;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdoj {
    private final zzgus zza;
    private final zzdoy zzb;
    private final zzdpd zzc;
    private final zzdvc zzd;

    zzdoj(zzgus zzgusVar, zzdoy zzdoyVar, zzdpd zzdpdVar, zzdvc zzdvcVar) {
        this.zza = zzgusVar;
        this.zzb = zzdoyVar;
        this.zzc = zzdpdVar;
        this.zzd = zzdvcVar;
    }

    private final ListenableFuture zze(ListenableFuture listenableFuture, zzduq zzduqVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            zzgui.zzr(listenableFuture, new zzdog(this, zzduqVar), this.zza);
        }
        return listenableFuture;
    }

    private static final boolean zzf(JSONObject jSONObject) {
        return jSONObject.optInt("template_id") == 3;
    }

    public final ListenableFuture zza(final zzfgf zzfgfVar, final zzffu zzffuVar, final JSONObject jSONObject, com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar) {
        ListenableFuture zza;
        JSONArray optJSONArray;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcx)).booleanValue()) {
            this.zzd.zze().putLong(zzduq.RENDERING_NATIVE_ASSETS_LOADING_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        final ListenableFuture submit = this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzdoi
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzdoj.this.zzb(zzfgfVar, zzffuVar, jSONObject);
            }
        });
        zze(submit, zzduq.NATIVE_ASSETS_LOADING_BASIC_END);
        zzdoy zzdoyVar = this.zzb;
        final ListenableFuture zzb = zzdoyVar.zzb(jSONObject, DebugMeta.JsonKeys.IMAGES, zzduq.NATIVE_ASSETS_LOADING_IMAGE_START);
        zze(zzb, zzduq.NATIVE_ASSETS_LOADING_IMAGE_END);
        zzffx zzffxVar = zzfgfVar.zzb.zzb;
        final ListenableFuture zzc = zzdoyVar.zzc(jSONObject, DebugMeta.JsonKeys.IMAGES, zzffuVar, zzffxVar, zzbVar, zzbztVar);
        zze(zzc, zzduq.NATIVE_ASSETS_LOADING_IMAGE_COMPOSITION_END);
        final ListenableFuture zza2 = zzdoyVar.zza(jSONObject, "secondary_image", zzduq.NATIVE_ASSETS_LOADING_LOGO_START);
        zze(zza2, zzduq.NATIVE_ASSETS_LOADING_LOGO_END);
        final ListenableFuture zza3 = zzdoyVar.zza(jSONObject, "app_icon", zzduq.NATIVE_ASSETS_LOADING_ICON_START);
        zze(zza3, zzduq.NATIVE_ASSETS_LOADING_ICON_END);
        final ListenableFuture zzd = zzdoyVar.zzd(jSONObject, "attribution", zzduq.NATIVE_ASSETS_LOADING_ATTRIBUTION_START);
        zze(zzd, zzduq.NATIVE_ASSETS_LOADING_ATTRIBUTION_END);
        final ListenableFuture zzg = zzdoyVar.zzg(jSONObject, zzffuVar, zzffxVar, zzbVar, zzbztVar);
        zze(zzg, zzduq.NATIVE_ASSETS_LOADING_VIDEO_END);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznZ)).booleanValue() && jSONObject.has("video")) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject.has("flags") && (optJSONArray = optJSONObject.optJSONArray("flags")) != null) {
                int i = 0;
                while (true) {
                    if (i >= optJSONArray.length()) {
                        break;
                    }
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                    if (optJSONObject2 == null || !optJSONObject2.optString(SDKConstants.PARAM_KEY).equals("afma_video_player_type")) {
                        i++;
                    } else {
                        try {
                            if (Integer.parseInt(optJSONObject2.optString("value")) == 3) {
                                zza = this.zzb.zzf(zzg);
                                zze(zza, zzduq.NATIVE_ASSETS_LOADING_MEDIA_END);
                            }
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
            }
        }
        zza = zzgui.zza(new Bundle());
        final ListenableFuture listenableFuture = zza;
        final ListenableFuture zza4 = this.zzc.zza(jSONObject, "custom_assets");
        zze(zza4, zzduq.NATIVE_ASSETS_LOADING_CUSTOM_END);
        final ListenableFuture zze = this.zzb.zze(jSONObject, zzbVar, zzbztVar);
        zze(zze, zzduq.NATIVE_ASSETS_LOADING_OMID_END);
        ArrayList arrayList = new ArrayList();
        arrayList.add(submit);
        arrayList.add(zzb);
        arrayList.add(zzc);
        arrayList.add(zza2);
        arrayList.add(zza3);
        arrayList.add(zzd);
        arrayList.add(zzg);
        arrayList.add(listenableFuture);
        arrayList.add(zza4);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfW)).booleanValue() || zzf(jSONObject)) {
            arrayList.add(zze);
        }
        return zzgui.zzn(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdoh
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzdoj.this.zzc(submit, zzb, zza3, zza2, zzd, jSONObject, zzg, listenableFuture, zzc, zze, zza4);
            }
        }, this.zza);
    }

    final /* synthetic */ zzdlq zzb(zzfgf zzfgfVar, zzffu zzffuVar, JSONObject jSONObject) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzd.zze().putLong(zzduq.NATIVE_ASSETS_LOADING_BASIC_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzdlq zzdlqVar = new zzdlq();
        zzdlqVar.zza(jSONObject.optInt("template_id", -1));
        zzdlqVar.zzl(jSONObject.optString("custom_template_id"));
        JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
        zzdlqVar.zzv(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
        zzfgn zzfgnVar = zzfgfVar.zza.zza;
        if (!zzfgnVar.zzh.contains(Integer.toString(zzdlqVar.zzx()))) {
            int zzx = zzdlqVar.zzx();
            StringBuilder sb = new StringBuilder(String.valueOf(zzx).length() + 21);
            sb.append("Invalid template ID: ");
            sb.append(zzx);
            throw new zzekz(1, sb.toString());
        }
        if (zzdlqVar.zzx() == 3) {
            if (zzdlqVar.zzS() == null) {
                throw new zzekz(1, "No custom template id for custom template ad response.");
            }
            if (!zzfgnVar.zzi.contains(zzdlqVar.zzS())) {
                throw new zzekz(1, "Unexpected custom template id in the response.");
            }
        }
        zzdlqVar.zzi(jSONObject.optDouble("rating", -1.0d));
        String optString = jSONObject.optString("headline", null);
        if (zzffuVar.zzM) {
            com.google.android.gms.ads.internal.zzt.zzc();
            String zzC = com.google.android.gms.ads.internal.util.zzs.zzC();
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzC).length() + 3 + String.valueOf(optString).length());
            sb2.append(zzC);
            sb2.append(" : ");
            sb2.append(optString);
            optString = sb2.toString();
        }
        zzdlqVar.zzs("headline", optString);
        zzdlqVar.zzs("body", jSONObject.optString("body", null));
        zzdlqVar.zzs("call_to_action", jSONObject.optString("call_to_action", null));
        zzdlqVar.zzs("store", jSONObject.optString("store", null));
        zzdlqVar.zzs(FirebaseAnalytics.Param.PRICE, jSONObject.optString(FirebaseAnalytics.Param.PRICE, null));
        zzdlqVar.zzs("advertiser", jSONObject.optString("advertiser", null));
        return zzdlqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzdlq zzc(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, ListenableFuture listenableFuture3, ListenableFuture listenableFuture4, ListenableFuture listenableFuture5, JSONObject jSONObject, ListenableFuture listenableFuture6, ListenableFuture listenableFuture7, ListenableFuture listenableFuture8, ListenableFuture listenableFuture9, ListenableFuture listenableFuture10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcx)).booleanValue()) {
            this.zzd.zze().putLong(zzduq.RENDERING_NATIVE_ASSETS_LOADING_END.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzdlq zzdlqVar = (zzdlq) listenableFuture.get();
        zzdlqVar.zzd((List) listenableFuture2.get());
        zzdlqVar.zzj((zzbii) listenableFuture3.get());
        zzdlqVar.zzk((zzbii) listenableFuture4.get());
        zzdlqVar.zzc((zzbib) listenableFuture5.get());
        zzdlqVar.zze(zzdoy.zzl(jSONObject));
        zzdlqVar.zzf(zzdoy.zzk(jSONObject));
        zzcgy zzcgyVar = (zzcgy) listenableFuture6.get();
        if (zzcgyVar != null) {
            zzdlqVar.zzm(zzcgyVar);
            zzdlqVar.zzg(zzcgyVar.zzE());
            zzdlqVar.zzb(zzcgyVar.zzh());
        }
        zzdlqVar.zzH().putAll((Bundle) listenableFuture7.get());
        zzcgy zzcgyVar2 = (zzcgy) listenableFuture8.get();
        if (zzcgyVar2 != null) {
            zzdlqVar.zzn(zzcgyVar2);
            zzdlqVar.zzh(zzcgyVar2.zzE());
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfW)).booleanValue() || zzf(jSONObject)) {
            zzcgy zzcgyVar3 = (zzcgy) listenableFuture9.get();
            if (zzcgyVar3 != null) {
                zzdlqVar.zzo(zzcgyVar3);
            }
        } else {
            zzdlqVar.zzp(listenableFuture9);
            zzdlqVar.zzr(new zzcca());
        }
        for (zzdpa zzdpaVar : (List) listenableFuture10.get()) {
            if (zzdpaVar.zza != 1) {
                zzdlqVar.zzt(zzdpaVar.zzb, zzdpaVar.zzd);
            } else {
                zzdlqVar.zzs(zzdpaVar.zzb, zzdpaVar.zzc);
            }
        }
        return zzdlqVar;
    }

    final /* synthetic */ zzdvc zzd() {
        return this.zzd;
    }
}
