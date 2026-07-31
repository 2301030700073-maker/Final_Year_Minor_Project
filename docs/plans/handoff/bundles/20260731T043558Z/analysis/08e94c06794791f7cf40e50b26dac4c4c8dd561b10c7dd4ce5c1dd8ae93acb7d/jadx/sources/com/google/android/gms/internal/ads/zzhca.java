package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhca extends zzhcb {
    public zzhca(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzhcb
    final zzhbz zza(byte[] bArr, int i) throws InvalidKeyException {
        return new zzhby(bArr, i);
    }
}
