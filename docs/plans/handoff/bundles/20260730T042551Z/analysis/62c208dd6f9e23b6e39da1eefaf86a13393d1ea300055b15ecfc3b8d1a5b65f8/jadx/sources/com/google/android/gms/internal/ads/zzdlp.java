package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.wearable.WearableStatusCodes;
import defpackage.InterfaceFutureC3942wq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdlp {
    private final Context zza;
    private final zzdkt zzb;
    private final zzava zzc;
    private final VersionInfoParcel zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzbbj zzf;
    private final Executor zzg;
    private final zzbfl zzh;
    private final zzdmh zzi;
    private final zzdow zzj;
    private final ScheduledExecutorService zzk;
    private final zzdnr zzl;
    private final zzdrw zzm;
    private final zzfja zzn;
    private final zzebk zzo;
    private final zzebv zzp;
    private final zzfcn zzq;

    public zzdlp(Context context, zzdkt zzdktVar, zzava zzavaVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzbbj zzbbjVar, Executor executor, zzfcj zzfcjVar, zzdmh zzdmhVar, zzdow zzdowVar, ScheduledExecutorService scheduledExecutorService, zzdrw zzdrwVar, zzfja zzfjaVar, zzebk zzebkVar, zzdnr zzdnrVar, zzebv zzebvVar, zzfcn zzfcnVar) {
        this.zza = context;
        this.zzb = zzdktVar;
        this.zzc = zzavaVar;
        this.zzd = versionInfoParcel;
        this.zze = zzaVar;
        this.zzf = zzbbjVar;
        this.zzg = executor;
        this.zzh = zzfcjVar.zzi;
        this.zzi = zzdmhVar;
        this.zzj = zzdowVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzdrwVar;
        this.zzn = zzfjaVar;
        this.zzo = zzebkVar;
        this.zzl = zzdnrVar;
        this.zzp = zzebvVar;
        this.zzq = zzfcnVar;
    }

    public static final com.google.android.gms.ads.internal.client.zzez zzi(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return zzr(optJSONObject);
    }

    public static final List zzj(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return zzfxn.zzn();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzfxn.zzn();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            com.google.android.gms.ads.internal.client.zzez zzr = zzr(optJSONArray.optJSONObject(i));
            if (zzr != null) {
                arrayList.add(zzr);
            }
        }
        return zzfxn.zzl(arrayList);
    }

    private final com.google.android.gms.ads.internal.client.zzs zzk(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return com.google.android.gms.ads.internal.client.zzs.zzc();
            }
            i = 0;
        }
        return new com.google.android.gms.ads.internal.client.zzs(this.zza, new AdSize(i, i2));
    }

    private static InterfaceFutureC3942wq zzl(InterfaceFutureC3942wq interfaceFutureC3942wq, Object obj) {
        final Object obj2 = null;
        return zzgch.zzf(interfaceFutureC3942wq, Exception.class, new zzgbo(obj2) { // from class: com.google.android.gms.internal.ads.zzdlk
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj3) {
                com.google.android.gms.ads.internal.util.zze.zzb("Error during loading assets.", (Exception) obj3);
                return zzgch.zzh(null);
            }
        }, zzbzw.zzg);
    }

    private static InterfaceFutureC3942wq zzm(boolean z, final InterfaceFutureC3942wq interfaceFutureC3942wq, Object obj) {
        return z ? zzgch.zzn(interfaceFutureC3942wq, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdll
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj2) {
                return obj2 != null ? InterfaceFutureC3942wq.this : zzgch.zzg(new zzegu(1, "Retrieve required value in native ad response failed."));
            }
        }, zzbzw.zzg) : zzl(interfaceFutureC3942wq, null);
    }

    private final InterfaceFutureC3942wq zzn(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzgch.zzh(null);
        }
        final String optString = jSONObject.optString("url");
        if (TextUtils.isEmpty(optString)) {
            return zzgch.zzh(null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, -1);
        final int optInt2 = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, -1);
        if (z) {
            return zzgch.zzh(new zzbfj(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zzm(jSONObject.optBoolean("require"), zzgch.zzm(this.zzb.zzb(optString, optDouble, optBoolean), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzdld
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return new zzbfj(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(optString), optDouble, optInt, optInt2);
            }
        }, this.zzg), null);
    }

    private final InterfaceFutureC3942wq zzo(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzgch.zzh(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(zzn(jSONArray.optJSONObject(i), z));
        }
        return zzgch.zzm(zzgch.zzd(arrayList), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzdli
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzbfj zzbfjVar : (List) obj) {
                    if (zzbfjVar != null) {
                        arrayList2.add(zzbfjVar);
                    }
                }
                return arrayList2;
            }
        }, this.zzg);
    }

    private final InterfaceFutureC3942wq zzp(JSONObject jSONObject, zzfbo zzfboVar, zzfbr zzfbrVar) {
        final InterfaceFutureC3942wq zzb = this.zzi.zzb(jSONObject.optString("base_url"), jSONObject.optString("html"), zzfboVar, zzfbrVar, zzk(jSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, 0), jSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 0)));
        return zzgch.zzn(zzb, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdlf
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                zzcex zzcexVar = (zzcex) obj;
                if (zzcexVar == null || zzcexVar.zzq() == null) {
                    throw new zzegu(1, "Retrieve video view in html5 ad response failed.");
                }
                return InterfaceFutureC3942wq.this;
            }
        }, zzbzw.zzg);
    }

    private static Integer zzq(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    private static final com.google.android.gms.ads.internal.client.zzez zzr(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("reason");
        String optString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return new com.google.android.gms.ads.internal.client.zzez(optString, optString2);
    }

    public final /* synthetic */ zzbfg zza(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString(ViewHierarchyConstants.TEXT_KEY);
        Integer zzq = zzq(jSONObject, "bg_color");
        Integer zzq2 = zzq(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzbfg(optString, list, zzq, zzq2, optInt > 0 ? Integer.valueOf(optInt) : null, jSONObject.optInt("presentation_ms", WearableStatusCodes.TARGET_NODE_NOT_CONNECTED) + optInt2, this.zzh.zze, optBoolean);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzb(com.google.android.gms.ads.internal.client.zzs zzsVar, zzfbo zzfboVar, zzfbr zzfbrVar, String str, String str2, Object obj) {
        zzcex zza = this.zzj.zza(zzsVar, zzfboVar, zzfbrVar);
        final zzcaa zza2 = zzcaa.zza(zza);
        zzdno zzb = this.zzl.zzb();
        zza.zzN().zzV(zzb, zzb, zzb, zzb, zzb, false, null, new com.google.android.gms.ads.internal.zzb(this.zza, null, null), null, null, this.zzo, this.zzn, this.zzm, null, zzb, null, null, null, null);
        zza.zzag("/getNativeAdViewSignals", zzbjo.zzs);
        zza.zzag("/getNativeClickMeta", zzbjo.zzt);
        zza.zzN().zzF(true);
        zza.zzN().zzC(new zzcgn() { // from class: com.google.android.gms.internal.ads.zzdlm
            @Override // com.google.android.gms.internal.ads.zzcgn
            public final void zza(boolean z, int i, String str3, String str4) {
                zzcaa zzcaaVar = zzcaa.this;
                if (z) {
                    zzcaaVar.zzb();
                    return;
                }
                zzcaaVar.zzd(new zzegu(1, "Image Web View failed to load. Error code: " + i + ", Description: " + str3 + ", Failing URL: " + str4));
            }
        });
        zza.zzae(str, str2, null);
        return zza2;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(String str, Object obj) {
        com.google.android.gms.ads.internal.zzv.zzA();
        zzcex zza = zzcfk.zza(this.zza, zzcgr.zza(), "native-omid", false, false, this.zzc, null, this.zzd, null, null, this.zze, this.zzf, null, null, this.zzp, this.zzq);
        final zzcaa zza2 = zzcaa.zza(zza);
        zza.zzN().zzC(new zzcgn() { // from class: com.google.android.gms.internal.ads.zzdlc
            @Override // com.google.android.gms.internal.ads.zzcgn
            public final void zza(boolean z, int i, String str2, String str3) {
                zzcaa.this.zzb();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfi)).booleanValue()) {
            zza.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        } else {
            zza.loadData(str, "text/html", "UTF-8");
        }
        return zza2;
    }

    public final InterfaceFutureC3942wq zzd(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return zzgch.zzh(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return zzm(optJSONObject.optBoolean("require"), zzgch.zzm(zzo(optJSONArray, false, true), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzdlj
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return zzdlp.this.zza(optJSONObject, (List) obj);
            }
        }, this.zzg), null);
    }

    public final InterfaceFutureC3942wq zze(JSONObject jSONObject, String str) {
        return zzn(jSONObject.optJSONObject(str), this.zzh.zzb);
    }

    public final InterfaceFutureC3942wq zzf(JSONObject jSONObject, String str) {
        zzbfl zzbflVar = this.zzh;
        return zzo(jSONObject.optJSONArray("images"), zzbflVar.zzb, zzbflVar.zzd);
    }

    public final InterfaceFutureC3942wq zzg(JSONObject jSONObject, String str, final zzfbo zzfboVar, final zzfbr zzfbrVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjS)).booleanValue()) {
            return zzgch.zzh(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return zzgch.zzh(null);
        }
        JSONObject optJSONObject = optJSONArray.optJSONObject(0);
        if (optJSONObject == null) {
            return zzgch.zzh(null);
        }
        final String optString = optJSONObject.optString("base_url");
        final String optString2 = optJSONObject.optString("html");
        final com.google.android.gms.ads.internal.client.zzs zzk = zzk(optJSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, 0), optJSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 0));
        if (TextUtils.isEmpty(optString2)) {
            return zzgch.zzh(null);
        }
        final InterfaceFutureC3942wq zzn = zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdlg
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdlp.this.zzb(zzk, zzfboVar, zzfbrVar, optString, optString2, obj);
            }
        }, zzbzw.zzf);
        return zzgch.zzn(zzn, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdlh
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                if (((zzcex) obj) != null) {
                    return InterfaceFutureC3942wq.this;
                }
                throw new zzegu(1, "Retrieve Web View from image ad response failed.");
            }
        }, zzbzw.zzg);
    }

    public final InterfaceFutureC3942wq zzh(JSONObject jSONObject, zzfbo zzfboVar, zzfbr zzfbrVar) {
        InterfaceFutureC3942wq zza;
        JSONObject zzh = com.google.android.gms.ads.internal.util.zzbs.zzh(jSONObject, "html_containers", "instream");
        if (zzh != null) {
            return zzp(zzh, zzfboVar, zzfbrVar);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        if (optJSONObject == null) {
            return zzgch.zzh(null);
        }
        String optString = optJSONObject.optString("vast_xml");
        boolean z = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjR)).booleanValue() && optJSONObject.has("html")) {
            z = true;
        }
        if (TextUtils.isEmpty(optString)) {
            if (!z) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Required field 'vast_xml' or 'html' is missing");
                return zzgch.zzh(null);
            }
        } else if (!z) {
            zza = this.zzi.zza(optJSONObject);
            return zzl(zzgch.zzo(zza, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdS)).intValue(), TimeUnit.SECONDS, this.zzk), null);
        }
        zza = zzp(optJSONObject, zzfboVar, zzfbrVar);
        return zzl(zzgch.zzo(zza, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdS)).intValue(), TimeUnit.SECONDS, this.zzk), null);
    }
}
