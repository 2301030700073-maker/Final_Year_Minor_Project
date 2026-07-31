package com.google.android.gms.internal.ads;

import com.braze.models.Banner;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public enum zzfox {
    HTML(Banner.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");

    private final String zzd;

    zzfox(String str) {
        this.zzd = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzd;
    }
}
