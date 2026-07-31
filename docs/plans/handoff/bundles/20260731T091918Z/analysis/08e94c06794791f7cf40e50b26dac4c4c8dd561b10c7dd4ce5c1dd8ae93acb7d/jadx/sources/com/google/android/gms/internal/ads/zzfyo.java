package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfyo {
    public static String zza(byte[] bArr, boolean z) {
        return zzc(true).zzj(bArr, 0, bArr.length);
    }

    public static byte[] zzb(String str, boolean z) throws IllegalArgumentException {
        byte[] zzk = zzc(z).zzk(str);
        if (zzk.length != 0 || str.length() <= 0) {
            return zzk;
        }
        throw new IllegalArgumentException("Unable to decode ".concat(str));
    }

    private static zzgrz zzc(boolean z) {
        return z ? zzgrz.zzm().zzh() : zzgrz.zzl();
    }
}
