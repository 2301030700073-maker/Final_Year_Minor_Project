package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzdrw;

/* loaded from: classes.dex */
public final class zza {
    public static final boolean zza(Context context, Intent intent, zzac zzacVar, zzaa zzaaVar, boolean z, zzdrw zzdrwVar, String str) {
        int i;
        if (z) {
            try {
                i = com.google.android.gms.ads.internal.zzv.zzq().zzn(context, intent.getData());
                if (zzacVar != null) {
                    zzacVar.zzg();
                }
            } catch (ActivityNotFoundException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj(e.getMessage());
                i = 6;
            }
            if (zzaaVar != null) {
                zzaaVar.zzb(i);
            }
            return i == 5;
        }
        try {
            com.google.android.gms.ads.internal.util.zze.zza("Launching an intent: " + intent.toURI());
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzmU)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzX(context, intent, zzdrwVar, str);
            } else {
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzT(context, intent);
            }
            if (zzacVar != null) {
                zzacVar.zzg();
            }
            if (zzaaVar != null) {
                zzaaVar.zza(true);
            }
            return true;
        } catch (ActivityNotFoundException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj(e2.getMessage());
            if (zzaaVar != null) {
                zzaaVar.zza(false);
            }
            return false;
        }
    }

    public static final boolean zzb(Context context, zzc zzcVar, zzac zzacVar, zzaa zzaaVar, zzdrw zzdrwVar, String str) {
        int i = 0;
        if (zzcVar == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("No intent data for launcher overlay.");
            return false;
        }
        zzbcl.zza(context);
        Intent intent = zzcVar.zzh;
        if (intent != null) {
            return zza(context, intent, zzacVar, zzaaVar, zzcVar.zzj, zzdrwVar, str);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzcVar.zzb)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Open GMSG did not contain a URL.");
            return false;
        }
        if (TextUtils.isEmpty(zzcVar.zzc)) {
            intent2.setData(Uri.parse(zzcVar.zzb));
        } else {
            String str2 = zzcVar.zzb;
            intent2.setDataAndType(Uri.parse(str2), zzcVar.zzc);
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzcVar.zzd)) {
            intent2.setPackage(zzcVar.zzd);
        }
        if (!TextUtils.isEmpty(zzcVar.zze)) {
            String[] split = zzcVar.zze.split("/", 2);
            if (split.length < 2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse component name from open GMSG: ".concat(String.valueOf(zzcVar.zze)));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str3 = zzcVar.zzf;
        if (!TextUtils.isEmpty(str3)) {
            try {
                i = Integer.parseInt(str3);
            } catch (NumberFormatException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzeD)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzeC)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzp(context, intent2);
            }
        }
        return zza(context, intent2, zzacVar, zzaaVar, zzcVar.zzj, zzdrwVar, str);
    }
}
