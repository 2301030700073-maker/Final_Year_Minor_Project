package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import defpackage.V1;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgr extends zzgp {
    public final int zzc;

    public zzgr(int i, String str, IOException iOException, Map map, zzgd zzgdVar, byte[] bArr) {
        super(V1.m2494case("Response code: ", i), iOException, zzgdVar, AdError.INTERNAL_ERROR_2004, 1);
        this.zzc = i;
    }
}
