package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import io.sentry.ProfilingTraceData;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzebk {
    private static final Pattern zza = Pattern.compile("\\?");
    private final zzcjn zzb;
    private final Context zzc;
    private final VersionInfoParcel zzd;
    private final zzfgn zze;
    private final Executor zzf;
    private final ScheduledExecutorService zzg;
    private final String zzh;
    private final zzflm zzi;
    private final zzdvc zzj;
    private final zzfng zzk;
    private final zzdbs zzl;
    private final Object zzm = new Object();
    private String zzn;
    private List zzo;
    private Bundle zzp;
    private final zzbxr zzq;

    zzebk(zzcjn zzcjnVar, Context context, VersionInfoParcel versionInfoParcel, zzfgn zzfgnVar, Executor executor, String str, zzflm zzflmVar, zzdvc zzdvcVar, zzbxr zzbxrVar, zzeef zzeefVar, ScheduledExecutorService scheduledExecutorService, zzfng zzfngVar, zzdbs zzdbsVar) {
        this.zzb = zzcjnVar;
        this.zzc = context;
        this.zzd = versionInfoParcel;
        this.zze = zzfgnVar;
        this.zzf = executor;
        this.zzh = str;
        this.zzi = zzflmVar;
        zzcjnVar.zzB();
        this.zzj = zzdvcVar;
        this.zzq = zzbxrVar;
        this.zzg = scheduledExecutorService;
        this.zzk = zzfngVar;
        this.zzl = zzdbsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.common.util.concurrent.ListenableFuture zzg(java.lang.String r18, final java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebk.zzg(java.lang.String, java.lang.String):com.google.common.util.concurrent.ListenableFuture");
    }

    private final void zzh(zzduq zzduqVar) {
        Bundle zze = this.zzj.zze();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhK)).booleanValue()) {
            zze.putLong(zzduqVar.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
    }

    private final String zzi(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzh));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            String concat = "Failed to update the ad types for rendering. ".concat(e.toString());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
            return str;
        }
    }

    private static final String zzj(String str) {
        try {
            return new JSONObject(str).optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, "");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0234, code lost:
    
        if (r5.zze(r1, r2, r4) == false) goto L87;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01f2 A[Catch: all -> 0x024a, TryCatch #3 {, blocks: (B:22:0x0080, B:24:0x009e, B:27:0x00a6, B:29:0x00b3, B:31:0x00cd, B:32:0x00fa, B:34:0x0106, B:36:0x010e, B:37:0x0114, B:41:0x011d, B:44:0x0153, B:47:0x0131, B:50:0x013e, B:52:0x015b, B:55:0x00e4, B:57:0x016f, B:60:0x018c, B:64:0x0194, B:66:0x01b9, B:68:0x01ce, B:70:0x01f2, B:71:0x0207, B:74:0x021b, B:76:0x0221, B:77:0x022e, B:79:0x0230, B:81:0x0239, B:86:0x0236, B:87:0x01fc, B:88:0x01e1, B:91:0x01a2, B:94:0x017c, B:95:0x0181), top: B:21:0x0080, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0221 A[Catch: all -> 0x024a, TryCatch #3 {, blocks: (B:22:0x0080, B:24:0x009e, B:27:0x00a6, B:29:0x00b3, B:31:0x00cd, B:32:0x00fa, B:34:0x0106, B:36:0x010e, B:37:0x0114, B:41:0x011d, B:44:0x0153, B:47:0x0131, B:50:0x013e, B:52:0x015b, B:55:0x00e4, B:57:0x016f, B:60:0x018c, B:64:0x0194, B:66:0x01b9, B:68:0x01ce, B:70:0x01f2, B:71:0x0207, B:74:0x021b, B:76:0x0221, B:77:0x022e, B:79:0x0230, B:81:0x0239, B:86:0x0236, B:87:0x01fc, B:88:0x01e1, B:91:0x01a2, B:94:0x017c, B:95:0x0181), top: B:21:0x0080, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0230 A[Catch: all -> 0x024a, TryCatch #3 {, blocks: (B:22:0x0080, B:24:0x009e, B:27:0x00a6, B:29:0x00b3, B:31:0x00cd, B:32:0x00fa, B:34:0x0106, B:36:0x010e, B:37:0x0114, B:41:0x011d, B:44:0x0153, B:47:0x0131, B:50:0x013e, B:52:0x015b, B:55:0x00e4, B:57:0x016f, B:60:0x018c, B:64:0x0194, B:66:0x01b9, B:68:0x01ce, B:70:0x01f2, B:71:0x0207, B:74:0x021b, B:76:0x0221, B:77:0x022e, B:79:0x0230, B:81:0x0239, B:86:0x0236, B:87:0x01fc, B:88:0x01e1, B:91:0x01a2, B:94:0x017c, B:95:0x0181), top: B:21:0x0080, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01fc A[Catch: all -> 0x024a, TryCatch #3 {, blocks: (B:22:0x0080, B:24:0x009e, B:27:0x00a6, B:29:0x00b3, B:31:0x00cd, B:32:0x00fa, B:34:0x0106, B:36:0x010e, B:37:0x0114, B:41:0x011d, B:44:0x0153, B:47:0x0131, B:50:0x013e, B:52:0x015b, B:55:0x00e4, B:57:0x016f, B:60:0x018c, B:64:0x0194, B:66:0x01b9, B:68:0x01ce, B:70:0x01f2, B:71:0x0207, B:74:0x021b, B:76:0x0221, B:77:0x022e, B:79:0x0230, B:81:0x0239, B:86:0x0236, B:87:0x01fc, B:88:0x01e1, B:91:0x01a2, B:94:0x017c, B:95:0x0181), top: B:21:0x0080, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture zza() {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebk.zza():com.google.common.util.concurrent.ListenableFuture");
    }

    final /* synthetic */ ListenableFuture zzb(zzbqf zzbqfVar, JSONObject jSONObject) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcx)).booleanValue()) {
            this.zzj.zze().putLong(zzduq.SCAR_PRELOADER_PROCESSING_DONE.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        return zzbqfVar.zzb(jSONObject);
    }

    final /* synthetic */ ListenableFuture zzc(JSONObject jSONObject) {
        zzfgc zzfgcVar = new zzfgc(this.zze);
        String jSONObject2 = jSONObject.toString();
        return zzgui.zza(new zzfgf(zzfgcVar, zzfge.zza(new StringReader(jSONObject2), this.zzp)));
    }

    final /* synthetic */ String zzd(zzeec zzeecVar) {
        zzh(zzduq.RENDERING_ADSTRING_TYPE2_FETCH_START);
        int i = 0;
        int i2 = -1;
        while (true) {
            try {
                if (i >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhJ)).intValue()) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 40);
                    sb.append("Received HTTP error code from ad server:");
                    sb.append(i2);
                    throw new zzekz(1, sb.toString());
                }
                zzeec zzeecVar2 = zzeecVar;
                zzeed zza2 = new zzeee(this.zzc, this.zzd.afmaVersion, this.zzq, Binder.getCallingUid(), null).zza(zzeecVar);
                zzeed zzeedVar = zza2;
                int i3 = zza2.zza;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhK)).booleanValue()) {
                    this.zzj.zzd("fr", String.valueOf(i));
                }
                if (i3 == 200) {
                    zzh(zzduq.RENDERING_ADSTRING_TYPE2_FETCH_END);
                    return zza2.zzc;
                }
                i++;
                i2 = i3;
            } catch (Exception e) {
                throw new zzekz(1, e.getMessage() == null ? "Fetch failed." : e.getMessage(), e);
            }
        }
    }

    final /* synthetic */ ListenableFuture zze(List list, Exception exc) {
        zzekz zzekzVar;
        com.google.android.gms.ads.internal.zzt.zzh().zzh(exc, "PreloadedLoader.getTypeTwoAdResponseString");
        if (exc instanceof TimeoutException) {
            zzekzVar = new zzekz(1, "Timed out waiting for ad response.");
        } else if (exc instanceof zzekz) {
            zzekzVar = (zzekz) exc;
        } else {
            zzekzVar = new zzekz(1, exc.getMessage() == null ? "Fetch failed." : exc.getMessage());
        }
        String message = zzekzVar.getMessage() == null ? "" : zzekzVar.getMessage();
        if (list != null && !list.isEmpty()) {
            String str = "0.6.0.0";
            if (!TextUtils.isEmpty(message)) {
                if (message.contains("Timed out waiting for ad response.")) {
                    message = ProfilingTraceData.TRUNCATION_REASON_TIMEOUT;
                    str = "0.2.0.0";
                } else if (message.contains("Received HTTP error code from ad server:")) {
                    List zze = zzgms.zza(zzglr.zzc(AbstractJsonLexerKt.COLON)).zze(message);
                    if (zze.size() == 2) {
                        message = (String) zze.get(1);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zzfnc.zzd(zzfnc.zzd((String) it.next(), "@gw_adnetstatus@", str), "@error_code@", message));
            }
            this.zzk.zza(arrayList, null);
        }
        return zzgui.zzc(zzekzVar);
    }

    final /* synthetic */ zzdbs zzf() {
        return this.zzl;
    }
}
