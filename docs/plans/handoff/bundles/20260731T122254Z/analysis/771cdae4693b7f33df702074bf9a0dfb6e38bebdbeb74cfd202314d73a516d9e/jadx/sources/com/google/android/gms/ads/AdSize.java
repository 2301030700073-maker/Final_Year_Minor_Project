package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzk;

/* loaded from: classes.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private final int zznM;
    private final int zznN;
    private final String zznO;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdSize(int r3, int r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = -1
            if (r3 != r1) goto Lb
            java.lang.String r1 = "FULL"
            goto Lf
        Lb:
            java.lang.String r1 = java.lang.String.valueOf(r3)
        Lf:
            r0.append(r1)
            java.lang.String r1 = "x"
            r0.append(r1)
            r1 = -2
            if (r4 != r1) goto L1d
            java.lang.String r1 = "AUTO"
            goto L21
        L1d:
            java.lang.String r1 = java.lang.String.valueOf(r4)
        L21:
            r0.append(r1)
            java.lang.String r1 = "_as"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r2.<init>(r3, r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.AdSize.<init>(int, int):void");
    }

    AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i);
        }
        if (i2 >= 0 || i2 == -2) {
            this.zznM = i;
            this.zznN = i2;
            this.zznO = str;
        } else {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i2);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.zznM == adSize.zznM && this.zznN == adSize.zznN && this.zznO.equals(adSize.zznO);
    }

    public int getHeight() {
        return this.zznN;
    }

    public int getHeightInPixels(Context context) {
        return this.zznN == -2 ? AdSizeParcel.zzb(context.getResources().getDisplayMetrics()) : zzk.zzcA().zzb(context, this.zznN);
    }

    public int getWidth() {
        return this.zznM;
    }

    public int getWidthInPixels(Context context) {
        return this.zznM == -1 ? AdSizeParcel.zza(context.getResources().getDisplayMetrics()) : zzk.zzcA().zzb(context, this.zznM);
    }

    public int hashCode() {
        return this.zznO.hashCode();
    }

    public boolean isAutoHeight() {
        return this.zznN == -2;
    }

    public boolean isFullWidth() {
        return this.zznM == -1;
    }

    public String toString() {
        return this.zznO;
    }
}
