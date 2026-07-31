package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhsm implements zzhik {
    public static zzhik zzb(zzhii zzhiiVar) throws GeneralSecurityException {
        zzhik zzb = zzhio.zzb(zzhiiVar);
        try {
            return new zzhsl(zzb, zzhip.zzb(zzhiiVar), null);
        } catch (GeneralSecurityException unused) {
            return zzb;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhik
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        throw null;
    }
}
