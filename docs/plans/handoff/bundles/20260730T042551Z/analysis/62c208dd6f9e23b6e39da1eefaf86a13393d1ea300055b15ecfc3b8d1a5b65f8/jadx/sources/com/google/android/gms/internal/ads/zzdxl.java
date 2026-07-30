package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdxl {
    private static final Pattern zza = Pattern.compile("\\?");
    private final zzcgx zzb;
    private final Context zzc;
    private final VersionInfoParcel zzd;
    private final zzfcj zze;
    private final Executor zzf;
    private final ScheduledExecutorService zzg;
    private final String zzh;
    private final zzfhh zzi;
    private final zzdrq zzj;
    private final Object zzk = new Object();
    private final zzbvs zzl;

    public zzdxl(zzcgx zzcgxVar, Context context, VersionInfoParcel versionInfoParcel, zzfcj zzfcjVar, Executor executor, String str, zzfhh zzfhhVar, zzdrq zzdrqVar, zzbvs zzbvsVar, zzdzq zzdzqVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzb = zzcgxVar;
        this.zzc = context;
        this.zzd = versionInfoParcel;
        this.zze = zzfcjVar;
        this.zzf = executor;
        this.zzh = str;
        this.zzi = zzfhhVar;
        zzcgxVar.zzx();
        this.zzj = zzdrqVar;
        this.zzl = zzbvsVar;
        this.zzg = scheduledExecutorService;
    }

    private final InterfaceFutureC3942wq zzd(String str, final String str2) {
        String str3;
        InterfaceFutureC3942wq zzh;
        String str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (TextUtils.isEmpty(str)) {
            return zzgch.zzg(new zzegu(15, "Invalid ad string."));
        }
        zzfgw zza2 = zzfgv.zza(this.zzc, 11);
        zza2.zzi();
        zzbog zza3 = com.google.android.gms.ads.internal.zzv.zzg().zza(this.zzc, this.zzd, this.zzb.zzz());
        zzboa zzboaVar = zzbod.zza;
        final zzbnw zza4 = zza3.zza("google.afma.response.normalize", zzboaVar, zzboaVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgS)).booleanValue()) {
            try {
                str3 = new JSONObject(str).optString("fetch_url", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            } catch (JSONException unused) {
                str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (TextUtils.isEmpty(str3)) {
                zzh = zzgch.zzh(str);
                this.zzj.zzc("sst", AppEventsConstants.EVENT_PARAM_VALUE_YES);
            } else {
                this.zzj.zzc("sst", "2");
                String str5 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgU);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgT)).booleanValue()) {
                    List zzf = zzfvc.zzc(zza).zzf(str3);
                    if (zzf.size() < 2) {
                        zzh = zzgch.zzg(new zzegu(1, "Invalid fetch URL."));
                    } else {
                        str4 = (String) zzf.get(1);
                        com.google.android.gms.ads.internal.zzv.zzq();
                        str3 = Uri.parse(str3).buildUpon().query(null).build().toString();
                    }
                }
                final zzdzn zzdznVar = new zzdzn(str3, 60000, new HashMap(), str4.getBytes(StandardCharsets.UTF_8), str5, false);
                zzh = (zzgby) zzgch.zzf((zzgby) zzgch.zzo(zzgby.zzu(zzbzw.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxj
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzdxl.this.zzc(zzdznVar);
                    }
                })), ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgV)).intValue(), TimeUnit.MILLISECONDS, this.zzg), Exception.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdxk
                    @Override // com.google.android.gms.internal.ads.zzgbo
                    public final InterfaceFutureC3942wq zza(Object obj) {
                        zzegu zzeguVar;
                        Exception exc = (Exception) obj;
                        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "PreloadedLoader.getTypeTwoAdResponseString");
                        if (exc instanceof TimeoutException) {
                            zzeguVar = new zzegu(1, "Timed out waiting for ad response.");
                        } else if (exc instanceof zzegu) {
                            zzeguVar = (zzegu) exc;
                        } else {
                            zzeguVar = new zzegu(1, exc.getMessage() == null ? "Fetch failed." : exc.getMessage());
                        }
                        return zzgch.zzg(zzeguVar);
                    }
                }, this.zzf);
            }
        } else {
            zzh = zzgch.zzh(str);
            this.zzj.zzc("sst", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        InterfaceFutureC3942wq zzn = zzgch.zzn(zzgch.zzn(zzgch.zzn(zzh, new zzgbo(this) { // from class: com.google.android.gms.internal.ads.zzdxg
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                String str6 = (String) obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                String str7 = str2;
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put("body", str6);
                    jSONObject2.put("base_url", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    jSONObject2.put("signals", new JSONObject(str7));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return zzgch.zzh(jSONObject);
                } catch (JSONException e) {
                    throw new JSONException("Preloaded loader: ".concat(String.valueOf(e.getCause())));
                }
            }
        }, this.zzf), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdxh
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzbnw.this.zzb((JSONObject) obj);
            }
        }, this.zzf), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdxi
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdxl.this.zzb((JSONObject) obj);
            }
        }, this.zzf);
        zzfhg.zza(zzn, this.zzi, zza2);
        return zzn;
    }

    private final String zze(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzh));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to update the ad types for rendering. ".concat(e.toString()));
            return str;
        }
    }

    private final void zzf(zzdre zzdreVar) {
        Bundle zza2 = this.zzj.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgX)).booleanValue()) {
            V1.m2496class(zza2, zzdreVar.zza());
        }
    }

    private static final String zzg(String str) {
        try {
            return new JSONObject(str).optString("request_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        } catch (JSONException unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x01be, code lost:
    
        if (r5.zzg(r1, r2, r4) == false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0096 A[Catch: all -> 0x01d4, TryCatch #1 {, blocks: (B:19:0x0051, B:21:0x006f, B:24:0x0077, B:26:0x008a, B:27:0x008f, B:30:0x0096, B:32:0x009e, B:33:0x00a4, B:37:0x00ad, B:40:0x00e3, B:43:0x00bf, B:46:0x00cc, B:48:0x00e9, B:51:0x008d, B:53:0x00ff, B:56:0x0118, B:60:0x0120, B:62:0x0144, B:64:0x0159, B:66:0x017c, B:67:0x0191, B:70:0x01a5, B:72:0x01ab, B:73:0x01b8, B:75:0x01ba, B:77:0x01c3, B:82:0x01c0, B:83:0x0186, B:84:0x016c, B:87:0x012e, B:90:0x0108, B:91:0x010d), top: B:18:0x0051, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017c A[Catch: all -> 0x01d4, TryCatch #1 {, blocks: (B:19:0x0051, B:21:0x006f, B:24:0x0077, B:26:0x008a, B:27:0x008f, B:30:0x0096, B:32:0x009e, B:33:0x00a4, B:37:0x00ad, B:40:0x00e3, B:43:0x00bf, B:46:0x00cc, B:48:0x00e9, B:51:0x008d, B:53:0x00ff, B:56:0x0118, B:60:0x0120, B:62:0x0144, B:64:0x0159, B:66:0x017c, B:67:0x0191, B:70:0x01a5, B:72:0x01ab, B:73:0x01b8, B:75:0x01ba, B:77:0x01c3, B:82:0x01c0, B:83:0x0186, B:84:0x016c, B:87:0x012e, B:90:0x0108, B:91:0x010d), top: B:18:0x0051, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ab A[Catch: all -> 0x01d4, TryCatch #1 {, blocks: (B:19:0x0051, B:21:0x006f, B:24:0x0077, B:26:0x008a, B:27:0x008f, B:30:0x0096, B:32:0x009e, B:33:0x00a4, B:37:0x00ad, B:40:0x00e3, B:43:0x00bf, B:46:0x00cc, B:48:0x00e9, B:51:0x008d, B:53:0x00ff, B:56:0x0118, B:60:0x0120, B:62:0x0144, B:64:0x0159, B:66:0x017c, B:67:0x0191, B:70:0x01a5, B:72:0x01ab, B:73:0x01b8, B:75:0x01ba, B:77:0x01c3, B:82:0x01c0, B:83:0x0186, B:84:0x016c, B:87:0x012e, B:90:0x0108, B:91:0x010d), top: B:18:0x0051, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ba A[Catch: all -> 0x01d4, TryCatch #1 {, blocks: (B:19:0x0051, B:21:0x006f, B:24:0x0077, B:26:0x008a, B:27:0x008f, B:30:0x0096, B:32:0x009e, B:33:0x00a4, B:37:0x00ad, B:40:0x00e3, B:43:0x00bf, B:46:0x00cc, B:48:0x00e9, B:51:0x008d, B:53:0x00ff, B:56:0x0118, B:60:0x0120, B:62:0x0144, B:64:0x0159, B:66:0x017c, B:67:0x0191, B:70:0x01a5, B:72:0x01ab, B:73:0x01b8, B:75:0x01ba, B:77:0x01c3, B:82:0x01c0, B:83:0x0186, B:84:0x016c, B:87:0x012e, B:90:0x0108, B:91:0x010d), top: B:18:0x0051, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0186 A[Catch: all -> 0x01d4, TryCatch #1 {, blocks: (B:19:0x0051, B:21:0x006f, B:24:0x0077, B:26:0x008a, B:27:0x008f, B:30:0x0096, B:32:0x009e, B:33:0x00a4, B:37:0x00ad, B:40:0x00e3, B:43:0x00bf, B:46:0x00cc, B:48:0x00e9, B:51:0x008d, B:53:0x00ff, B:56:0x0118, B:60:0x0120, B:62:0x0144, B:64:0x0159, B:66:0x017c, B:67:0x0191, B:70:0x01a5, B:72:0x01ab, B:73:0x01b8, B:75:0x01ba, B:77:0x01c3, B:82:0x01c0, B:83:0x0186, B:84:0x016c, B:87:0x012e, B:90:0x0108, B:91:0x010d), top: B:18:0x0051, inners: #0, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.InterfaceFutureC3942wq zza() {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxl.zza():wq");
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzb(JSONObject jSONObject) {
        return zzgch.zzh(new zzfca(new zzfbx(this.zze), zzfbz.zza(new StringReader(jSONObject.toString()), null)));
    }

    public final /* synthetic */ String zzc(zzdzn zzdznVar) {
        zzf(zzdre.RENDERING_ADSTRING_TYPE2_FETCH_START);
        int i = 0;
        int i2 = -1;
        while (true) {
            try {
                if (i >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgW)).intValue()) {
                    throw new zzegu(1, "Received HTTP error code from ad server: " + i2);
                }
                zzdzo zza2 = new zzdzp(this.zzc, this.zzd.afmaVersion, this.zzl, Binder.getCallingUid()).zza(zzdznVar);
                int i3 = zza2.zza;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgX)).booleanValue()) {
                    this.zzj.zzc("fr", String.valueOf(i));
                }
                if (i3 == 200) {
                    zzf(zzdre.RENDERING_ADSTRING_TYPE2_FETCH_END);
                    return zza2.zzc;
                }
                i++;
                i2 = i3;
            } catch (Exception e) {
                throw new zzegu(1, e.getMessage() == null ? "Fetch failed." : e.getMessage(), e);
            }
        }
    }
}
