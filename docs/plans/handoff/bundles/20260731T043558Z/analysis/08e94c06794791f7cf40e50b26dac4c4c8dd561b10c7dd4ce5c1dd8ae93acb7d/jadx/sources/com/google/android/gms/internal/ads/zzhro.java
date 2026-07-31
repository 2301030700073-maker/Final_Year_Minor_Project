package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhro {
    private final byte[] zza;
    private final byte[] zzb;

    private zzhro(byte[] bArr, byte[] bArr2) {
        this.zza = bArr;
        this.zzb = bArr2;
    }

    public static zzhro zzc() throws GeneralSecurityException {
        byte[] zza = zzhfz.zza(32);
        if (zza.length == 32) {
            return new zzhro(zzhdj.zza(zzhdj.zzb(zza)), zza);
        }
        throw new IllegalArgumentException(String.format("Given secret seed length is not %s", 32));
    }

    public final byte[] zza() {
        return Arrays.copyOf(this.zza, 32);
    }

    public final byte[] zzb() {
        byte[] bArr = this.zzb;
        return Arrays.copyOf(bArr, bArr.length);
    }
}
