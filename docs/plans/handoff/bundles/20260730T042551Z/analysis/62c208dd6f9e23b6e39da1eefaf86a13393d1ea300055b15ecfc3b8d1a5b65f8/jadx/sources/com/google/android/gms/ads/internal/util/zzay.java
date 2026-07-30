package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzduu;
import com.google.android.gms.internal.ads.zzduv;
import defpackage.CP;
import defpackage.InterfaceFutureC3942wq;
import defpackage.KP;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzay {

    /* renamed from: do, reason: not valid java name */
    public zzduv f9761do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9762do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9763do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: if, reason: not valid java name */
    public String f9766if = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9764do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9767if = false;

    /* renamed from: for, reason: not valid java name */
    public String f9765for = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: do, reason: not valid java name */
    public static void m5565do(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzs.zza.post(new KP(context, str, z, z2));
        } else {
            zzo.zzi("Can not create dialog without Activity Context");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static final String m5566if(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzv.zzq().zzc(context, str2));
        InterfaceFutureC3942wq zzb = new zzbo(context).zzb(0, str, hashMap, null);
        try {
            return (String) zzb.get(((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeO)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzo.zzh("Interrupted while retrieving a response from: ".concat(String.valueOf(str)), e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            zzo.zzh("Timeout while retrieving a response from: ".concat(String.valueOf(str)), e2);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            zzo.zzh("Error retrieving a response from: ".concat(String.valueOf(str)), e3);
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final Uri m5567for(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.f9762do) {
            if (TextUtils.isEmpty(this.f9763do)) {
                com.google.android.gms.ads.internal.zzv.zzq();
                try {
                    str5 = new String(IOUtils.readInputStreamFully(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException unused) {
                    zzo.zze("Error reading from internal storage.");
                    str5 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                this.f9763do = str5;
                if (TextUtils.isEmpty(str5)) {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    this.f9763do = UUID.randomUUID().toString();
                    com.google.android.gms.ads.internal.zzv.zzq();
                    String str6 = this.f9763do;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e) {
                        zzo.zzh("Error writing to file in internal storage.", e);
                    }
                }
            }
            str4 = this.f9763do;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    public final zzduv zza() {
        return this.f9761do;
    }

    public final String zzb() {
        String str;
        synchronized (this.f9762do) {
            str = this.f9766if;
        }
        return str;
    }

    public final void zzc(Context context) {
        zzduv zzduvVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjc)).booleanValue() || (zzduvVar = this.f9761do) == null) {
            return;
        }
        zzduvVar.zzh(new CP(this, context), zzduu.DEBUG_MENU);
    }

    public final void zzd(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzU(context, m5567for(context, (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeK), str, str2));
    }

    public final void zze(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = m5567for(context, (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeN), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzM(context, str, buildUpon.build().toString());
    }

    public final void zzf(boolean z) {
        synchronized (this.f9762do) {
            this.f9767if = z;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjc)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzi().zzx(z);
                zzduv zzduvVar = this.f9761do;
                if (zzduvVar != null) {
                    zzduvVar.zzl(z);
                }
            }
        }
    }

    public final void zzg(zzduv zzduvVar) {
        this.f9761do = zzduvVar;
    }

    public final void zzh(boolean z) {
        synchronized (this.f9762do) {
            this.f9764do = z;
        }
    }

    public final boolean zzj(Context context, String str, String str2) {
        String m5566if = m5566if(context, m5567for(context, (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeM), str, str2).toString(), str2);
        if (TextUtils.isEmpty(m5566if)) {
            zzo.zze("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(new JSONObject(m5566if.trim()).optString("debug_mode"));
            zzf(equals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjc)).booleanValue()) {
                zzg zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                if (true != equals) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                zzi.zzw(str);
            }
            return equals;
        } catch (JSONException e) {
            zzo.zzk("Fail to get debug mode response json.", e);
            return false;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.f9762do) {
            z = this.f9767if;
        }
        return z;
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.f9762do) {
            z = this.f9764do;
        }
        return z;
    }

    public final boolean zzn(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzm()) {
            return false;
        }
        zzo.zze("Sending troubleshooting signals to the server.");
        zze(context, str, str2, str3);
        return true;
    }
}
