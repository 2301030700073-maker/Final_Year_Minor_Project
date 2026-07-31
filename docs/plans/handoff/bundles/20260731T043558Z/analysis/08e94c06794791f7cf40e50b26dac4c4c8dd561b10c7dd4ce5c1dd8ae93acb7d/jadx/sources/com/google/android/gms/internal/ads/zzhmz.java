package com.google.android.gms.internal.ads;

import org.bouncycastle.asn1.ASN1Encoding;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhmz {
    public static final zzhmz zza = new zzhmz("IEEE_P1363");
    public static final zzhmz zzb = new zzhmz(ASN1Encoding.DER);
    private final String zzc;

    private zzhmz(String str) {
        this.zzc = str;
    }

    public final String toString() {
        return this.zzc;
    }
}
