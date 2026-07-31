package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.ReactNativeBlobUtil.ReactNativeBlobUtilConst;
import com.braze.models.Banner;
import com.braze.models.inappmessage.InAppMessageBase;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import io.sentry.clientreport.DiscardedEvent;
import io.sentry.protocol.DebugMeta;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdoy {
    private final Context zza;
    private final zzdoe zzb;
    private final zzaxa zzc;
    private final VersionInfoParcel zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzbdt zzf;
    private final Executor zzg;
    private final zzbhx zzh;
    private final zzdpq zzi;
    private final zzdse zzj;
    private final ScheduledExecutorService zzk;
    private final zzdqz zzl;
    private final zzdvi zzm;
    private final zzfng zzn;
    private final zzefy zzo;
    private final zzegj zzp;
    private final zzfgr zzq;
    private final zzdvc zzr;
    private final zzdwl zzs;

    public zzdoy(Context context, zzdoe zzdoeVar, zzaxa zzaxaVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzbdt zzbdtVar, Executor executor, zzfgn zzfgnVar, zzdpq zzdpqVar, zzdse zzdseVar, ScheduledExecutorService scheduledExecutorService, zzdvi zzdviVar, zzfng zzfngVar, zzefy zzefyVar, zzdqz zzdqzVar, zzegj zzegjVar, zzfgr zzfgrVar, zzdvc zzdvcVar, zzdwl zzdwlVar) {
        this.zza = context;
        this.zzb = zzdoeVar;
        this.zzc = zzaxaVar;
        this.zzd = versionInfoParcel;
        this.zze = zzaVar;
        this.zzf = zzbdtVar;
        this.zzg = executor;
        this.zzh = zzfgnVar.zzj;
        this.zzi = zzdpqVar;
        this.zzj = zzdseVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzdviVar;
        this.zzn = zzfngVar;
        this.zzo = zzefyVar;
        this.zzl = zzdqzVar;
        this.zzp = zzegjVar;
        this.zzq = zzfgrVar;
        this.zzr = zzdvcVar;
        this.zzs = zzdwlVar;
    }

    public static final com.google.android.gms.ads.internal.client.zzez zzk(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzt(optJSONObject);
    }

    public static final List zzl(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzgpe.zzi();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzgpe.zzi();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            com.google.android.gms.ads.internal.client.zzez zzt = zzt(optJSONArray.optJSONObject(i));
            if (zzt != null) {
                arrayList.add(zzt);
            }
        }
        return zzgpe.zzq(arrayList);
    }

    private final ListenableFuture zzm(JSONArray jSONArray, boolean z, boolean z2, zzduq zzduqVar) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzgui.zza(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzr.zze().putLong(zzduqVar.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        for (int i = 0; i < length; i++) {
            arrayList.add(zzn(jSONArray.optJSONObject(i), z, null));
        }
        return zzgui.zzk(zzgui.zzm(arrayList), zzdox.zza, this.zzg);
    }

    private final ListenableFuture zzn(JSONObject jSONObject, boolean z, zzduq zzduqVar) {
        HashMap hashMap;
        final String optString;
        final double optDouble;
        final int optInt;
        final int optInt2;
        if (jSONObject == null) {
            return zzgui.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzex)).booleanValue()) {
            if (jSONObject.has((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzey))) {
                HashMap hashMap2 = new HashMap();
                for (String str : ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzez)).split(",")) {
                    try {
                        hashMap2.put(str, jSONObject.getString(str));
                    } catch (JSONException unused) {
                    }
                }
                hashMap = hashMap2;
                optString = jSONObject.optString("url");
                if (!TextUtils.isEmpty(optString) && hashMap == null) {
                    return zzgui.zza(null);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue() && zzduqVar != null) {
                    this.zzr.zze().putLong(zzduqVar.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                }
                optDouble = jSONObject.optDouble("scale", 1.0d);
                boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
                optInt = jSONObject.optInt("width", -1);
                optInt2 = jSONObject.optInt("height", -1);
                if (!z || hashMap != null) {
                    return zzgui.zza(new zzbht(null, Uri.parse(optString), optDouble, optInt, optInt2, hashMap));
                }
                return zzr(jSONObject.optBoolean("require"), zzgui.zzk(this.zzb.zza(optString, optDouble, optBoolean), new zzglu() { // from class: com.google.android.gms.internal.ads.zzdon
                    @Override // com.google.android.gms.internal.ads.zzglu
                    public final /* synthetic */ Object apply(Object obj) {
                        return new zzbht(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(optString), optDouble, optInt, optInt2, null);
                    }
                }, this.zzg), null);
            }
        }
        hashMap = null;
        optString = jSONObject.optString("url");
        if (!TextUtils.isEmpty(optString)) {
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzr.zze().putLong(zzduqVar.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean2 = jSONObject.optBoolean("is_transparent", true);
        optInt = jSONObject.optInt("width", -1);
        optInt2 = jSONObject.optInt("height", -1);
        if (!z) {
        }
        return zzgui.zza(new zzbht(null, Uri.parse(optString), optDouble, optInt, optInt2, hashMap));
    }

    private static Integer zzo(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    private final ListenableFuture zzp(JSONObject jSONObject, zzffu zzffuVar, zzffx zzffxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar) {
        final ListenableFuture zzb = this.zzi.zzb(jSONObject.optString("base_url"), jSONObject.optString(Banner.HTML), zzffuVar, zzffxVar, zzs(jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)), zzbVar, zzbztVar);
        return zzgui.zzj(zzb, new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdos
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                zzcgy zzcgyVar = (zzcgy) obj;
                if (zzcgyVar == null || zzcgyVar.zzh() == null) {
                    throw new zzekz(1, "Retrieve video view in html5 ad response failed.");
                }
                return ListenableFuture.this;
            }
        }, zzcbv.zzg);
    }

    private static ListenableFuture zzq(ListenableFuture listenableFuture, Object obj) {
        final Object obj2 = null;
        return zzgui.zzh(listenableFuture, Exception.class, new zzgtq(obj2) { // from class: com.google.android.gms.internal.ads.zzdot
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj3) {
                com.google.android.gms.ads.internal.util.zze.zzb("Error during loading assets.", (Exception) obj3);
                return zzgui.zza(null);
            }
        }, zzcbv.zzg);
    }

    private static ListenableFuture zzr(boolean z, final ListenableFuture listenableFuture, Object obj) {
        return z ? zzgui.zzj(listenableFuture, new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdou
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                return obj2 != null ? ListenableFuture.this : zzgui.zzc(new zzekz(1, "Retrieve required value in native ad response failed."));
            }
        }, zzcbv.zzg) : zzq(listenableFuture, null);
    }

    private static final com.google.android.gms.ads.internal.client.zzez zzt(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(DiscardedEvent.JsonKeys.REASON);
        String optString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return new com.google.android.gms.ads.internal.client.zzez(optString, optString2);
    }

    public final ListenableFuture zza(JSONObject jSONObject, String str, zzduq zzduqVar) {
        return zzn(jSONObject.optJSONObject(str), this.zzh.zzb, zzduqVar);
    }

    public final ListenableFuture zzb(JSONObject jSONObject, String str, zzduq zzduqVar) {
        zzbhx zzbhxVar = this.zzh;
        return zzm(jSONObject.optJSONArray(DebugMeta.JsonKeys.IMAGES), zzbhxVar.zzb, zzbhxVar.zzd, zzduqVar);
    }

    public final ListenableFuture zzc(JSONObject jSONObject, String str, final zzffu zzffuVar, final zzffx zzffxVar, final com.google.android.gms.ads.internal.zzb zzbVar, final zzbzt zzbztVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzla)).booleanValue()) {
            return zzgui.zza(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(DebugMeta.JsonKeys.IMAGES);
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzgui.zza(null);
        }
        JSONObject optJSONObject = optJSONArray.optJSONObject(0);
        if (optJSONObject == null) {
            return zzgui.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzex)).booleanValue()) {
            if (optJSONObject.has((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzey))) {
                return zzgui.zza(null);
            }
        }
        final String optString = optJSONObject.optString("base_url");
        final String optString2 = optJSONObject.optString(Banner.HTML);
        final com.google.android.gms.ads.internal.client.zzr zzs = zzs(optJSONObject.optInt("width", 0), optJSONObject.optInt("height", 0));
        if (TextUtils.isEmpty(optString2)) {
            return zzgui.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzr.zze().putLong(zzduq.NATIVE_ASSETS_LOADING_IMAGE_COMPOSITION_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        final ListenableFuture zzj = zzgui.zzj(zzgui.zza(null), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdoo
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzdoy.this.zzh(zzs, zzffuVar, zzffxVar, zzbVar, zzbztVar, optString, optString2, obj);
            }
        }, zzcbv.zzf);
        return zzgui.zzj(zzj, new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdop
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                if (((zzcgy) obj) != null) {
                    return ListenableFuture.this;
                }
                throw new zzekz(1, "Retrieve Web View from image ad response failed.");
            }
        }, zzcbv.zzg);
    }

    public final ListenableFuture zzd(JSONObject jSONObject, String str, zzduq zzduqVar) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return zzgui.zza(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray(DebugMeta.JsonKeys.IMAGES);
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return zzr(optJSONObject.optBoolean("require"), zzgui.zzk(zzm(optJSONArray, false, true, zzduqVar), new zzglu() { // from class: com.google.android.gms.internal.ads.zzdoq
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                return zzdoy.this.zzi(optJSONObject, (List) obj);
            }
        }, this.zzg), null);
    }

    public final ListenableFuture zze(JSONObject jSONObject, final com.google.android.gms.ads.internal.zzb zzbVar, final zzbzt zzbztVar) {
        if (!jSONObject.optBoolean("enable_omid")) {
            return zzgui.zza(null);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
        if (optJSONObject == null) {
            return zzgui.zza(null);
        }
        final String optString = optJSONObject.optString("omid_html");
        if (TextUtils.isEmpty(optString)) {
            return zzgui.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzr.zze().putLong(zzduq.NATIVE_ASSETS_LOADING_OMID_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        return zzgui.zzj(zzgui.zza(null), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzdor
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzdoy.this.zzj(optString, zzbztVar, zzbVar, obj);
            }
        }, zzcbv.zzf);
    }

    public final ListenableFuture zzf(ListenableFuture listenableFuture) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcC)).booleanValue()) {
            this.zzr.zze().putLong(zzduq.NATIVE_ASSETS_LOADING_MEDIA_START.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzcca zzccaVar = new zzcca();
        zzgui.zzr(listenableFuture, new zzdom(this, zzccaVar), zzcbv.zzf);
        return zzccaVar;
    }

    public final ListenableFuture zzg(JSONObject jSONObject, zzffu zzffuVar, zzffx zzffxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar) {
        ListenableFuture zza;
        boolean z = false;
        JSONObject zzi = com.google.android.gms.ads.internal.util.zzbp.zzi(jSONObject, "html_containers", "instream");
        if (zzi != null) {
            return zzp(zzi, zzffuVar, zzffxVar, zzbVar, zzbztVar);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("video");
        if (optJSONObject == null) {
            return zzgui.zza(null);
        }
        String optString = optJSONObject.optString("vast_xml");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzkZ)).booleanValue() && optJSONObject.has(Banner.HTML)) {
            z = true;
        }
        if (TextUtils.isEmpty(optString)) {
            if (!z) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Required field 'vast_xml' or 'html' is missing");
                return zzgui.zza(null);
            }
        } else if (!z) {
            zza = this.zzi.zza(optJSONObject, zzbVar, zzbztVar);
            return zzq(zzgui.zzi(zza, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzep)).intValue(), TimeUnit.SECONDS, this.zzk), null);
        }
        zza = zzp(optJSONObject, zzffuVar, zzffxVar, zzbVar, zzbztVar);
        return zzq(zzgui.zzi(zza, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzep)).intValue(), TimeUnit.SECONDS, this.zzk), null);
    }

    final /* synthetic */ ListenableFuture zzh(com.google.android.gms.ads.internal.client.zzr zzrVar, zzffu zzffuVar, zzffx zzffxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbzt zzbztVar, String str, String str2, Object obj) {
        zzdwl zzdwlVar;
        zzcgy zza = this.zzj.zza(zzrVar, zzffuVar, zzffxVar);
        final zzcbz zza2 = zzcbz.zza(zza);
        zzdqw zza3 = this.zzl.zza();
        zzciw zzP = zza.zzP();
        zzbel zzbelVar = zzbeu.zzoB;
        zzP.zzZ(zza3, zza3, zza3, zza3, zza3, false, null, !((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue() ? new com.google.android.gms.ads.internal.zzb(this.zza, null, null) : zzbVar, null, true != ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).booleanValue() ? null : zzbztVar, this.zzo, this.zzn, this.zzm, null, zza3, null, null, null, null, null, null);
        zza.zzab("/getNativeAdViewSignals", zzblw.zzs);
        zza.zzab("/getNativeClickMeta", zzblw.zzt);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziu)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziw)).booleanValue() && (zzdwlVar = this.zzs) != null) {
                zza.zzab("/onDeviceStorageEvent", new zzbmf(zzdwlVar));
            }
        }
        zza.zzP().zzQ(true);
        zza.zzP().zzG(new zzciu() { // from class: com.google.android.gms.internal.ads.zzdow
            @Override // com.google.android.gms.internal.ads.zzciu
            public final /* synthetic */ void zza(boolean z, int i, String str3, String str4) {
                zzcbz zzcbzVar = zzcbz.this;
                if (z) {
                    zzcbzVar.zzb();
                    return;
                }
                int length = String.valueOf(i).length();
                StringBuilder sb = new StringBuilder(length + 58 + String.valueOf(str3).length() + 15 + String.valueOf(str4).length());
                sb.append("Image Web View failed to load. Error code: ");
                sb.append(i);
                sb.append(", Description: ");
                sb.append(str3);
                sb.append(", Failing URL: ");
                sb.append(str4);
                zzcbzVar.zzd(new zzekz(1, sb.toString()));
            }
        });
        zza.zzau(str, str2, null);
        return zza2;
    }

    final /* synthetic */ zzbhq zzi(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer zzo = zzo(jSONObject, InAppMessageBase.BG_COLOR);
        Integer zzo2 = zzo(jSONObject, InAppMessageBase.MESSAGE_TEXT_COLOR);
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzbhq(optString, list, zzo, zzo2, optInt > 0 ? Integer.valueOf(optInt) : null, jSONObject.optInt("presentation_ms", 4000) + optInt2, this.zzh.zze, optBoolean);
    }

    final /* synthetic */ ListenableFuture zzj(String str, zzbzt zzbztVar, com.google.android.gms.ads.internal.zzb zzbVar, Object obj) {
        com.google.android.gms.ads.internal.zzt.zzd();
        Context context = this.zza;
        zzegj zzegjVar = this.zzp;
        zzcgy zza = zzcho.zza(context, zzcji.zzb(), "native-omid", false, false, this.zzc, null, this.zzd, null, null, this.zze, this.zzf, null, null, zzegjVar, this.zzq, this.zzm);
        final zzcbz zza2 = zzcbz.zza(zza);
        zza.zzP().zzG(new zzciu() { // from class: com.google.android.gms.internal.ads.zzdov
            @Override // com.google.android.gms.internal.ads.zzciu
            public final /* synthetic */ void zza(boolean z, int i, String str2, String str3) {
                zzcbz.this.zzb();
            }
        });
        zza.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", ReactNativeBlobUtilConst.RNFB_RESPONSE_BASE64);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoB)).booleanValue()) {
            if (zzbztVar != null) {
                zza.zzP().zzj(zzbztVar);
            }
            zza.zzP().zzi(zzbVar);
        }
        return zza2;
    }

    private final com.google.android.gms.ads.internal.client.zzr zzs(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return com.google.android.gms.ads.internal.client.zzr.zzb();
            }
            i = 0;
        }
        return new com.google.android.gms.ads.internal.client.zzr(this.zza, new AdSize(i, i2));
    }
}
