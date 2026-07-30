package com.google.android.gms.internal.ads;

import android.os.Build;
import j$.util.Objects;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzgjd {
    private static final ThreadLocal zza = new zzgjc();

    public static AlgorithmParameterSpec zza(byte[] bArr, int i, int i2) {
        Integer valueOf = !Objects.equals(System.getProperty("java.vendor"), "The Android Project") ? null : Integer.valueOf(Build.VERSION.SDK_INT);
        if (valueOf != null) {
            valueOf.intValue();
        }
        return new GCMParameterSpec(128, bArr, i, 12);
    }

    public static Cipher zzb() {
        return (Cipher) zza.get();
    }

    public static SecretKey zzc(byte[] bArr) {
        zzgvm.zza(bArr.length);
        return new SecretKeySpec(bArr, "AES");
    }
}
