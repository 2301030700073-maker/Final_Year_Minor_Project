package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzbeu;
import com.google.android.gms.internal.ads.zzdyn;
import com.google.android.gms.internal.ads.zzdyo;
import com.google.common.net.HttpHeaders;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzax {
    private zzdyo zzg;
    private final Object zzb = new Object();
    private String zzc = "";
    private String zzd = "";
    private boolean zze = false;
    private boolean zzf = false;
    protected String zza = "";

    /* JADX WARN: Multi-variable type inference failed */
    protected static final String zzo(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(HttpHeaders.USER_AGENT, com.google.android.gms.ads.internal.zzt.zzc().zze(context, str2));
        ListenableFuture zzb = new zzbl(context).zzb(0, str, hashMap, null);
        try {
            return (String) zzb.get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfB)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String.valueOf(str);
            String valueOf = String.valueOf(str);
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Interrupted while retrieving a response from: ".concat(valueOf), e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String.valueOf(str);
            String valueOf2 = String.valueOf(str);
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Timeout while retrieving a response from: ".concat(valueOf2), e2);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String.valueOf(str);
            String valueOf3 = String.valueOf(str);
            int i3 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error retrieving a response from: ".concat(valueOf3), e3);
            return null;
        }
    }

    private final Uri zzp(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.zzb) {
            if (TextUtils.isEmpty(this.zzc)) {
                com.google.android.gms.ads.internal.zzt.zzc();
                try {
                    str5 = new String(IOUtils.readInputStreamFully(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException unused) {
                    int i = zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Error reading from internal storage.");
                    str5 = "";
                }
                this.zzc = str5;
                if (TextUtils.isEmpty(str5)) {
                    com.google.android.gms.ads.internal.zzt.zzc();
                    this.zzc = UUID.randomUUID().toString();
                    com.google.android.gms.ads.internal.zzt.zzc();
                    String str6 = this.zzc;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e) {
                        int i2 = zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error writing to file in internal storage.", e);
                    }
                }
            }
            str4 = this.zzc;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    public final void zza(zzdyo zzdyoVar) {
        this.zzg = zzdyoVar;
    }

    public final zzdyo zzb() {
        return this.zzg;
    }

    public final void zzc(Context context) {
        zzdyo zzdyoVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzki)).booleanValue() || (zzdyoVar = this.zzg) == null) {
            return;
        }
        zzdyoVar.zzo(new zzau(this, context), zzdyn.DEBUG_MENU);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean zzd(android.content.Context r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzbel r0 = com.google.android.gms.internal.ads.zzbeu.zzfy
            com.google.android.gms.internal.ads.zzbes r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.String r0 = (java.lang.String) r0
            android.net.Uri r0 = r3.zzp(r4, r0, r5, r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r4 = zzo(r4, r0, r6)
            boolean r6 = android.text.TextUtils.isEmpty(r4)
            r0 = 0
            if (r6 == 0) goto L27
            int r4 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r4 = "Not linked for in app preview."
            com.google.android.gms.ads.internal.util.client.zzo.zzd(r4)
            return r0
        L27:
            java.lang.String r4 = r4.trim()
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: org.json.JSONException -> L85
            r6.<init>(r4)     // Catch: org.json.JSONException -> L85
            java.lang.String r4 = "gct"
            java.lang.String r4 = r6.optString(r4)     // Catch: org.json.JSONException -> L85
            java.lang.String r1 = "status"
            java.lang.String r6 = r6.optString(r1)     // Catch: org.json.JSONException -> L85
            r3.zza = r6     // Catch: org.json.JSONException -> L85
            com.google.android.gms.internal.ads.zzbel r6 = com.google.android.gms.internal.ads.zzbeu.zzki     // Catch: org.json.JSONException -> L85
            com.google.android.gms.internal.ads.zzbes r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: org.json.JSONException -> L85
            java.lang.Object r6 = r1.zzd(r6)     // Catch: org.json.JSONException -> L85
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: org.json.JSONException -> L85
            boolean r6 = r6.booleanValue()     // Catch: org.json.JSONException -> L85
            r1 = 1
            if (r6 == 0) goto L7b
            java.lang.String r6 = "0"
            java.lang.String r2 = r3.zza     // Catch: org.json.JSONException -> L85
            boolean r6 = r6.equals(r2)     // Catch: org.json.JSONException -> L85
            if (r6 != 0) goto L68
            java.lang.String r6 = "2"
            java.lang.String r2 = r3.zza     // Catch: org.json.JSONException -> L85
            boolean r6 = r6.equals(r2)     // Catch: org.json.JSONException -> L85
            if (r6 == 0) goto L66
            goto L68
        L66:
            r6 = r0
            goto L69
        L68:
            r6 = r1
        L69:
            r3.zzj(r6)     // Catch: org.json.JSONException -> L85
            com.google.android.gms.internal.ads.zzcbj r2 = com.google.android.gms.ads.internal.zzt.zzh()     // Catch: org.json.JSONException -> L85
            com.google.android.gms.ads.internal.util.zzg r2 = r2.zzo()     // Catch: org.json.JSONException -> L85
            if (r6 != 0) goto L78
            java.lang.String r5 = ""
        L78:
            r2.zzM(r5)     // Catch: org.json.JSONException -> L85
        L7b:
            java.lang.Object r5 = r3.zzb
            monitor-enter(r5)
            r3.zzd = r4     // Catch: java.lang.Throwable -> L82
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L82
            return r1
        L82:
            r4 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L82
            throw r4
        L85:
            r4 = move-exception
            int r5 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r5 = "Fail to get in app preview response json."
            com.google.android.gms.ads.internal.util.client.zzo.zzj(r5, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzax.zzd(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    public final boolean zze(Context context, String str, String str2) {
        String zzo = zzo(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfz), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzo)) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(zzo.trim()).optString("debug_mode"));
            zzj(equals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzki)).booleanValue()) {
                zzg zzo2 = com.google.android.gms.ads.internal.zzt.zzh().zzo();
                if (true != equals) {
                    str = "";
                }
                zzo2.zzM(str);
            }
            return equals;
        } catch (JSONException e) {
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to get debug mode response json.", e);
            return false;
        }
    }

    public final void zzf(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzt.zzc();
        zzs.zzaa(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfx), str, str2));
    }

    public final boolean zzg(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzm()) {
            return false;
        }
        int i = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Sending troubleshooting signals to the server.");
        zzh(context, str, str2, str3);
        return true;
    }

    public final void zzh(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfA), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzt.zzc();
        zzs.zzP(context, str, buildUpon.build().toString());
    }

    public final String zzi() {
        String str;
        synchronized (this.zzb) {
            str = this.zzd;
        }
        return str;
    }

    public final void zzj(boolean z) {
        synchronized (this.zzb) {
            this.zzf = z;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzki)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().zzo().zzK(z);
                zzdyo zzdyoVar = this.zzg;
                if (zzdyoVar != null) {
                    zzdyoVar.zzb(z);
                }
            }
        }
    }

    public final boolean zzk() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzf;
        }
        return z;
    }

    public final void zzl(boolean z) {
        synchronized (this.zzb) {
            this.zze = z;
        }
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zze;
        }
        return z;
    }

    protected final void zzn(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzs.zza.post(new zzaw(this, context, str, z, z2));
        } else {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Can not create dialog without Activity Context");
        }
    }
}
