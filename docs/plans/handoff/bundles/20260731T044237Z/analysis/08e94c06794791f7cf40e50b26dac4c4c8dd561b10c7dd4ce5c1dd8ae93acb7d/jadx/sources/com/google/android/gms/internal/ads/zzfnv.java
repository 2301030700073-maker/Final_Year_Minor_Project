package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.AdFormat;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Locale;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfnv {
    private final zzdvi zza;

    zzfnv(zzdvi zzdviVar, Context context) {
        this.zza = zzdviVar;
    }

    private final void zzq(String str, long j, String str2, String str3, AdFormat adFormat, int i, int i2, int i3, String str4) {
        zzdvh zza = this.zza.zza();
        zza.zzc("action", str);
        zza.zzc("pat", Long.toString(j));
        zza.zzc(FirebaseAnalytics.Param.AD_FORMAT, adFormat.name().toLowerCase(Locale.ENGLISH));
        zza.zzc("max_ads", Integer.toString(i));
        zza.zzc("cache_size", Integer.toString(i2));
        zza.zzc("pas", Integer.toString(i3));
        zza.zzc("pv", ExifInterface.GPS_MEASUREMENT_2D);
        zza.zzc("ad_unit_id", str3);
        zza.zzc("pid", str2);
        zza.zzd();
    }

    private final void zzr(String str, String str2, long j, int i, int i2, String str3, zzfoc zzfocVar, String str4) {
        zzdvh zza = this.zza.zza();
        zza.zzc(str2, Long.toString(j));
        if (zzfocVar != null) {
            zza.zzc("ad_unit_id", zzfocVar.zza());
            zza.zzc(FirebaseAnalytics.Param.AD_FORMAT, zzfocVar.zzb());
            zza.zzc("pid", zzfocVar.zzc());
        }
        zza.zzc("action", str);
        if (str3 != null) {
            zza.zzc("gqi", str3);
        }
        if (i >= 0) {
            zza.zzc("max_ads", Integer.toString(i));
        }
        if (i2 >= 0) {
            zza.zzc("cache_size", Integer.toString(i2));
        }
        zza.zzc("pv", str4);
        zza.zzd();
    }

    public final void zza(int i, long j, zzfoc zzfocVar, String str) {
        zzdvh zza = this.zza.zza();
        zza.zzc("action", "start_preload");
        zza.zzc("sp_ts", Long.toString(j));
        zza.zzc(FirebaseAnalytics.Param.AD_FORMAT, zzfocVar.zzb());
        zza.zzc("ad_unit_id", zzfocVar.zza());
        zza.zzc("pid", zzfocVar.zzc());
        zza.zzc("max_ads", Integer.toString(i));
        zza.zzc("pv", str);
        zza.zzd();
    }

    public final void zzb(Map map, long j, String str) {
        zzdvh zza = this.zza.zza();
        zza.zzc("action", "start_preload");
        zza.zzc("sp_ts", Long.toString(j));
        zza.zzc("pv", "1");
        for (AdFormat adFormat : map.keySet()) {
            String lowerCase = adFormat.name().toLowerCase(Locale.ENGLISH);
            String.valueOf(lowerCase);
            String valueOf = String.valueOf(lowerCase);
            zza.zzc(valueOf.concat("_count"), Integer.toString(((Integer) map.get(adFormat)).intValue()));
        }
        zza.zzd();
    }

    public final void zzc(int i, int i2, long j, zzfoc zzfocVar) {
        zzdvh zza = this.zza.zza();
        zza.zzc("action", "cache_resize");
        zza.zzc("cs_ts", Long.toString(j));
        zza.zzc("orig_ma", Integer.toString(i));
        zza.zzc("max_ads", Integer.toString(i2));
        zza.zzc(FirebaseAnalytics.Param.AD_FORMAT, zzfocVar.zzb());
        zza.zzc("ad_unit_id", zzfocVar.zza());
        zza.zzc("pid", zzfocVar.zzc());
        zza.zzc("pv", "1");
        zza.zzd();
    }

    public final void zzd(int i, int i2, long j, Long l, String str, zzfoc zzfocVar, String str2) {
        zzdvh zza = this.zza.zza();
        zza.zzc("plaac_ts", Long.toString(j));
        zza.zzc("max_ads", Integer.toString(i));
        zza.zzc("cache_size", Integer.toString(i2));
        zza.zzc("action", "is_ad_available");
        if (zzfocVar != null) {
            zza.zzc("ad_unit_id", zzfocVar.zza());
            zza.zzc("pid", zzfocVar.zzc());
            zza.zzc(FirebaseAnalytics.Param.AD_FORMAT, zzfocVar.zzb());
        }
        if (l != null) {
            zza.zzc("plaay_ts", Long.toString(l.longValue()));
        }
        if (str != null) {
            zza.zzc("gqi", str);
        }
        zza.zzc("pv", str2);
        zza.zzd();
    }

    public final void zze(long j, String str) {
        zzr("poll_ad", "ppacwe_ts", j, -1, -1, null, null, ExifInterface.GPS_MEASUREMENT_2D);
    }

    public final void zzf(long j, zzfoc zzfocVar, int i, int i2, String str) {
        zzr("poll_ad", "ppac_ts", j, i, i2, null, zzfocVar, str);
    }

    public final void zzg(long j, int i, int i2, String str, zzfoc zzfocVar, String str2) {
        zzr("poll_ad", "psvroc_ts", j, i, i2, str, zzfocVar, str2);
    }

    public final void zzh(long j, int i, int i2, String str, zzfoc zzfocVar, String str2) {
        zzdvh zza = this.zza.zza();
        zza.zzc("ppla_ts", Long.toString(j));
        zza.zzc(FirebaseAnalytics.Param.AD_FORMAT, zzfocVar.zzb());
        zza.zzc("ad_unit_id", zzfocVar.zza());
        zza.zzc("pid", zzfocVar.zzc());
        zza.zzc("max_ads", Integer.toString(i));
        zza.zzc("cache_size", Integer.toString(i2));
        zza.zzc("action", "poll_ad");
        if (str != null) {
            zza.zzc("gqi", str);
        }
        zza.zzc("pv", str2);
        zza.zzd();
    }

    public final void zzi(long j, String str, zzfoc zzfocVar, int i, int i2, String str2) {
        zzr("paa", "pano_ts", j, i, i2, str, zzfocVar, str2);
    }

    public final void zzj(long j, zzfoc zzfocVar, int i, String str) {
        zzr("pae", "paeo_ts", j, i, 0, null, zzfocVar, str);
    }

    public final void zzk(long j, zzfoc zzfocVar, com.google.android.gms.ads.internal.client.zze zzeVar, int i, int i2, String str) {
        zzdvh zza = this.zza.zza();
        zza.zzc("action", "pftla");
        zza.zzc("pftlat_ts", Long.toString(j));
        zza.zzc("pftlaec", Integer.toString(zzeVar.zza));
        zza.zzc(FirebaseAnalytics.Param.AD_FORMAT, zzfocVar.zzb());
        zza.zzc("max_ads", Integer.toString(i));
        zza.zzc("cache_size", Integer.toString(i2));
        zza.zzc("ad_unit_id", zzfocVar.zza());
        zza.zzc("pid", zzfocVar.zzc());
        zza.zzc("pv", str);
        zza.zzd();
    }

    public final void zzl(long j, AdFormat adFormat, int i) {
        zzq("pda", j, null, null, adFormat, -1, -1, i, ExifInterface.GPS_MEASUREMENT_2D);
    }

    public final void zzm(long j, String str, String str2, AdFormat adFormat, int i, int i2) {
        zzq("pd", j, str, str2, adFormat, i, i2, 1, ExifInterface.GPS_MEASUREMENT_2D);
    }

    public final void zzn(AdFormat adFormat, long j, int i) {
        zzq("pgcs", j, null, null, adFormat, -1, -1, i, ExifInterface.GPS_MEASUREMENT_2D);
    }

    public final void zzo(long j, String str, String str2, AdFormat adFormat, int i, int i2) {
        zzq("pgc", j, str, str2, adFormat, i, i2, 1, ExifInterface.GPS_MEASUREMENT_2D);
    }

    public final void zzp(int i, long j, String str, String str2, AdFormat adFormat, int i2) {
        zzq("pnav", j, str, str2, adFormat, i2, i, 1, ExifInterface.GPS_MEASUREMENT_2D);
    }
}
