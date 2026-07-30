package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzs;
import com.google.android.gms.ads.internal.util.client.zzo;
import defpackage.V1;

/* loaded from: classes.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;

    /* renamed from: do, reason: not valid java name */
    public final int f9497do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9498do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9499do;

    /* renamed from: for, reason: not valid java name */
    public int f9500for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f9501for;

    /* renamed from: if, reason: not valid java name */
    public final int f9502if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9503if;

    /* renamed from: new, reason: not valid java name */
    public int f9504new;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");

    @Deprecated
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    public static final AdSize INVALID = new AdSize(0, 0, "invalid");
    public static final AdSize zza = new AdSize(50, 50, "50x50_mb");
    public static final AdSize SEARCH = new AdSize(-3, 0, "search_v2");

    public AdSize(int i, int i2) {
        this(i, i2, (i == -1 ? "FULL" : String.valueOf(i)) + "x" + (i2 == -2 ? "AUTO" : String.valueOf(i2)) + "_as");
    }

    /* renamed from: do, reason: not valid java name */
    public static AdSize m5538do(int i, int i2) {
        if (i2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.f9504new = i2;
        adSize.f9501for = true;
        return adSize;
    }

    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzd = com.google.android.gms.ads.internal.util.client.zzf.zzd(context, i, 50, 0);
        zzd.f9499do = true;
        return zzd;
    }

    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i) {
        int zza2 = com.google.android.gms.ads.internal.util.client.zzf.zza(context, 0);
        if (zza2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.f9500for = zza2;
        adSize.f9503if = true;
        return adSize;
    }

    @Deprecated
    public static AdSize getCurrentOrientationInterscrollerAdSize(Context context, int i) {
        return m5538do(i, com.google.android.gms.ads.internal.util.client.zzf.zza(context, 0));
    }

    public static AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
        AdSize adSize = new AdSize(i, 0);
        adSize.f9500for = i2;
        adSize.f9503if = true;
        if (i2 < 32) {
            zzo.zzj("The maximum height set for the inline adaptive ad size was " + i2 + " dp, which is below the minimum recommended value of 32 dp.");
        }
        return adSize;
    }

    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzd = com.google.android.gms.ads.internal.util.client.zzf.zzd(context, i, 50, 2);
        zzd.f9499do = true;
        return zzd;
    }

    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int i) {
        int zza2 = com.google.android.gms.ads.internal.util.client.zzf.zza(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (zza2 == -1) {
            return INVALID;
        }
        adSize.f9500for = zza2;
        adSize.f9503if = true;
        return adSize;
    }

    @Deprecated
    public static AdSize getLandscapeInterscrollerAdSize(Context context, int i) {
        return m5538do(i, com.google.android.gms.ads.internal.util.client.zzf.zza(context, 2));
    }

    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzd = com.google.android.gms.ads.internal.util.client.zzf.zzd(context, i, 50, 1);
        zzd.f9499do = true;
        return zzd;
    }

    public static AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
        int zza2 = com.google.android.gms.ads.internal.util.client.zzf.zza(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (zza2 == -1) {
            return INVALID;
        }
        adSize.f9500for = zza2;
        adSize.f9503if = true;
        return adSize;
    }

    @Deprecated
    public static AdSize getPortraitInterscrollerAdSize(Context context, int i) {
        return m5538do(i, com.google.android.gms.ads.internal.util.client.zzf.zza(context, 1));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.f9497do == adSize.f9497do && this.f9502if == adSize.f9502if && this.f9498do.equals(adSize.f9498do);
    }

    public int getHeight() {
        return this.f9502if;
    }

    public int getHeightInPixels(Context context) {
        int i = this.f9502if;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzs.zza(context.getResources().getDisplayMetrics());
        }
        zzbc.zzb();
        return com.google.android.gms.ads.internal.util.client.zzf.zzx(context, i);
    }

    public int getWidth() {
        return this.f9497do;
    }

    public int getWidthInPixels(Context context) {
        int i = this.f9497do;
        if (i == -3) {
            return -1;
        }
        if (i != -1) {
            zzbc.zzb();
            return com.google.android.gms.ads.internal.util.client.zzf.zzx(context, i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Parcelable.Creator<zzs> creator = zzs.CREATOR;
        return displayMetrics.widthPixels;
    }

    public int hashCode() {
        return this.f9498do.hashCode();
    }

    public boolean isAutoHeight() {
        return this.f9502if == -2;
    }

    public boolean isFluid() {
        return this.f9497do == -3 && this.f9502if == -4;
    }

    public boolean isFullWidth() {
        return this.f9497do == -1;
    }

    public String toString() {
        return this.f9498do;
    }

    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException(V1.m2494case("Invalid width for AdSize: ", i));
        }
        if (i2 < 0 && i2 != -2 && i2 != -4) {
            throw new IllegalArgumentException(V1.m2494case("Invalid height for AdSize: ", i2));
        }
        this.f9497do = i;
        this.f9502if = i2;
        this.f9498do = str;
    }
}
