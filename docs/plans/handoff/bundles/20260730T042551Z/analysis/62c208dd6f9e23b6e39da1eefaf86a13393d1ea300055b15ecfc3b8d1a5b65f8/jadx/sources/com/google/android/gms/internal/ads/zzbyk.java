package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import defpackage.Creturn;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbyk {
    public static Uri zza(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i = indexOf + 1;
        StringBuilder sb = new StringBuilder(str.substring(0, i));
        Creturn.m7980goto(sb, str2, "=", str3, "&");
        sb.append(str.substring(i));
        return Uri.parse(sb.toString());
    }

    public static String zzb(Uri uri, Context context, Map map) {
        if (!com.google.android.gms.ads.internal.zzv.zzo().zzp(context)) {
            return uri.toString();
        }
        String zza = com.google.android.gms.ads.internal.zzv.zzo().zza(context);
        if (zza == null) {
            return uri.toString();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzas);
        String uri2 = uri.toString();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzar)).booleanValue() && uri2.contains(str)) {
            com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zza, (Map) map.get("_ac"));
            return zzd(uri2, context).replace(str, zza);
        }
        if (!TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            return uri2;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaq)).booleanValue()) {
            return uri2;
        }
        String uri3 = zza(zzd(uri2, context), "fbs_aeid", zza).toString();
        com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zza, (Map) map.get("_ac"));
        return uri3;
    }

    public static String zzc(String str, Context context, boolean z, Map map) {
        String zza;
        if ((((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaz)).booleanValue() && !z) || !com.google.android.gms.ads.internal.zzv.zzo().zzp(context) || TextUtils.isEmpty(str) || (zza = com.google.android.gms.ads.internal.zzv.zzo().zza(context)) == null) {
            return str;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzas);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzar)).booleanValue() && str.contains(str2)) {
            if (com.google.android.gms.ads.internal.zzv.zzq().zzj(str)) {
                com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zza, (Map) map.get("_ac"));
                return zzd(str, context).replace(str2, zza);
            }
            if (!com.google.android.gms.ads.internal.zzv.zzq().zzk(str)) {
                return str;
            }
            com.google.android.gms.ads.internal.zzv.zzo().zzk(context, zza, (Map) map.get("_ai"));
            return zzd(str, context).replace(str2, zza);
        }
        if (str.contains("fbs_aeid")) {
            return str;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaq)).booleanValue()) {
            return str;
        }
        if (com.google.android.gms.ads.internal.zzv.zzq().zzj(str)) {
            com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zza, (Map) map.get("_ac"));
            return zza(zzd(str, context), "fbs_aeid", zza).toString();
        }
        if (!com.google.android.gms.ads.internal.zzv.zzq().zzk(str)) {
            return str;
        }
        com.google.android.gms.ads.internal.zzv.zzo().zzk(context, zza, (Map) map.get("_ai"));
        return zza(zzd(str, context), "fbs_aeid", zza).toString();
    }

    private static String zzd(String str, Context context) {
        String zzd = com.google.android.gms.ads.internal.zzv.zzo().zzd(context);
        String zzb = com.google.android.gms.ads.internal.zzv.zzo().zzb(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(zzd)) {
            str = zza(str, "gmp_app_id", zzd).toString();
        }
        return (str.contains("fbs_aiid") || TextUtils.isEmpty(zzb)) ? str : zza(str, "fbs_aiid", zzb).toString();
    }
}
