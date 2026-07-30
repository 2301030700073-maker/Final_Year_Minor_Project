package com.google.android.gms.internal.wearable;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public enum zzev {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED),
    BYTE_STRING(zzaw.zzb),
    ENUM(null),
    MESSAGE(null);

    private final Object zzk;

    zzev(Object obj) {
        this.zzk = obj;
    }
}
