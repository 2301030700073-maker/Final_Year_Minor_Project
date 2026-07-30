package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Cif;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzyw extends IOException {
    public zzyw(Throwable th) {
        super(Cif.m6908case("Unexpected ", th.getClass().getSimpleName(), th.getMessage() != null ? ": ".concat(String.valueOf(th.getMessage())) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), th);
    }
}
