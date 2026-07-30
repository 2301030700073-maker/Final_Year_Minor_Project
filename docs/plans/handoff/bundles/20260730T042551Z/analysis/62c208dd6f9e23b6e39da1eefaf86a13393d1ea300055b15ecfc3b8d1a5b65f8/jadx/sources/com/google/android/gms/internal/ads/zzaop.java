package com.google.android.gms.internal.ads;

import java.security.cert.X509Certificate;

/* loaded from: classes.dex */
final class zzaop extends zzaoq {
    private final byte[] zza;

    public zzaop(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq, java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.zza;
    }
}
