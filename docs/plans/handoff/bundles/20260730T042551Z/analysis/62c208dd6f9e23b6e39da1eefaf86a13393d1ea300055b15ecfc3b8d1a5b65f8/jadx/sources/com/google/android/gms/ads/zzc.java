package com.google.android.gms.ads;

/* loaded from: classes.dex */
public final class zzc {
    public static int zza(AdSize adSize) {
        return adSize.f9500for;
    }

    public static int zzb(AdSize adSize) {
        return adSize.f9504new;
    }

    public static AdSize zzc(int i, int i2, String str) {
        return new AdSize(i, i2, str);
    }

    public static AdSize zzd(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.f9503if = true;
        adSize.f9500for = i2;
        return adSize;
    }

    public static AdSize zze(int i, int i2) {
        AdSize adSize = new AdSize(i, i2);
        adSize.f9501for = true;
        adSize.f9504new = i2;
        return adSize;
    }

    public static boolean zzf(AdSize adSize) {
        return adSize.f9499do;
    }

    public static boolean zzg(AdSize adSize) {
        return adSize.f9503if;
    }

    public static boolean zzh(AdSize adSize) {
        return adSize.f9501for;
    }
}
